using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Color blending modes (pre-defined)
public enum rlBlendMode : c_int
{
	/// Blend textures considering alpha (default)
	case RL_BLEND_ALPHA = 0;
	/// Blend textures adding colors
	case RL_BLEND_ADDITIVE = 1;
	/// Blend textures multiplying colors
	case RL_BLEND_MULTIPLIED = 2;
	/// Blend textures adding colors (alternative)
	case RL_BLEND_ADD_COLORS = 3;
	/// Blend textures subtracting colors (alternative)
	case RL_BLEND_SUBTRACT_COLORS = 4;
	/// Blend premultiplied textures considering alpha
	case RL_BLEND_ALPHA_PREMULTIPLY = 5;
	/// Blend textures using custom src/dst factors (use rlSetBlendFactors())
	case RL_BLEND_CUSTOM = 6;
	/// Blend textures using custom src/dst factors (use rlSetBlendFactorsSeparate())
	case RL_BLEND_CUSTOM_SEPARATE = 7;
	
	public static operator int32 (rlBlendMode self) => (int32)self;
}
