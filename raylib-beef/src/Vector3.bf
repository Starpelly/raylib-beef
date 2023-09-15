using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Vector3
{
	/// 
	public float x;
	
	/// 
	public float y;
	
	/// 
	public float z;
	
	public this(float x, float y, float z)
	{
		this.x = x;
		this.y = y;
		this.z = z;
	}
}
