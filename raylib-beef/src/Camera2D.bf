using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Camera2D
{
    /// Camera offset (displacement from target)
    public Vector2 offset;
    
    /// Camera target (rotation and zoom origin)
    public Vector2 target;
    
    /// Camera rotation in degrees
    public float rotation;
    
    /// Camera zoom (scaling), should be 1.0f by default
    public float zoom;
    
    public this(Vector2 offset, Vector2 target, float rotation, float zoom)
    {
        this.offset = offset;
        this.target = target;
        this.rotation = rotation;
        this.zoom = zoom;
    }
}
