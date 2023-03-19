using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct Vector2
{
    /// Vector x component
    public float x;
    
    /// Vector y component
    public float y;
    
    public this(float x, float y)
    {
        this.x = x;
        this.y = y;
    }
}
