using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Gamepad axis
public enum GamepadAxis : c_int
{
	/// Gamepad left stick X axis
	GAMEPAD_AXIS_LEFT_X = 0,
	/// Gamepad left stick Y axis
	GAMEPAD_AXIS_LEFT_Y = 1,
	/// Gamepad right stick X axis
	GAMEPAD_AXIS_RIGHT_X = 2,
	/// Gamepad right stick Y axis
	GAMEPAD_AXIS_RIGHT_Y = 3,
	/// Gamepad back trigger left, pressure level: [1..-1]
	GAMEPAD_AXIS_LEFT_TRIGGER = 4,
	/// Gamepad back trigger right, pressure level: [1..-1]
	GAMEPAD_AXIS_RIGHT_TRIGGER = 5,
}
