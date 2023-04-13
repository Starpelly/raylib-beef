using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct float16
{
    /// 
    public float[16] v;
    
    public this(float[16] v)
    {
        this.v = v;
    }
}
