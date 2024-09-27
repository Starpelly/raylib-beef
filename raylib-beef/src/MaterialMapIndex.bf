using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Material map index
public enum MaterialMapIndex : c_int
{
	/// Albedo material (same as: MATERIAL_MAP_DIFFUSE)
	case MATERIAL_MAP_ALBEDO = 0;
	/// Metalness material (same as: MATERIAL_MAP_SPECULAR)
	case MATERIAL_MAP_METALNESS = 1;
	/// Normal material
	case MATERIAL_MAP_NORMAL = 2;
	/// Roughness material
	case MATERIAL_MAP_ROUGHNESS = 3;
	/// Ambient occlusion material
	case MATERIAL_MAP_OCCLUSION = 4;
	/// Emission material
	case MATERIAL_MAP_EMISSION = 5;
	/// Heightmap material
	case MATERIAL_MAP_HEIGHT = 6;
	/// Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
	case MATERIAL_MAP_CUBEMAP = 7;
	/// Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
	case MATERIAL_MAP_IRRADIANCE = 8;
	/// Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
	case MATERIAL_MAP_PREFILTER = 9;
	/// Brdf material
	case MATERIAL_MAP_BRDF = 10;
	
	public static operator int32 (MaterialMapIndex self) => (int32)self;
}
