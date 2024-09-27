using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Mouse cursor
public enum MouseCursor : c_int
{
	/// Default pointer shape
	case MOUSE_CURSOR_DEFAULT = 0;
	/// Arrow shape
	case MOUSE_CURSOR_ARROW = 1;
	/// Text writing cursor shape
	case MOUSE_CURSOR_IBEAM = 2;
	/// Cross shape
	case MOUSE_CURSOR_CROSSHAIR = 3;
	/// Pointing hand cursor
	case MOUSE_CURSOR_POINTING_HAND = 4;
	/// Horizontal resize/move arrow shape
	case MOUSE_CURSOR_RESIZE_EW = 5;
	/// Vertical resize/move arrow shape
	case MOUSE_CURSOR_RESIZE_NS = 6;
	/// Top-left to bottom-right diagonal resize/move arrow shape
	case MOUSE_CURSOR_RESIZE_NWSE = 7;
	/// The top-right to bottom-left diagonal resize/move arrow shape
	case MOUSE_CURSOR_RESIZE_NESW = 8;
	/// The omnidirectional resize/move cursor shape
	case MOUSE_CURSOR_RESIZE_ALL = 9;
	/// The operation-not-allowed shape
	case MOUSE_CURSOR_NOT_ALLOWED = 10;
	
	public static operator int32 (MouseCursor self) => (int32)self;
}
