using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Matrix
{
	/// Matrix first row (4 components)
	public float m0;
	
	/// Matrix first row (4 components)
	public float m4;
	
	/// Matrix first row (4 components)
	public float m8;
	
	/// Matrix first row (4 components)
	public float m12;
	
	/// Matrix second row (4 components)
	public float m1;
	
	/// Matrix second row (4 components)
	public float m5;
	
	/// Matrix second row (4 components)
	public float m9;
	
	/// Matrix second row (4 components)
	public float m13;
	
	/// Matrix third row (4 components)
	public float m2;
	
	/// Matrix third row (4 components)
	public float m6;
	
	/// Matrix third row (4 components)
	public float m10;
	
	/// Matrix third row (4 components)
	public float m14;
	
	/// Matrix fourth row (4 components)
	public float m3;
	
	/// Matrix fourth row (4 components)
	public float m7;
	
	/// Matrix fourth row (4 components)
	public float m11;
	
	/// Matrix fourth row (4 components)
	public float m15;
	
	public this(float m0, float m4, float m8, float m12, float m1, float m5, float m9, float m13, float m2, float m6, float m10, float m14, float m3, float m7, float m11, float m15)
	{
		this.m0 = m0;
		this.m4 = m4;
		this.m8 = m8;
		this.m12 = m12;
		this.m1 = m1;
		this.m5 = m5;
		this.m9 = m9;
		this.m13 = m13;
		this.m2 = m2;
		this.m6 = m6;
		this.m10 = m10;
		this.m14 = m14;
		this.m3 = m3;
		this.m7 = m7;
		this.m11 = m11;
		this.m15 = m15;
	}
}
