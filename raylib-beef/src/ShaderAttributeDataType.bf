using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Shader attribute data types
public enum ShaderAttributeDataType : c_int
{
	/// Shader attribute type: float
	case SHADER_ATTRIB_FLOAT = 0;
	/// Shader attribute type: vec2 (2 float)
	case SHADER_ATTRIB_VEC2 = 1;
	/// Shader attribute type: vec3 (3 float)
	case SHADER_ATTRIB_VEC3 = 2;
	/// Shader attribute type: vec4 (4 float)
	case SHADER_ATTRIB_VEC4 = 3;
	
	public static operator int32 (ShaderAttributeDataType self) => (int32)self;
}
