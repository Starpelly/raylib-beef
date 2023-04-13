using System;
using System.Interop;

namespace RaylibBeef;

/// Mouse buttons
public enum MouseButton : c_int
{
    /// Mouse button left
    MOUSE_BUTTON_LEFT = 0,
    /// Mouse button right
    MOUSE_BUTTON_RIGHT = 1,
    /// Mouse button middle (pressed wheel)
    MOUSE_BUTTON_MIDDLE = 2,
    /// Mouse button side (advanced mouse device)
    MOUSE_BUTTON_SIDE = 3,
    /// Mouse button extra (advanced mouse device)
    MOUSE_BUTTON_EXTRA = 4,
    /// Mouse button forward (advanced mouse device)
    MOUSE_BUTTON_FORWARD = 5,
    /// Mouse button back (advanced mouse device)
    MOUSE_BUTTON_BACK = 6,
}
