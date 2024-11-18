using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Camera system modes
public enum CameraMode : c_int
{
	/// Camera custom, controlled by user (UpdateCamera() does nothing)
	case CAMERA_CUSTOM = 0;
	/// Camera free mode
	case CAMERA_FREE = 1;
	/// Camera orbital, around target, zoom supported
	case CAMERA_ORBITAL = 2;
	/// Camera first person
	case CAMERA_FIRST_PERSON = 3;
	/// Camera third person
	case CAMERA_THIRD_PERSON = 4;
	
	public static operator int32 (CameraMode self) => (int32)self;
}
