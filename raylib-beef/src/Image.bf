using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Image
{
    /// Image raw data
    public void * data;
    
    /// Image base width
    public int32 width;
    
    /// Image base height
    public int32 height;
    
    /// Mipmap levels, 1 by default
    public int32 mipmaps;
    
    /// Data format (PixelFormat type)
    public int32 format;
    
    public this(void * data, int32 width, int32 height, int32 mipmaps, int32 format)
    {
        this.data = data;
        this.width = width;
        this.height = height;
        this.mipmaps = mipmaps;
        this.format = format;
    }
}
