using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Texture parameters: filter mode
public enum rlTextureFilter : c_int
{
	/// No filter, just pixel approximation
	case RL_TEXTURE_FILTER_POINT = 0;
	/// Linear filtering
	case RL_TEXTURE_FILTER_BILINEAR = 1;
	/// Trilinear filtering (linear with mipmaps)
	case RL_TEXTURE_FILTER_TRILINEAR = 2;
	/// Anisotropic filtering 4x
	case RL_TEXTURE_FILTER_ANISOTROPIC_4X = 3;
	/// Anisotropic filtering 8x
	case RL_TEXTURE_FILTER_ANISOTROPIC_8X = 4;
	/// Anisotropic filtering 16x
	case RL_TEXTURE_FILTER_ANISOTROPIC_16X = 5;
	
	public static operator int32 (rlTextureFilter self) => (int32)self;
}
