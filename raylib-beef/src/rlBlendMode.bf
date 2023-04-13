using System;
using System.Interop;

namespace Raylib;

/// Color blending modes (pre-defined)
public enum rlBlendMode : c_int
{
    /// Blend textures considering alpha (default)
    RL_BLEND_ALPHA = 0,
    /// Blend textures adding colors
    RL_BLEND_ADDITIVE = 1,
    /// Blend textures multiplying colors
    RL_BLEND_MULTIPLIED = 2,
    /// Blend textures adding colors (alternative)
    RL_BLEND_ADD_COLORS = 3,
    /// Blend textures subtracting colors (alternative)
    RL_BLEND_SUBTRACT_COLORS = 4,
    /// Blend premultiplied textures considering alpha
    RL_BLEND_ALPHA_PREMULTIPLY = 5,
    /// Blend textures using custom src/dst factors (use rlSetBlendFactors())
    RL_BLEND_CUSTOM = 6,
    /// Blend textures using custom src/dst factors (use rlSetBlendFactorsSeparate())
    RL_BLEND_CUSTOM_SEPARATE = 7,
}
