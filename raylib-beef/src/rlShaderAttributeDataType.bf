using System;
using System.Interop;

namespace RaylibBeef;

/// Shader attribute data types
public enum rlShaderAttributeDataType : c_int
{
	/// Shader attribute type: float
	RL_SHADER_ATTRIB_FLOAT = 0,
	/// Shader attribute type: vec2 (2 float)
	RL_SHADER_ATTRIB_VEC2 = 1,
	/// Shader attribute type: vec3 (3 float)
	RL_SHADER_ATTRIB_VEC3 = 2,
	/// Shader attribute type: vec4 (4 float)
	RL_SHADER_ATTRIB_VEC4 = 3,
}
