using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct Shader
{
    /// Shader program id
    public int id;
    
    /// Shader locations array (RL_MAX_SHADER_LOCATIONS)
    public int * locs;
    
    public this(int id, int * locs)
    {
        this.id = id;
        this.locs = locs;
    }
}
