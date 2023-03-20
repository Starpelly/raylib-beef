using System;
using System.Interop;

namespace Raylib;

/// System/Window config flags
public enum ConfigFlags : c_int
{
    /// Set to try enabling V-Sync on GPU
    FLAG_VSYNC_HINT = 64,
    /// Set to run program in fullscreen
    FLAG_FULLSCREEN_MODE = 2,
    /// Set to allow resizable window
    FLAG_WINDOW_RESIZABLE = 4,
    /// Set to disable window decoration (frame and buttons)
    FLAG_WINDOW_UNDECORATED = 8,
    /// Set to hide window
    FLAG_WINDOW_HIDDEN = 128,
    /// Set to minimize window (iconify)
    FLAG_WINDOW_MINIMIZED = 512,
    /// Set to maximize window (expanded to monitor)
    FLAG_WINDOW_MAXIMIZED = 1024,
    /// Set to window non focused
    FLAG_WINDOW_UNFOCUSED = 2048,
    /// Set to window always on top
    FLAG_WINDOW_TOPMOST = 4096,
    /// Set to allow windows running while minimized
    FLAG_WINDOW_ALWAYS_RUN = 256,
    /// Set to allow transparent framebuffer
    FLAG_WINDOW_TRANSPARENT = 16,
    /// Set to support HighDPI
    FLAG_WINDOW_HIGHDPI = 8192,
    /// Set to support mouse passthrough, only supported when FLAG_WINDOW_UNDECORATED
    FLAG_WINDOW_MOUSE_PASSTHROUGH = 16384,
    /// Set to try enabling MSAA 4X
    FLAG_MSAA_4X_HINT = 32,
    /// Set to try enabling interlaced video format (for V3D)
    FLAG_INTERLACED_HINT = 65536,
}
