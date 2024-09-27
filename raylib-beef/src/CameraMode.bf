using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Camera system modes
public enum CameraMode : c_int
{
	/// Custom camera
	case CAMERA_CUSTOM = 0;
	/// Free camera
	case CAMERA_FREE = 1;
	/// Orbital camera
	case CAMERA_ORBITAL = 2;
	/// First person camera
	case CAMERA_FIRST_PERSON = 3;
	/// Third person camera
	case CAMERA_THIRD_PERSON = 4;
	
	public static operator int32 (CameraMode self) => (int32)self;
}
