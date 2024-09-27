using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// System/Window config flags
public enum ConfigFlags : c_int
{
	/// Set to try enabling V-Sync on GPU
	case FLAG_VSYNC_HINT = 64;
	/// Set to run program in fullscreen
	case FLAG_FULLSCREEN_MODE = 2;
	/// Set to allow resizable window
	case FLAG_WINDOW_RESIZABLE = 4;
	/// Set to disable window decoration (frame and buttons)
	case FLAG_WINDOW_UNDECORATED = 8;
	/// Set to hide window
	case FLAG_WINDOW_HIDDEN = 128;
	/// Set to minimize window (iconify)
	case FLAG_WINDOW_MINIMIZED = 512;
	/// Set to maximize window (expanded to monitor)
	case FLAG_WINDOW_MAXIMIZED = 1024;
	/// Set to window non focused
	case FLAG_WINDOW_UNFOCUSED = 2048;
	/// Set to window always on top
	case FLAG_WINDOW_TOPMOST = 4096;
	/// Set to allow windows running while minimized
	case FLAG_WINDOW_ALWAYS_RUN = 256;
	/// Set to allow transparent framebuffer
	case FLAG_WINDOW_TRANSPARENT = 16;
	/// Set to support HighDPI
	case FLAG_WINDOW_HIGHDPI = 8192;
	/// Set to support mouse passthrough, only supported when FLAG_WINDOW_UNDECORATED
	case FLAG_WINDOW_MOUSE_PASSTHROUGH = 16384;
	/// Set to run program in borderless windowed mode
	case FLAG_BORDERLESS_WINDOWED_MODE = 32768;
	/// Set to try enabling MSAA 4X
	case FLAG_MSAA_4X_HINT = 32;
	/// Set to try enabling interlaced video format (for V3D)
	case FLAG_INTERLACED_HINT = 65536;
	
	public static operator int32 (ConfigFlags self) => (int32)self;
}
