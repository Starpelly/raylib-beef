using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct Material
{
    /// Material shader
    public Shader shader;
    
    /// Material maps array (MAX_MATERIAL_MAPS)
    public MaterialMap * maps;
    
    /// Material generic parameters (if required)
    public float[4] @params;
    
    public this(Shader shader, MaterialMap * maps, float[4] @params)
    {
        this.shader = shader;
        this.maps = maps;
        this.@params = @params;
    }
}
