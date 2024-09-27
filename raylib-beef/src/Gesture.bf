using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Gesture
public enum Gesture : c_int
{
	/// No gesture
	case GESTURE_NONE = 0;
	/// Tap gesture
	case GESTURE_TAP = 1;
	/// Double tap gesture
	case GESTURE_DOUBLETAP = 2;
	/// Hold gesture
	case GESTURE_HOLD = 4;
	/// Drag gesture
	case GESTURE_DRAG = 8;
	/// Swipe right gesture
	case GESTURE_SWIPE_RIGHT = 16;
	/// Swipe left gesture
	case GESTURE_SWIPE_LEFT = 32;
	/// Swipe up gesture
	case GESTURE_SWIPE_UP = 64;
	/// Swipe down gesture
	case GESTURE_SWIPE_DOWN = 128;
	/// Pinch in gesture
	case GESTURE_PINCH_IN = 256;
	/// Pinch out gesture
	case GESTURE_PINCH_OUT = 512;
	
	public static operator int32 (Gesture self) => (int32)self;
}
