using System;
using System.Interop;

namespace RaylibBeef;

/// Gesture
public enum Gesture : c_int
{
	/// No gesture
	GESTURE_NONE = 0,
	/// Tap gesture
	GESTURE_TAP = 1,
	/// Double tap gesture
	GESTURE_DOUBLETAP = 2,
	/// Hold gesture
	GESTURE_HOLD = 4,
	/// Drag gesture
	GESTURE_DRAG = 8,
	/// Swipe right gesture
	GESTURE_SWIPE_RIGHT = 16,
	/// Swipe left gesture
	GESTURE_SWIPE_LEFT = 32,
	/// Swipe up gesture
	GESTURE_SWIPE_UP = 64,
	/// Swipe down gesture
	GESTURE_SWIPE_DOWN = 128,
	/// Pinch in gesture
	GESTURE_PINCH_IN = 256,
	/// Pinch out gesture
	GESTURE_PINCH_OUT = 512,
}
