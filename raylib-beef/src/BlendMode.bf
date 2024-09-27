using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Color blending modes (pre-defined)
public enum BlendMode : c_int
{
	/// Blend textures considering alpha (default)
	case BLEND_ALPHA = 0;
	/// Blend textures adding colors
	case BLEND_ADDITIVE = 1;
	/// Blend textures multiplying colors
	case BLEND_MULTIPLIED = 2;
	/// Blend textures adding colors (alternative)
	case BLEND_ADD_COLORS = 3;
	/// Blend textures subtracting colors (alternative)
	case BLEND_SUBTRACT_COLORS = 4;
	/// Blend premultiplied textures considering alpha
	case BLEND_ALPHA_PREMULTIPLY = 5;
	/// Blend textures using custom src/dst factors (use rlSetBlendFactors())
	case BLEND_CUSTOM = 6;
	/// Blend textures using custom rgb/alpha separate src/dst factors (use rlSetBlendFactorsSeparate())
	case BLEND_CUSTOM_SEPARATE = 7;
	
	public static operator int32 (BlendMode self) => (int32)self;
}
