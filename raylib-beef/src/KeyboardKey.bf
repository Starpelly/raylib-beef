using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Keyboard keys (US keyboard layout)
public enum KeyboardKey : c_int
{
	/// Key: NULL, used for no key pressed
	case KEY_NULL = 0;
	/// Key: '
	case KEY_APOSTROPHE = 39;
	/// Key: ,
	case KEY_COMMA = 44;
	/// Key: -
	case KEY_MINUS = 45;
	/// Key: .
	case KEY_PERIOD = 46;
	/// Key: /
	case KEY_SLASH = 47;
	/// Key: 0
	case KEY_ZERO = 48;
	/// Key: 1
	case KEY_ONE = 49;
	/// Key: 2
	case KEY_TWO = 50;
	/// Key: 3
	case KEY_THREE = 51;
	/// Key: 4
	case KEY_FOUR = 52;
	/// Key: 5
	case KEY_FIVE = 53;
	/// Key: 6
	case KEY_SIX = 54;
	/// Key: 7
	case KEY_SEVEN = 55;
	/// Key: 8
	case KEY_EIGHT = 56;
	/// Key: 9
	case KEY_NINE = 57;
	/// Key: ;
	case KEY_SEMICOLON = 59;
	/// Key: =
	case KEY_EQUAL = 61;
	/// Key: A | a
	case KEY_A = 65;
	/// Key: B | b
	case KEY_B = 66;
	/// Key: C | c
	case KEY_C = 67;
	/// Key: D | d
	case KEY_D = 68;
	/// Key: E | e
	case KEY_E = 69;
	/// Key: F | f
	case KEY_F = 70;
	/// Key: G | g
	case KEY_G = 71;
	/// Key: H | h
	case KEY_H = 72;
	/// Key: I | i
	case KEY_I = 73;
	/// Key: J | j
	case KEY_J = 74;
	/// Key: K | k
	case KEY_K = 75;
	/// Key: L | l
	case KEY_L = 76;
	/// Key: M | m
	case KEY_M = 77;
	/// Key: N | n
	case KEY_N = 78;
	/// Key: O | o
	case KEY_O = 79;
	/// Key: P | p
	case KEY_P = 80;
	/// Key: Q | q
	case KEY_Q = 81;
	/// Key: R | r
	case KEY_R = 82;
	/// Key: S | s
	case KEY_S = 83;
	/// Key: T | t
	case KEY_T = 84;
	/// Key: U | u
	case KEY_U = 85;
	/// Key: V | v
	case KEY_V = 86;
	/// Key: W | w
	case KEY_W = 87;
	/// Key: X | x
	case KEY_X = 88;
	/// Key: Y | y
	case KEY_Y = 89;
	/// Key: Z | z
	case KEY_Z = 90;
	/// Key: [
	case KEY_LEFT_BRACKET = 91;
	/// Key: '\'
	case KEY_BACKSLASH = 92;
	/// Key: ]
	case KEY_RIGHT_BRACKET = 93;
	/// Key: `
	case KEY_GRAVE = 96;
	/// Key: Space
	case KEY_SPACE = 32;
	/// Key: Esc
	case KEY_ESCAPE = 256;
	/// Key: Enter
	case KEY_ENTER = 257;
	/// Key: Tab
	case KEY_TAB = 258;
	/// Key: Backspace
	case KEY_BACKSPACE = 259;
	/// Key: Ins
	case KEY_INSERT = 260;
	/// Key: Del
	case KEY_DELETE = 261;
	/// Key: Cursor right
	case KEY_RIGHT = 262;
	/// Key: Cursor left
	case KEY_LEFT = 263;
	/// Key: Cursor down
	case KEY_DOWN = 264;
	/// Key: Cursor up
	case KEY_UP = 265;
	/// Key: Page up
	case KEY_PAGE_UP = 266;
	/// Key: Page down
	case KEY_PAGE_DOWN = 267;
	/// Key: Home
	case KEY_HOME = 268;
	/// Key: End
	case KEY_END = 269;
	/// Key: Caps lock
	case KEY_CAPS_LOCK = 280;
	/// Key: Scroll down
	case KEY_SCROLL_LOCK = 281;
	/// Key: Num lock
	case KEY_NUM_LOCK = 282;
	/// Key: Print screen
	case KEY_PRINT_SCREEN = 283;
	/// Key: Pause
	case KEY_PAUSE = 284;
	/// Key: F1
	case KEY_F1 = 290;
	/// Key: F2
	case KEY_F2 = 291;
	/// Key: F3
	case KEY_F3 = 292;
	/// Key: F4
	case KEY_F4 = 293;
	/// Key: F5
	case KEY_F5 = 294;
	/// Key: F6
	case KEY_F6 = 295;
	/// Key: F7
	case KEY_F7 = 296;
	/// Key: F8
	case KEY_F8 = 297;
	/// Key: F9
	case KEY_F9 = 298;
	/// Key: F10
	case KEY_F10 = 299;
	/// Key: F11
	case KEY_F11 = 300;
	/// Key: F12
	case KEY_F12 = 301;
	/// Key: Shift left
	case KEY_LEFT_SHIFT = 340;
	/// Key: Control left
	case KEY_LEFT_CONTROL = 341;
	/// Key: Alt left
	case KEY_LEFT_ALT = 342;
	/// Key: Super left
	case KEY_LEFT_SUPER = 343;
	/// Key: Shift right
	case KEY_RIGHT_SHIFT = 344;
	/// Key: Control right
	case KEY_RIGHT_CONTROL = 345;
	/// Key: Alt right
	case KEY_RIGHT_ALT = 346;
	/// Key: Super right
	case KEY_RIGHT_SUPER = 347;
	/// Key: KB menu
	case KEY_KB_MENU = 348;
	/// Key: Keypad 0
	case KEY_KP_0 = 320;
	/// Key: Keypad 1
	case KEY_KP_1 = 321;
	/// Key: Keypad 2
	case KEY_KP_2 = 322;
	/// Key: Keypad 3
	case KEY_KP_3 = 323;
	/// Key: Keypad 4
	case KEY_KP_4 = 324;
	/// Key: Keypad 5
	case KEY_KP_5 = 325;
	/// Key: Keypad 6
	case KEY_KP_6 = 326;
	/// Key: Keypad 7
	case KEY_KP_7 = 327;
	/// Key: Keypad 8
	case KEY_KP_8 = 328;
	/// Key: Keypad 9
	case KEY_KP_9 = 329;
	/// Key: Keypad .
	case KEY_KP_DECIMAL = 330;
	/// Key: Keypad /
	case KEY_KP_DIVIDE = 331;
	/// Key: Keypad *
	case KEY_KP_MULTIPLY = 332;
	/// Key: Keypad -
	case KEY_KP_SUBTRACT = 333;
	/// Key: Keypad +
	case KEY_KP_ADD = 334;
	/// Key: Keypad Enter
	case KEY_KP_ENTER = 335;
	/// Key: Keypad =
	case KEY_KP_EQUAL = 336;
	/// Key: Android back button
	case KEY_BACK = 4;
	/// Key: Android menu button
	case KEY_MENU = 82;
	/// Key: Android volume up button
	case KEY_VOLUME_UP = 24;
	/// Key: Android volume down button
	case KEY_VOLUME_DOWN = 25;
	
	public static operator int32 (KeyboardKey self) => (int32)self;
}
