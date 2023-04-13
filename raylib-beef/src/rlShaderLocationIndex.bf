using System;
using System.Interop;

namespace RaylibBeef;

/// Shader location point type
public enum rlShaderLocationIndex : c_int
{
    /// Shader location: vertex attribute: position
    RL_SHADER_LOC_VERTEX_POSITION = 0,
    /// Shader location: vertex attribute: texcoord01
    RL_SHADER_LOC_VERTEX_TEXCOORD01 = 1,
    /// Shader location: vertex attribute: texcoord02
    RL_SHADER_LOC_VERTEX_TEXCOORD02 = 2,
    /// Shader location: vertex attribute: normal
    RL_SHADER_LOC_VERTEX_NORMAL = 3,
    /// Shader location: vertex attribute: tangent
    RL_SHADER_LOC_VERTEX_TANGENT = 4,
    /// Shader location: vertex attribute: color
    RL_SHADER_LOC_VERTEX_COLOR = 5,
    /// Shader location: matrix uniform: model-view-projection
    RL_SHADER_LOC_MATRIX_MVP = 6,
    /// Shader location: matrix uniform: view (camera transform)
    RL_SHADER_LOC_MATRIX_VIEW = 7,
    /// Shader location: matrix uniform: projection
    RL_SHADER_LOC_MATRIX_PROJECTION = 8,
    /// Shader location: matrix uniform: model (transform)
    RL_SHADER_LOC_MATRIX_MODEL = 9,
    /// Shader location: matrix uniform: normal
    RL_SHADER_LOC_MATRIX_NORMAL = 10,
    /// Shader location: vector uniform: view
    RL_SHADER_LOC_VECTOR_VIEW = 11,
    /// Shader location: vector uniform: diffuse color
    RL_SHADER_LOC_COLOR_DIFFUSE = 12,
    /// Shader location: vector uniform: specular color
    RL_SHADER_LOC_COLOR_SPECULAR = 13,
    /// Shader location: vector uniform: ambient color
    RL_SHADER_LOC_COLOR_AMBIENT = 14,
    /// Shader location: sampler2d texture: albedo (same as: RL_SHADER_LOC_MAP_DIFFUSE)
    RL_SHADER_LOC_MAP_ALBEDO = 15,
    /// Shader location: sampler2d texture: metalness (same as: RL_SHADER_LOC_MAP_SPECULAR)
    RL_SHADER_LOC_MAP_METALNESS = 16,
    /// Shader location: sampler2d texture: normal
    RL_SHADER_LOC_MAP_NORMAL = 17,
    /// Shader location: sampler2d texture: roughness
    RL_SHADER_LOC_MAP_ROUGHNESS = 18,
    /// Shader location: sampler2d texture: occlusion
    RL_SHADER_LOC_MAP_OCCLUSION = 19,
    /// Shader location: sampler2d texture: emission
    RL_SHADER_LOC_MAP_EMISSION = 20,
    /// Shader location: sampler2d texture: height
    RL_SHADER_LOC_MAP_HEIGHT = 21,
    /// Shader location: samplerCube texture: cubemap
    RL_SHADER_LOC_MAP_CUBEMAP = 22,
    /// Shader location: samplerCube texture: irradiance
    RL_SHADER_LOC_MAP_IRRADIANCE = 23,
    /// Shader location: samplerCube texture: prefilter
    RL_SHADER_LOC_MAP_PREFILTER = 24,
    /// Shader location: sampler2d texture: brdf
    RL_SHADER_LOC_MAP_BRDF = 25,
}
