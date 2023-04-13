using System;
using System.Interop;

namespace RaylibBeef;

/// Camera system modes
public enum CameraMode : c_int
{
    /// Custom camera
    CAMERA_CUSTOM = 0,
    /// Free camera
    CAMERA_FREE = 1,
    /// Orbital camera
    CAMERA_ORBITAL = 2,
    /// First person camera
    CAMERA_FIRST_PERSON = 3,
    /// Third person camera
    CAMERA_THIRD_PERSON = 4,
}
