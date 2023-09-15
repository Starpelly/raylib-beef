using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Transform
{
	/// Translation
	public Vector3 translation;
	
	/// Rotation
	public Quaternion rotation;
	
	/// Scale
	public Vector3 scale;
	
	public this(Vector3 translation, Quaternion rotation, Vector3 scale)
	{
		this.translation = translation;
		this.rotation = rotation;
		this.scale = scale;
	}
}
