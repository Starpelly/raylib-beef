using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Material map index
public enum MaterialMapIndex : c_int
{
	/// Albedo material (same as: MATERIAL_MAP_DIFFUSE)
	MATERIAL_MAP_ALBEDO = 0,
	/// Metalness material (same as: MATERIAL_MAP_SPECULAR)
	MATERIAL_MAP_METALNESS = 1,
	/// Normal material
	MATERIAL_MAP_NORMAL = 2,
	/// Roughness material
	MATERIAL_MAP_ROUGHNESS = 3,
	/// Ambient occlusion material
	MATERIAL_MAP_OCCLUSION = 4,
	/// Emission material
	MATERIAL_MAP_EMISSION = 5,
	/// Heightmap material
	MATERIAL_MAP_HEIGHT = 6,
	/// Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
	MATERIAL_MAP_CUBEMAP = 7,
	/// Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
	MATERIAL_MAP_IRRADIANCE = 8,
	/// Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
	MATERIAL_MAP_PREFILTER = 9,
	/// Brdf material
	MATERIAL_MAP_BRDF = 10,
}
