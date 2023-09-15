using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Rectangle
{
	/// Rectangle top-left corner position x
	public float x;
	
	/// Rectangle top-left corner position y
	public float y;
	
	/// Rectangle width
	public float width;
	
	/// Rectangle height
	public float height;
	
	public this(float x, float y, float width, float height)
	{
		this.x = x;
		this.y = y;
		this.width = width;
		this.height = height;
	}
}
