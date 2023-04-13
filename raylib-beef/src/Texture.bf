using System;
using System.Interop;

namespace RaylibBeef;

typealias Texture2D = Texture;
typealias TextureCubemap = Texture;

[CRepr]
public struct Texture
{
    /// OpenGL texture id
    public int32 id;
    
    /// Texture base width
    public int32 width;
    
    /// Texture base height
    public int32 height;
    
    /// Mipmap levels, 1 by default
    public int32 mipmaps;
    
    /// Data format (PixelFormat type)
    public int32 format;
    
    public this(int32 id, int32 width, int32 height, int32 mipmaps, int32 format)
    {
        this.id = id;
        this.width = width;
        this.height = height;
        this.mipmaps = mipmaps;
        this.format = format;
    }
}
