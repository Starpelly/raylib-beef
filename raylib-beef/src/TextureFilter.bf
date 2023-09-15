using System;
using System.Interop;

namespace RaylibBeef;

/// Texture parameters: filter mode
public enum TextureFilter : c_int
{
	/// No filter, just pixel approximation
	TEXTURE_FILTER_POINT = 0,
	/// Linear filtering
	TEXTURE_FILTER_BILINEAR = 1,
	/// Trilinear filtering (linear with mipmaps)
	TEXTURE_FILTER_TRILINEAR = 2,
	/// Anisotropic filtering 4x
	TEXTURE_FILTER_ANISOTROPIC_4X = 3,
	/// Anisotropic filtering 8x
	TEXTURE_FILTER_ANISOTROPIC_8X = 4,
	/// Anisotropic filtering 16x
	TEXTURE_FILTER_ANISOTROPIC_16X = 5,
}
