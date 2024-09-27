using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Mouse buttons
public enum MouseButton : c_int
{
	/// Mouse button left
	case MOUSE_BUTTON_LEFT = 0;
	/// Mouse button right
	case MOUSE_BUTTON_RIGHT = 1;
	/// Mouse button middle (pressed wheel)
	case MOUSE_BUTTON_MIDDLE = 2;
	/// Mouse button side (advanced mouse device)
	case MOUSE_BUTTON_SIDE = 3;
	/// Mouse button extra (advanced mouse device)
	case MOUSE_BUTTON_EXTRA = 4;
	/// Mouse button forward (advanced mouse device)
	case MOUSE_BUTTON_FORWARD = 5;
	/// Mouse button back (advanced mouse device)
	case MOUSE_BUTTON_BACK = 6;
	
	public static operator int32 (MouseButton self) => (int32)self;
}
