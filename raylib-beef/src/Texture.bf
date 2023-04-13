using System;
using System.Interop;

namespace RaylibBeef;

typealias Texture2D = Texture;
typealias TextureCubemap = Texture;

[CRepr]
public struct Texture
{
    /// OpenGL texture id
    public int id;
    
    /// Texture base width
    public int width;
    
    /// Texture base height
    public int height;
    
    /// Mipmap levels, 1 by default
    public int mipmaps;
    
    /// Data format (PixelFormat type)
    public int format;
    
    public this(int id, int width, int height, int mipmaps, int format)
    {
        this.id = id;
        this.width = width;
        this.height = height;
        this.mipmaps = mipmaps;
        this.format = format;
    }
}
