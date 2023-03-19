using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct Vector3
{
    /// Vector x component
    public float x;
    
    /// Vector y component
    public float y;
    
    /// Vector z component
    public float z;
    
    public this(float x, float y, float z)
    {
        this.x = x;
        this.y = y;
        this.z = z;
    }
}
