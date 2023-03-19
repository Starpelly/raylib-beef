using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct Color
{
    /// Color red value
    public char8 r;
    
    /// Color green value
    public char8 g;
    
    /// Color blue value
    public char8 b;
    
    /// Color alpha value
    public char8 a;
    
    public this(char8 r, char8 g, char8 b, char8 a)
    {
        this.r = r;
        this.g = g;
        this.b = b;
        this.a = a;
    }
}
