using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Ray
{
	/// Ray position (origin)
	public Vector3 position;
	
	/// Ray direction
	public Vector3 direction;
	
	public this(Vector3 position, Vector3 direction)
	{
		this.position = position;
		this.direction = direction;
	}
}
