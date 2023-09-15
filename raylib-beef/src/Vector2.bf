using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Vector2
{
	/// 
	public float x;
	
	/// 
	public float y;
	
	public this(float x, float y)
	{
		this.x = x;
		this.y = y;
	}
}
