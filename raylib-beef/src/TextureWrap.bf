using System;
using System.Interop;

namespace RaylibBeef;

/// Texture parameters: wrap mode
public enum TextureWrap : c_int
{
    /// Repeats texture in tiled mode
    TEXTURE_WRAP_REPEAT = 0,
    /// Clamps texture to edge pixel in tiled mode
    TEXTURE_WRAP_CLAMP = 1,
    /// Mirrors and repeats the texture in tiled mode
    TEXTURE_WRAP_MIRROR_REPEAT = 2,
    /// Mirrors and clamps to border the texture in tiled mode
    TEXTURE_WRAP_MIRROR_CLAMP = 3,
}
