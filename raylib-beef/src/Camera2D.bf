using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Camera2D
{
	/// Camera offset (screen space offset from window origin)
	public Vector2 offset;
	
	/// Camera target (world space target point that is mapped to screen space offset)
	public Vector2 target;
	
	/// Camera rotation in degrees (pivots around target)
	public float rotation;
	
	/// Camera zoom (scaling around target), must not be set to 0, set to 1.0f for no scale
	public float zoom;
	
	public this(Vector2 offset, Vector2 target, float rotation, float zoom)
	{
		this.offset = offset;
		this.target = target;
		this.rotation = rotation;
		this.zoom = zoom;
	}
}
