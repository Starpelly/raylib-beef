using Newtonsoft.Json;
using System;
using System.Linq;
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

        private static string ExecutingPath = Path.Combine(Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location)!, "../../../../");
        private static string OutputDir = Path.Combine(ExecutingPath, "raylib-beef/src/");

        private static Dictionary<string, FileDefinition> jsonFiles = new()
        {
            { "raylib.json", new ("Raylib", "Raylib") },
            { "rlgl.json", new("Rlgl", "Rlgl") },
            { "raymath.json", new("Raymath", "Raymath") }
        };
            
        public struct FileDefinition
        {
            public string FileName;
            public string ClassName;

            public FileDefinition(string fileName, string className = "")
            {
                this.FileName = fileName;
                this.ClassName = className;
            }
        }

        #region Output Defines
        private static string Namespace = "RaylibBeef";
        #endregion

        public static void Main(string[] args)
        {
            Console.WriteLine($"Generating files at {OutputDir}");
            Console.WriteLine($"...");
            
            for (var i = 0; i < jsonFiles.Count; i++)
            {
                ConvertFile(jsonFiles.ElementAt(i).Value, Path.Combine(ExecutingPath, $"raylib-api/{jsonFiles.ElementAt(i).Key}"));
            }

            Console.WriteLine("Successfully Generated Bindings!");
            Console.ReadLine();
        }

        public static void ConvertFile(FileDefinition def, string location)
        {
            var api = JsonConvert.DeserializeObject<Root>(File.ReadAllText(location))!;

            OutputString.Clear();
            OutputString = new();

            UniversalHeader();
            
            AppendLine((string.IsNullOrEmpty(def.ClassName)) ? "static" : $"public static class {def.ClassName}");
            AppendLine("{");
            IncreaseTab();
            
            for (var i = 0; i < api.Defines.Count; i++)
            {
                var define = api.Defines[i];
                if (define.Type == "UNKNOWN" || define.Type == "MACRO" || define.Type == "GUARD") continue;

                if (!string.IsNullOrEmpty(define.Description)) AppendLine($"/// {define.Description}");
                var defineType = define.Type.ConvertTypes();
                AppendLine($"public const {defineType} {define.Name.ConvertName()} = {define.Value.ToString()!.ParseValue(defineType)};");
                AppendLine("");
            }

            var functionsWStructs = new List<Function>();
            var functionsWOStructs = new List<Function>();

            foreach (var func in api.Functions)
            {
                var addWO = true;
                foreach (var param in func.Params)
                {
                    if (api.Structs.Find(c => c.Name == param.Type) != null || api.Aliases.Find(c => c.Name == param.Type) != null)
                    {
                        addWO = false;
                        break;
                    }
                }
                if (addWO)
                    functionsWOStructs.Add(func);
                else
                    functionsWStructs.Add(func);
            }

            // Platform agnostic methods (kinda)
            foreach (var func in functionsWOStructs)
            {
                AppendLine($"/// {func.Description}");
                // AppendLine($"[Import(Raylib.RaylibBin), CallingConvention(.Cdecl), LinkName(\"{func.Name}\")]");
                AppendLine("[CLink]");
                AppendLine($"public static extern {func.ReturnType.ConvertTypes()} {func.Name.ConvertName()}({Parameters2String(func.Params, api)});");
                AppendLine("");
            }

            AppendLine($"#if !BF_PLATFORM_WASM", true);
            AppendLine("");

            foreach (var func in functionsWStructs)
            {
                AppendLine($"/// {func.Description}");
                // AppendLine($"[Import(Raylib.RaylibBin), CallingConvention(.Cdecl), LinkName(\"{func.Name}\")]");
                AppendLine("[CLink]");
                AppendLine($"public static extern {func.ReturnType.ConvertTypes()} {func.Name.ConvertName()}({Parameters2String(func.Params, api)});");
                AppendLine("");
            }

            AppendLine($"#else", true);
            AppendLine("");

            // Emscripten
            foreach (var func in functionsWStructs)
            { 
                AppendLine($"/// {func.Description}");
                // AppendLine($"[Import(Raylib.RaylibBin), CallingConvention(.Cdecl), LinkName(\"{func.Name}\")]");
                AppendLine("[CLink]");
                AppendLine($"public static extern {func.ReturnType.ConvertTypes()} {func.Name.ConvertName()}({Parameters2String(func.Params, api, true)});");
                AppendLine("");
            }
            AppendLine($"#endif", true);

            AppendLine("");
            
            for (int i = 0; i < api.Callbacks.Count; i++)
            {
                var callback = api.Callbacks[i];

                if (!string.IsNullOrEmpty(callback.Description)) AppendLine($"/// {callback.Description}");
                AppendLine($"public function {callback.ReturnType.ConvertTypes()} {callback.Name.ConvertName()}({ callback.Params.Parameters2String(api)});");
                AppendLine("");
            }
            
            DecreaseTab();
            AppendLine("}");
            
            WriteToFile(def.FileName);
            
            for (var i = 0; i < api.Structs.Count; i++) 
            {
                StructBf(api, api.Structs[i]);
            }
            for (var i = 0; i < api.Enums.Count; i++)
            {
                Enum(api, api.Enums[i]);
            }
        }

        public static void Enum(Root api, Enum @enum)
        {
            OutputString.Clear();
            OutputString = new();

            UniversalHeader();

            AppendLine($"[AllowDuplicates]");
            AppendLine($"/// {@enum.Description}");
            AppendLine($"public enum {@enum.Name} : c_int");
            AppendLine("{");
            IncreaseTab();

            for (int i = 0; i < @enum.Values.Count; i++)
            {
                AppendLine($"/// {@enum.Values[i].Description}");
                AppendLine($"{@enum.Values[i].Name} = {@enum.Values[i].Value_},");
            }

            DecreaseTab();
            AppendLine("}");

            WriteToFile($@"{@enum.Name}");
        }

        public static void StructBf(Root api, Struct structu)
        {
            OutputString.Clear();
            OutputString = new();

            UniversalHeader();

            var alias = api.Aliases.FindAll(c => c.Type == structu.Name);
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

            var createdFields = new List<Field>();

            for (var i = 0; i < structu.Fields.Count; i++)
            {
                var field = structu.Fields[i];

                // field.Type == "rAudioProcessor *" || field.Type == "rAudioBuffer *"
                if (field.Type[^1] == '*') // Is Pointer
                {
                    if (api.Structs.Find(c => c.Name == field.Type.Remove(field.Type.Length - 2, 2)) == null)
                        field.Type = "void*";
                }
                else if (field.Type.StartsWith("#if") || field.Type == "#endif")
                {
                    field.Type = "void*";
                }

                // Avoid duplicates
                if (createdFields.Find(c => c.Name == field.Name) == null)
                    createdFields.Add(field);
                else
                    continue;
                
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

            for (var i = 0; i < createdFields.Count; i++)
            {
                var field = createdFields[i];
                if (field.Type == "rAudioProcessor *" || field.Type == "rAudioBuffer *" || field.Type.StartsWith("#if") || field.Type == "#endif") continue;

                AppendLine($"this.{field.Name.ConvertName()} = {field.Name.ConvertName()};");
            }

            DecreaseTab();
            AppendLine("}");

            DecreaseTab();
            AppendLine("}");
            WriteToFile($"{structu.Name}");
        }

        public static string Parameters2String(this List<Param> @params, RaylibBeefGenerator.Root api, bool emscripten = false)
        {
            var paramStr = string.Empty;

            for (int p = 0; p < @params.Count; p++)
            {
                var param = @params[p];
                var t = ConvertTypes(param.Type);
                if (t == "...") { paramStr = paramStr[..^2]; continue; }; // Dunno what this is about, or how to convert it.

                if (emscripten)
                {
                    // Emscripten REALLY likes passing structs by reference
                    if (api.Structs.Find(c => c.Name == param.Type) != null || api.Aliases.Find(c => c.Name == param.Type) != null)
                        paramStr += "in ";
                }

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

        public static string ParseValue(this string inputValue, string type)
        {
            if (inputValue.StartsWith("CLITERAL"))
            {
                inputValue = inputValue.Remove(0, 9);
                inputValue = inputValue.Remove(type.Length, 1);
                inputValue = inputValue.Remove(type.Length + 1, 1);
                inputValue = inputValue.Remove(inputValue.Length - 2, 1);
                inputValue = inputValue.Replace('{', '(');
                inputValue = inputValue.Replace('}', ')');
            }
            else if (type == "String" || type == "char8*")
            {
                inputValue = $"\"{inputValue}\"";
            }
            else if (type == "float")
            {
                if (!inputValue.EndsWith(")"))
                    inputValue = inputValue + "f";
            }

            return inputValue;
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
            input = ReplaceWholeWord(input, "int", "int32");
            input = ReplaceWholeWord(input, "INT", "int32");
            input = ReplaceWholeWord(input, "STRING", "char8*");
            input = ReplaceWholeWord(input, "FLOAT", "float");
            input = ReplaceWholeWord(input, "FLOAT_MATH", "float");
            input = ReplaceWholeWord(input, "DOUBLE", "double");
            input = ReplaceWholeWord(input, "COLOR", "Color");

            if (input.StartsWith("const"))
                input = input.Remove(0, 6);
            if (input.StartsWith("unsigned") && !input.EndsWith("int"))
                input = input.Remove(0, 9);

            switch (input)
            {
                case "unsigned int":
                    return "uint32";
                default:
                    return input;
            }
        }

        public static string ConvertName(this string input)
        {
            input = ReplaceWholeWord(input, "append", "@append");
            input = ReplaceWholeWord(input, "box", "@box");
            input = ReplaceWholeWord(input, "params", "@params");
            input = ReplaceWholeWord(input, "readonly", "@readonly");
            input = ReplaceWholeWord(input, "checked", "@checked");

            return input;
        }

        public static string ReplaceWholeWord(this string original, string wordToFind, string replacement, RegexOptions regexOptions = RegexOptions.None)
        {
            string pattern = @$"\b{wordToFind}\b";
            return Regex.Replace(original, pattern, replacement);
        }

        public static void AppendLine(string content, bool ignoreTabs = false)
        {
            var output = string.Empty;
            if (!ignoreTabs)
            {
                for (int i = 0; i < TabIndex; i++)
                {
                    output += "\t";
                }
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