using Newtonsoft.Json;

namespace RaylibBeefGenerator
{
    // Root myDeserializedClass = JsonConvert.DeserializeObject<Root>(myJsonResponse);
    public class Alias
    {
        [JsonProperty("type")]
        public string Type { get; set; } = string.Empty;

        [JsonProperty("name")]
        public string Name { get; set; } = string.Empty;

        [JsonProperty("description")]
        public string Description { get; set; } = string.Empty;
    }

    public class Callback
    {
        [JsonProperty("name")]
        public string Name { get; set; } = string.Empty;

        [JsonProperty("description")]
        public string Description { get; set; } = string.Empty;

        [JsonProperty("returnType")]
        public string ReturnType { get; set; } = string.Empty;

        [JsonProperty("params")]
        public List<Param> Params { get; set; } = new();
    }

    public class Define
    {
        [JsonProperty("name")]
        public string Name { get; set; } = string.Empty;

        [JsonProperty("type")]
        public string Type { get; set; } = string.Empty;

        [JsonProperty("value")]
        public object Value { get; set; } = string.Empty;

        [JsonProperty("description")]
        public string Description { get; set; } = string.Empty;
    }

    public class Enum
    {
        [JsonProperty("name")]
        public string Name { get; set; } = string.Empty;

        [JsonProperty("description")]
        public string Description { get; set; } = string.Empty;

        [JsonProperty("values")]
        public List<Value> Values { get; set; } = new();
    }

    public class Field
    {
        [JsonProperty("type")]
        public string Type { get; set; } = string.Empty;

        [JsonProperty("name")]
        public string Name { get; set; } = string.Empty;

        [JsonProperty("description")]
        public string Description { get; set; } = string.Empty;
    }

    public class Function
    {
        [JsonProperty("name")]
        public string Name { get; set; } = string.Empty;

        [JsonProperty("description")]
        public string Description { get; set; } = string.Empty;

        [JsonProperty("returnType")]
        public string ReturnType { get; set; } = string.Empty;

        [JsonProperty("params")]
        public List<Param> Params { get; set; } = new();
    }

    public class Param
    {
        [JsonProperty("type")]
        public string Type { get; set; } = string.Empty;

        [JsonProperty("name")]
        public string Name { get; set; } = string.Empty;
    }

    public class Root
    {
        [JsonProperty("defines")]
        public List<Define> Defines { get; set; } = new();

        [JsonProperty("structs")]
        public List<Struct> Structs { get; set; } = new();

        [JsonProperty("aliases")]
        public List<Alias> Aliases { get; set; } = new();

        [JsonProperty("enums")]
        public List<Enum> Enums { get; set; } = new();

        [JsonProperty("callbacks")]
        public List<Callback> Callbacks { get; set; } = new();

        [JsonProperty("functions")]
        public List<Function> Functions { get; set; } = new();
    }

    public class Struct
    {
        [JsonProperty("name")]
        public string Name { get; set; } = string.Empty;

        [JsonProperty("description")]
        public string Description { get; set; } = string.Empty;

        [JsonProperty("fields")]
        public List<Field> Fields { get; set; } = new();
    }

    public class Value
    {
        [JsonProperty("name")]
        public string Name { get; set; } = string.Empty;

        [JsonProperty("value")]
        public int? Value_ { get; set; } = 0;

        [JsonProperty("description")]
        public string Description { get; set; } = string.Empty;
    }
}
