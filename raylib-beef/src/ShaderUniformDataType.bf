using System;
using System.Interop;

namespace RaylibBeef;

/// Shader uniform data type
public enum ShaderUniformDataType : c_int
{
    /// Shader uniform type: float
    SHADER_UNIFORM_FLOAT = 0,
    /// Shader uniform type: vec2 (2 float)
    SHADER_UNIFORM_VEC2 = 1,
    /// Shader uniform type: vec3 (3 float)
    SHADER_UNIFORM_VEC3 = 2,
    /// Shader uniform type: vec4 (4 float)
    SHADER_UNIFORM_VEC4 = 3,
    /// Shader uniform type: int
    SHADER_UNIFORM_INT = 4,
    /// Shader uniform type: ivec2 (2 int)
    SHADER_UNIFORM_IVEC2 = 5,
    /// Shader uniform type: ivec3 (3 int)
    SHADER_UNIFORM_IVEC3 = 6,
    /// Shader uniform type: ivec4 (4 int)
    SHADER_UNIFORM_IVEC4 = 7,
    /// Shader uniform type: sampler2d
    SHADER_UNIFORM_SAMPLER2D = 8,
}
