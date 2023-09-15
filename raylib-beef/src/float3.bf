using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct float3
{
	/// 
	public float[3] v;
	
	public this(float[3] v)
	{
		this.v = v;
	}
}
