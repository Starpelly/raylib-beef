using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct MaterialMap
{
    /// Material map texture
    public Texture2D texture;
    
    /// Material map color
    public Color color;
    
    /// Material map value
    public float value;
    
    public this(Texture2D texture, Color color, float value)
    {
        this.texture = texture;
        this.color = color;
        this.value = value;
    }
}
