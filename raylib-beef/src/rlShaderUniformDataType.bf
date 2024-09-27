using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Shader uniform data type
public enum rlShaderUniformDataType : c_int
{
	/// Shader uniform type: float
	case RL_SHADER_UNIFORM_FLOAT = 0;
	/// Shader uniform type: vec2 (2 float)
	case RL_SHADER_UNIFORM_VEC2 = 1;
	/// Shader uniform type: vec3 (3 float)
	case RL_SHADER_UNIFORM_VEC3 = 2;
	/// Shader uniform type: vec4 (4 float)
	case RL_SHADER_UNIFORM_VEC4 = 3;
	/// Shader uniform type: int
	case RL_SHADER_UNIFORM_INT = 4;
	/// Shader uniform type: ivec2 (2 int)
	case RL_SHADER_UNIFORM_IVEC2 = 5;
	/// Shader uniform type: ivec3 (3 int)
	case RL_SHADER_UNIFORM_IVEC3 = 6;
	/// Shader uniform type: ivec4 (4 int)
	case RL_SHADER_UNIFORM_IVEC4 = 7;
	/// Shader uniform type: sampler2d
	case RL_SHADER_UNIFORM_SAMPLER2D = 8;
	
	public static operator int32 (rlShaderUniformDataType self) => (int32)self;
}
