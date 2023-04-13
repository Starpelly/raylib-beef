using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Image
{
    /// Image raw data
    public void * data;
    
    /// Image base width
    public int width;
    
    /// Image base height
    public int height;
    
    /// Mipmap levels, 1 by default
    public int mipmaps;
    
    /// Data format (PixelFormat type)
    public int format;
    
    public this(void * data, int width, int height, int mipmaps, int format)
    {
        this.data = data;
        this.width = width;
        this.height = height;
        this.mipmaps = mipmaps;
        this.format = format;
    }
}
