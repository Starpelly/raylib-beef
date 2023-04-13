using System;
using System.Interop;

namespace RaylibBeef;

typealias Camera = Camera3D;

[CRepr]
public struct Camera3D
{
    /// Camera position
    public Vector3 position;
    
    /// Camera target it looks-at
    public Vector3 target;
    
    /// Camera up vector (rotation over its axis)
    public Vector3 up;
    
    /// Camera field-of-view aperture in Y (degrees) in perspective, used as near plane width in orthographic
    public float fovy;
    
    /// Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC
    public int projection;
    
    public this(Vector3 position, Vector3 target, Vector3 up, float fovy, int projection)
    {
        this.position = position;
        this.target = target;
        this.up = up;
        this.fovy = fovy;
        this.projection = projection;
    }
}
