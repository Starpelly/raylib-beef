using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct RayCollision
{
    /// Did the ray hit something?
    public bool hit;
    
    /// Distance to the nearest hit
    public float distance;
    
    /// Point of the nearest hit
    public Vector3 point;
    
    /// Surface normal of hit
    public Vector3 normal;
    
    public this(bool hit, float distance, Vector3 point, Vector3 normal)
    {
        this.hit = hit;
        this.distance = distance;
        this.point = point;
        this.normal = normal;
    }
}
