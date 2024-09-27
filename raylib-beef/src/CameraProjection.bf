using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Camera projection
public enum CameraProjection : c_int
{
	/// Perspective projection
	case CAMERA_PERSPECTIVE = 0;
	/// Orthographic projection
	case CAMERA_ORTHOGRAPHIC = 1;
	
	public static operator int32 (CameraProjection self) => (int32)self;
}
