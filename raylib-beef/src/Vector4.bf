using System;
using System.Interop;

namespace Raylib;

typealias Quaternion = Vector4;

[CRepr]
public struct Vector4
{
    /// 
    public float x;
    
    /// 
    public float y;
    
    /// 
    public float z;
    
    /// 
    public float w;
    
    public this(float x, float y, float z, float w)
    {
        this.x = x;
        this.y = y;
        this.z = z;
        this.w = w;
    }
}
