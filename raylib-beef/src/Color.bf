using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Color
{
    /// Color red value
    public uint8 r;
    
    /// Color green value
    public uint8 g;
    
    /// Color blue value
    public uint8 b;
    
    /// Color alpha value
    public uint8 a;
    
    public this(uint8 r, uint8 g, uint8 b, uint8 a)
    {
        this.r = r;
        this.g = g;
        this.b = b;
        this.a = a;
    }
}
