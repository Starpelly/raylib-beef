using Newtonsoft.Json;
using System;
using System.Text;
using System.Text.RegularExpressions;

namespace RaylibBeefGenerator
{
    public static class Program
    {
        // Number of tabs we are in.
        private static int TabIndex = 0;

        // Current Output Beef Code
        private static StringBuilder OutputString = new StringBuilder();

        private static string OutputDir = @"C:\Dev\raylib-beef\raylib-beef\src\test\";

        private static Root API;

        #region Output Defines
        private static string ImportLib = "raylib.dll";
        private static string Namespace = "Raylib";
        #endregion

        // TODO:
        // Defines
        // Enums
        // Other things like RLGL and stuff.
        // Output generated code to actual directory.
        // Organize Beef project.

        public static void Main(string[] args)
        {
            string raylibjson = @"C:\Dev\raylib-beef\raylib-api\raylib.json";

            API = JsonConvert.DeserializeObject<Root>(File.ReadAllText(raylibjson));

            Console.WriteLine($"Generating files at {OutputDir}");
            Console.WriteLine($"...");

            RaylibBf();

            for (int i = 0; i < API.Structs.Count; i++) 
            {
                StructBf(API.Structs[i]);
            }

            OutputString.Clear();
            OutputString = new();

            UniversalHeader();

            AppendLine($"static");
            AppendLine("{");
            IncreaseTab();
            for (int i = 0; i < API.Callbacks.Count; i++)
            {
                var callback = API.Callbacks[i];

                if (!string.IsNullOrEmpty(callback.Description)) AppendLine($"/// {callback.Description}");
                AppendLine($"public function {callback.ReturnType.ConvertTypes()} {callback.Name.ConvertName()}({callback.Params.Parameters2String()});");
                AppendLine("");
            }
            DecreaseTab();
            AppendLine("}");

            WriteToFile("Callbacks");

            Console.WriteLine("Successfully Generated Bindings!");
            Console.ReadLine();
        }

        public static void StructBf(Struct structu)
        {
            OutputString.Clear();
            OutputString = new();

            UniversalHeader();

            var alias = API.Aliases.FindAll(c => c.Type == structu.Name);
            if (alias != null)
            {
                for (int i = 0; i < alias.Count; i++)
                {
                    AppendLine($"typealias {alias[i].Name} = {alias[i].Type};");
                }
                if (alias.Count > 0) AppendLine("");
            }

            AppendLine($"[CRepr]");
            AppendLine($"public struct {structu.Name}");
            AppendLine("{");
            IncreaseTab();

            var constructorLine = "public this(";

            for (int i = 0; i < structu.Fields.Count; i++)
            {
                var field = structu.Fields[i];

                // This is like the only thing that is hardcoded, and that saddens me.
                if (field.Type == "rAudioProcessor *" || field.Type == "rAudioBuffer *") continue;

                AppendLine($"/// {field.Description}");
                AppendLine($"public {field.Type.ConvertTypes()} {field.Name.ConvertName()};");
                AppendLine("");

                constructorLine += $"{field.Type.ConvertTypes()} {field.Name.ConvertName()}";
                if (i < structu.Fields.Count - 1) constructorLine += ", ";
            }

            constructorLine += ")";
            AppendLine(constructorLine);
            AppendLine("{");
            IncreaseTab();

            for (int i = 0; i < structu.Fields.Count; i++)
            {
                var field = structu.Fields[i];
                if (field.Type == "rAudioProcessor *" || field.Type == "rAudioBuffer *") continue;

                AppendLine($"this.{field.Name.ConvertName()} = {field.Name.ConvertName()};");
            }

            DecreaseTab();
            AppendLine("}");

            DecreaseTab();
            AppendLine("}");
            WriteToFile($"{structu.Name}");
        }

        public static void RaylibBf()
        {
            OutputString.Clear();
            OutputString = new();

            UniversalHeader();

            AppendLine("static");
            AppendLine("{");

            IncreaseTab();
            
            AppendLine($"/// Used internally for bindings.");
            AppendLine($"public const String RAYLIB_LIB = \"{ImportLib}\";");
            AppendLine("");

            // Skip first one, no value.
            for (int i = 1; i < API.Defines.Count; i++)
            {
                var define = API.Defines[i];
                // AppendLine($"public static {define.Type.ConvertTypes()} {define.Name.ConvertName()} = ")
            }

            for (int i = 0; i < API.Functions.Count; i++)
            {
                var func = API.Functions[i];

                AppendLine($"/// {func.Description}");
                AppendLine($"[Import(RAYLIB_LIB), CallingConvention(.Cdecl), LinkName(\"{func.Name}\")]");
                AppendLine($"public static extern {func.ReturnType.ConvertTypes()} {func.Name.ConvertName()}({Parameters2String(func.Params)});");
                AppendLine("");
            }
            DecreaseTab();
            AppendLine("}");

            WriteToFile("Raylib");
        }

        public static string Parameters2String(this List<Param> @params)
        {
            var paramStr = string.Empty;

            for (int p = 0; p < @params.Count; p++)
            {
                var param = @params[p];
                var t = ConvertTypes(param.Type);
                if (t == "...") { paramStr = paramStr[..^2]; continue; }; // Dunno what this is about, or how to convert it.

                paramStr += $"{t} {param.Name.ConvertName()}";
                if (p < @params.Count - 1)
                    paramStr += ", ";
            }

            return paramStr;
        }

        public static void UniversalHeader()
        {
            AppendLine("using System;");
            AppendLine("using System.Interop;");
            AppendLine("");
            AppendLine($"namespace {Namespace};");
            AppendLine("");
        }

        public static void WriteToFile(string name)
        {
            File.WriteAllText(OutputDir + name + ".bf", OutputString.ToString());
            Console.WriteLine($"Generated {name}.bf");
        }

        /// <summary>
        /// Converts the API types to Beef types.
        /// </summary>
        public static string ConvertTypes(this string input)
        {
            if (input == "unsigned char") return "uint8"; // idunno

            input = ReplaceWholeWord(input, "char", "char8");
            input = ReplaceWholeWord(input, "long", "int32");
            input = ReplaceWholeWord(input, "va_list", "void*");
            input = ReplaceWholeWord(input, "short", "uint16");

            if (input.StartsWith("const"))
                input = input.Remove(0, 6);
            if (input.StartsWith("unsigned"))
                input = input.Remove(0, 9);

            switch (input)
            {
                case "unsigned int":
                    return "c_uint";
                default:
                    return input;
            }
        }

        public static string ConvertName(this string input)
        {
            input = ReplaceWholeWord(input, "append", "@append");
            input = ReplaceWholeWord(input, "box", "@box");
            input = ReplaceWholeWord(input, "params", "@params");

            return input;
        }

        public static string ReplaceWholeWord(this string original, string wordToFind, string replacement, RegexOptions regexOptions = RegexOptions.None)
        {
            string pattern = @$"\b{wordToFind}\b";
            return Regex.Replace(original, pattern, replacement);
        }

        public static void AppendLine(string content)
        {
            var output = string.Empty;
            for (int i = 0; i < TabIndex; i++)
            {
                output += "    ";
            }
            output += content;
            OutputString.AppendLine(output);
        }

        public static void IncreaseTab()
        {
            TabIndex++;
        }

        public static void DecreaseTab()
        {
            TabIndex--;
        }
    }
}