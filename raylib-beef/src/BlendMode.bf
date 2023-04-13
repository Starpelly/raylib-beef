using System;
using System.Interop;

namespace RaylibBeef;

/// Color blending modes (pre-defined)
public enum BlendMode : c_int
{
    /// Blend textures considering alpha (default)
    BLEND_ALPHA = 0,
    /// Blend textures adding colors
    BLEND_ADDITIVE = 1,
    /// Blend textures multiplying colors
    BLEND_MULTIPLIED = 2,
    /// Blend textures adding colors (alternative)
    BLEND_ADD_COLORS = 3,
    /// Blend textures subtracting colors (alternative)
    BLEND_SUBTRACT_COLORS = 4,
    /// Blend premultiplied textures considering alpha
    BLEND_ALPHA_PREMULTIPLY = 5,
    /// Blend textures using custom src/dst factors (use rlSetBlendFactors())
    BLEND_CUSTOM = 6,
    /// Blend textures using custom rgb/alpha separate src/dst factors (use rlSetBlendFactorsSeparate())
    BLEND_CUSTOM_SEPARATE = 7,
}
