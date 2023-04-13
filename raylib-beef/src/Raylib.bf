using System;
using System.Interop;

namespace RaylibBeef;

public static class Raylib
{
    public const int RAYLIB_VERSION_MAJOR = 4;
    
    public const int RAYLIB_VERSION_MINOR = 5;
    
    public const int RAYLIB_VERSION_PATCH = 0;
    
    public const char8* RAYLIB_VERSION = "4.5";
    
    public const float PI = 3.141592653589793f;
    
    public const float DEG2RAD = (PI/180.0f);
    
    public const float RAD2DEG = (180.0f/PI);
    
    /// Light Gray
    public const Color LIGHTGRAY = Color(200, 200, 200, 255);
    
    /// Gray
    public const Color GRAY = Color(130, 130, 130, 255);
    
    /// Dark Gray
    public const Color DARKGRAY = Color(80, 80, 80, 255);
    
    /// Yellow
    public const Color YELLOW = Color(253, 249, 0, 255);
    
    /// Gold
    public const Color GOLD = Color(255, 203, 0, 255);
    
    /// Orange
    public const Color ORANGE = Color(255, 161, 0, 255);
    
    /// Pink
    public const Color PINK = Color(255, 109, 194, 255);
    
    /// Red
    public const Color RED = Color(230, 41, 55, 255);
    
    /// Maroon
    public const Color MAROON = Color(190, 33, 55, 255);
    
    /// Green
    public const Color GREEN = Color(0, 228, 48, 255);
    
    /// Lime
    public const Color LIME = Color(0, 158, 47, 255);
    
    /// Dark Green
    public const Color DARKGREEN = Color(0, 117, 44, 255);
    
    /// Sky Blue
    public const Color SKYBLUE = Color(102, 191, 255, 255);
    
    /// Blue
    public const Color BLUE = Color(0, 121, 241, 255);
    
    /// Dark Blue
    public const Color DARKBLUE = Color(0, 82, 172, 255);
    
    /// Purple
    public const Color PURPLE = Color(200, 122, 255, 255);
    
    /// Violet
    public const Color VIOLET = Color(135, 60, 190, 255);
    
    /// Dark Purple
    public const Color DARKPURPLE = Color(112, 31, 126, 255);
    
    /// Beige
    public const Color BEIGE = Color(211, 176, 131, 255);
    
    /// Brown
    public const Color BROWN = Color(127, 106, 79, 255);
    
    /// Dark Brown
    public const Color DARKBROWN = Color(76, 63, 47, 255);
    
    /// White
    public const Color WHITE = Color(255, 255, 255, 255);
    
    /// Black
    public const Color BLACK = Color(0, 0, 0, 255);
    
    /// Blank (Transparent)
    public const Color BLANK = Color(0, 0, 0, 0);
    
    /// Magenta
    public const Color MAGENTA = Color(255, 0, 255, 255);
    
    /// My own White (raylib logo)
    public const Color RAYWHITE = Color(245, 245, 245, 255);
    
    /// Initialize window and OpenGL context
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("InitWindow")]
    public static extern void InitWindow(int width, int height, char8 * title);
    
    /// Check if KEY_ESCAPE pressed or Close icon pressed
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("WindowShouldClose")]
    public static extern bool WindowShouldClose();
    
    /// Close window and unload OpenGL context
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CloseWindow")]
    public static extern void CloseWindow();
    
    /// Check if window has been initialized successfully
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsWindowReady")]
    public static extern bool IsWindowReady();
    
    /// Check if window is currently fullscreen
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsWindowFullscreen")]
    public static extern bool IsWindowFullscreen();
    
    /// Check if window is currently hidden (only PLATFORM_DESKTOP)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsWindowHidden")]
    public static extern bool IsWindowHidden();
    
    /// Check if window is currently minimized (only PLATFORM_DESKTOP)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsWindowMinimized")]
    public static extern bool IsWindowMinimized();
    
    /// Check if window is currently maximized (only PLATFORM_DESKTOP)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsWindowMaximized")]
    public static extern bool IsWindowMaximized();
    
    /// Check if window is currently focused (only PLATFORM_DESKTOP)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsWindowFocused")]
    public static extern bool IsWindowFocused();
    
    /// Check if window has been resized last frame
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsWindowResized")]
    public static extern bool IsWindowResized();
    
    /// Check if one specific window flag is enabled
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsWindowState")]
    public static extern bool IsWindowState(int flag);
    
    /// Set window configuration state using flags (only PLATFORM_DESKTOP)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetWindowState")]
    public static extern void SetWindowState(int flags);
    
    /// Clear window configuration state flags
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ClearWindowState")]
    public static extern void ClearWindowState(int flags);
    
    /// Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ToggleFullscreen")]
    public static extern void ToggleFullscreen();
    
    /// Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MaximizeWindow")]
    public static extern void MaximizeWindow();
    
    /// Set window state: minimized, if resizable (only PLATFORM_DESKTOP)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MinimizeWindow")]
    public static extern void MinimizeWindow();
    
    /// Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("RestoreWindow")]
    public static extern void RestoreWindow();
    
    /// Set icon for window (single image, RGBA 32bit, only PLATFORM_DESKTOP)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetWindowIcon")]
    public static extern void SetWindowIcon(Image image);
    
    /// Set icon for window (multiple images, RGBA 32bit, only PLATFORM_DESKTOP)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetWindowIcons")]
    public static extern void SetWindowIcons(Image * images, int count);
    
    /// Set title for window (only PLATFORM_DESKTOP)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetWindowTitle")]
    public static extern void SetWindowTitle(char8 * title);
    
    /// Set window position on screen (only PLATFORM_DESKTOP)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetWindowPosition")]
    public static extern void SetWindowPosition(int x, int y);
    
    /// Set monitor for the current window (fullscreen mode)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetWindowMonitor")]
    public static extern void SetWindowMonitor(int monitor);
    
    /// Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetWindowMinSize")]
    public static extern void SetWindowMinSize(int width, int height);
    
    /// Set window dimensions
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetWindowSize")]
    public static extern void SetWindowSize(int width, int height);
    
    /// Set window opacity [0.0f..1.0f] (only PLATFORM_DESKTOP)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetWindowOpacity")]
    public static extern void SetWindowOpacity(float opacity);
    
    /// Get native window handle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetWindowHandle")]
    public static extern void * GetWindowHandle();
    
    /// Get current screen width
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetScreenWidth")]
    public static extern int GetScreenWidth();
    
    /// Get current screen height
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetScreenHeight")]
    public static extern int GetScreenHeight();
    
    /// Get current render width (it considers HiDPI)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetRenderWidth")]
    public static extern int GetRenderWidth();
    
    /// Get current render height (it considers HiDPI)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetRenderHeight")]
    public static extern int GetRenderHeight();
    
    /// Get number of connected monitors
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMonitorCount")]
    public static extern int GetMonitorCount();
    
    /// Get current connected monitor
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetCurrentMonitor")]
    public static extern int GetCurrentMonitor();
    
    /// Get specified monitor position
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMonitorPosition")]
    public static extern Vector2 GetMonitorPosition(int monitor);
    
    /// Get specified monitor width (current video mode used by monitor)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMonitorWidth")]
    public static extern int GetMonitorWidth(int monitor);
    
    /// Get specified monitor height (current video mode used by monitor)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMonitorHeight")]
    public static extern int GetMonitorHeight(int monitor);
    
    /// Get specified monitor physical width in millimetres
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMonitorPhysicalWidth")]
    public static extern int GetMonitorPhysicalWidth(int monitor);
    
    /// Get specified monitor physical height in millimetres
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMonitorPhysicalHeight")]
    public static extern int GetMonitorPhysicalHeight(int monitor);
    
    /// Get specified monitor refresh rate
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMonitorRefreshRate")]
    public static extern int GetMonitorRefreshRate(int monitor);
    
    /// Get window position XY on monitor
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetWindowPosition")]
    public static extern Vector2 GetWindowPosition();
    
    /// Get window scale DPI factor
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetWindowScaleDPI")]
    public static extern Vector2 GetWindowScaleDPI();
    
    /// Get the human-readable, UTF-8 encoded name of the primary monitor
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMonitorName")]
    public static extern char8 * GetMonitorName(int monitor);
    
    /// Set clipboard text content
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetClipboardText")]
    public static extern void SetClipboardText(char8 * text);
    
    /// Get clipboard text content
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetClipboardText")]
    public static extern char8 * GetClipboardText();
    
    /// Enable waiting for events on EndDrawing(), no automatic event polling
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("EnableEventWaiting")]
    public static extern void EnableEventWaiting();
    
    /// Disable waiting for events on EndDrawing(), automatic events polling
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DisableEventWaiting")]
    public static extern void DisableEventWaiting();
    
    /// Swap back buffer with front buffer (screen drawing)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SwapScreenBuffer")]
    public static extern void SwapScreenBuffer();
    
    /// Register all input events
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("PollInputEvents")]
    public static extern void PollInputEvents();
    
    /// Wait for some time (halt program execution)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("WaitTime")]
    public static extern void WaitTime(double seconds);
    
    /// Shows cursor
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ShowCursor")]
    public static extern void ShowCursor();
    
    /// Hides cursor
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("HideCursor")]
    public static extern void HideCursor();
    
    /// Check if cursor is not visible
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsCursorHidden")]
    public static extern bool IsCursorHidden();
    
    /// Enables cursor (unlock cursor)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("EnableCursor")]
    public static extern void EnableCursor();
    
    /// Disables cursor (lock cursor)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DisableCursor")]
    public static extern void DisableCursor();
    
    /// Check if cursor is on the screen
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsCursorOnScreen")]
    public static extern bool IsCursorOnScreen();
    
    /// Set background color (framebuffer clear color)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ClearBackground")]
    public static extern void ClearBackground(Color color);
    
    /// Setup canvas (framebuffer) to start drawing
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("BeginDrawing")]
    public static extern void BeginDrawing();
    
    /// End canvas drawing and swap buffers (double buffering)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("EndDrawing")]
    public static extern void EndDrawing();
    
    /// Begin 2D mode with custom camera (2D)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("BeginMode2D")]
    public static extern void BeginMode2D(Camera2D camera);
    
    /// Ends 2D mode with custom camera
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("EndMode2D")]
    public static extern void EndMode2D();
    
    /// Begin 3D mode with custom camera (3D)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("BeginMode3D")]
    public static extern void BeginMode3D(Camera3D camera);
    
    /// Ends 3D mode and returns to default 2D orthographic mode
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("EndMode3D")]
    public static extern void EndMode3D();
    
    /// Begin drawing to render texture
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("BeginTextureMode")]
    public static extern void BeginTextureMode(RenderTexture2D target);
    
    /// Ends drawing to render texture
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("EndTextureMode")]
    public static extern void EndTextureMode();
    
    /// Begin custom shader drawing
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("BeginShaderMode")]
    public static extern void BeginShaderMode(Shader shader);
    
    /// End custom shader drawing (use default shader)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("EndShaderMode")]
    public static extern void EndShaderMode();
    
    /// Begin blending mode (alpha, additive, multiplied, subtract, custom)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("BeginBlendMode")]
    public static extern void BeginBlendMode(int mode);
    
    /// End blending mode (reset to default: alpha blending)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("EndBlendMode")]
    public static extern void EndBlendMode();
    
    /// Begin scissor mode (define screen area for following drawing)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("BeginScissorMode")]
    public static extern void BeginScissorMode(int x, int y, int width, int height);
    
    /// End scissor mode
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("EndScissorMode")]
    public static extern void EndScissorMode();
    
    /// Begin stereo rendering (requires VR simulator)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("BeginVrStereoMode")]
    public static extern void BeginVrStereoMode(VrStereoConfig config);
    
    /// End stereo rendering (requires VR simulator)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("EndVrStereoMode")]
    public static extern void EndVrStereoMode();
    
    /// Load VR stereo config for VR simulator device parameters
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadVrStereoConfig")]
    public static extern VrStereoConfig LoadVrStereoConfig(VrDeviceInfo device);
    
    /// Unload VR stereo config
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadVrStereoConfig")]
    public static extern void UnloadVrStereoConfig(VrStereoConfig config);
    
    /// Load shader from files and bind default locations
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadShader")]
    public static extern Shader LoadShader(char8 * vsFileName, char8 * fsFileName);
    
    /// Load shader from code strings and bind default locations
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadShaderFromMemory")]
    public static extern Shader LoadShaderFromMemory(char8 * vsCode, char8 * fsCode);
    
    /// Check if a shader is ready
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsShaderReady")]
    public static extern bool IsShaderReady(Shader shader);
    
    /// Get shader uniform location
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetShaderLocation")]
    public static extern int GetShaderLocation(Shader shader, char8 * uniformName);
    
    /// Get shader attribute location
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetShaderLocationAttrib")]
    public static extern int GetShaderLocationAttrib(Shader shader, char8 * attribName);
    
    /// Set shader uniform value
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetShaderValue")]
    public static extern void SetShaderValue(Shader shader, int locIndex, void * value, int uniformType);
    
    /// Set shader uniform value vector
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetShaderValueV")]
    public static extern void SetShaderValueV(Shader shader, int locIndex, void * value, int uniformType, int count);
    
    /// Set shader uniform value (matrix 4x4)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetShaderValueMatrix")]
    public static extern void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);
    
    /// Set shader uniform value for texture (sampler2d)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetShaderValueTexture")]
    public static extern void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture);
    
    /// Unload shader from GPU memory (VRAM)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadShader")]
    public static extern void UnloadShader(Shader shader);
    
    /// Get a ray trace from mouse position
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMouseRay")]
    public static extern Ray GetMouseRay(Vector2 mousePosition, Camera camera);
    
    /// Get camera transform matrix (view matrix)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetCameraMatrix")]
    public static extern Matrix GetCameraMatrix(Camera camera);
    
    /// Get camera 2d transform matrix
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetCameraMatrix2D")]
    public static extern Matrix GetCameraMatrix2D(Camera2D camera);
    
    /// Get the screen space position for a 3d world space position
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetWorldToScreen")]
    public static extern Vector2 GetWorldToScreen(Vector3 position, Camera camera);
    
    /// Get the world space position for a 2d camera screen space position
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetScreenToWorld2D")]
    public static extern Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera);
    
    /// Get size position for a 3d world space position
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetWorldToScreenEx")]
    public static extern Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int width, int height);
    
    /// Get the screen space position for a 2d camera world space position
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetWorldToScreen2D")]
    public static extern Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera);
    
    /// Set target FPS (maximum)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetTargetFPS")]
    public static extern void SetTargetFPS(int fps);
    
    /// Get current FPS
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetFPS")]
    public static extern int GetFPS();
    
    /// Get time in seconds for last frame drawn (delta time)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetFrameTime")]
    public static extern float GetFrameTime();
    
    /// Get elapsed time in seconds since InitWindow()
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetTime")]
    public static extern double GetTime();
    
    /// Get a random value between min and max (both included)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetRandomValue")]
    public static extern int GetRandomValue(int min, int max);
    
    /// Set the seed for the random number generator
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetRandomSeed")]
    public static extern void SetRandomSeed(int seed);
    
    /// Takes a screenshot of current screen (filename extension defines format)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TakeScreenshot")]
    public static extern void TakeScreenshot(char8 * fileName);
    
    /// Setup init configuration flags (view FLAGS)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetConfigFlags")]
    public static extern void SetConfigFlags(int flags);
    
    /// Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TraceLog")]
    public static extern void TraceLog(int logLevel, char8 * text);
    
    /// Set the current threshold (minimum) log level
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetTraceLogLevel")]
    public static extern void SetTraceLogLevel(int logLevel);
    
    /// Internal memory allocator
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MemAlloc")]
    public static extern void * MemAlloc(int size);
    
    /// Internal memory reallocator
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MemRealloc")]
    public static extern void * MemRealloc(void * ptr, int size);
    
    /// Internal memory free
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MemFree")]
    public static extern void MemFree(void * ptr);
    
    /// Open URL with default system browser (if available)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("OpenURL")]
    public static extern void OpenURL(char8 * url);
    
    /// Set custom trace log
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetTraceLogCallback")]
    public static extern void SetTraceLogCallback(TraceLogCallback callback);
    
    /// Set custom file binary data loader
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetLoadFileDataCallback")]
    public static extern void SetLoadFileDataCallback(LoadFileDataCallback callback);
    
    /// Set custom file binary data saver
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetSaveFileDataCallback")]
    public static extern void SetSaveFileDataCallback(SaveFileDataCallback callback);
    
    /// Set custom file text data loader
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetLoadFileTextCallback")]
    public static extern void SetLoadFileTextCallback(LoadFileTextCallback callback);
    
    /// Set custom file text data saver
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetSaveFileTextCallback")]
    public static extern void SetSaveFileTextCallback(SaveFileTextCallback callback);
    
    /// Load file data as byte array (read)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadFileData")]
    public static extern char8 * LoadFileData(char8 * fileName, int * bytesRead);
    
    /// Unload file data allocated by LoadFileData()
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadFileData")]
    public static extern void UnloadFileData(char8 * data);
    
    /// Save data to file from byte array (write), returns true on success
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SaveFileData")]
    public static extern bool SaveFileData(char8 * fileName, void * data, int bytesToWrite);
    
    /// Export data to code (.h), returns true on success
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ExportDataAsCode")]
    public static extern bool ExportDataAsCode(char8 * data, int size, char8 * fileName);
    
    /// Load text data from file (read), returns a '\0' terminated string
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadFileText")]
    public static extern char8 * LoadFileText(char8 * fileName);
    
    /// Unload file text data allocated by LoadFileText()
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadFileText")]
    public static extern void UnloadFileText(char8 * text);
    
    /// Save text data to file (write), string must be '\0' terminated, returns true on success
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SaveFileText")]
    public static extern bool SaveFileText(char8 * fileName, char8 * text);
    
    /// Check if file exists
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("FileExists")]
    public static extern bool FileExists(char8 * fileName);
    
    /// Check if a directory path exists
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DirectoryExists")]
    public static extern bool DirectoryExists(char8 * dirPath);
    
    /// Check file extension (including point: .png, .wav)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsFileExtension")]
    public static extern bool IsFileExtension(char8 * fileName, char8 * ext);
    
    /// Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetFileLength")]
    public static extern int GetFileLength(char8 * fileName);
    
    /// Get pointer to extension for a filename string (includes dot: '.png')
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetFileExtension")]
    public static extern char8 * GetFileExtension(char8 * fileName);
    
    /// Get pointer to filename for a path string
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetFileName")]
    public static extern char8 * GetFileName(char8 * filePath);
    
    /// Get filename string without extension (uses static string)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetFileNameWithoutExt")]
    public static extern char8 * GetFileNameWithoutExt(char8 * filePath);
    
    /// Get full path for a given fileName with path (uses static string)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetDirectoryPath")]
    public static extern char8 * GetDirectoryPath(char8 * filePath);
    
    /// Get previous directory path for a given path (uses static string)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetPrevDirectoryPath")]
    public static extern char8 * GetPrevDirectoryPath(char8 * dirPath);
    
    /// Get current working directory (uses static string)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetWorkingDirectory")]
    public static extern char8 * GetWorkingDirectory();
    
    /// Get the directory if the running application (uses static string)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetApplicationDirectory")]
    public static extern char8 * GetApplicationDirectory();
    
    /// Change working directory, return true on success
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ChangeDirectory")]
    public static extern bool ChangeDirectory(char8 * dir);
    
    /// Check if a given path is a file or a directory
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsPathFile")]
    public static extern bool IsPathFile(char8 * path);
    
    /// Load directory filepaths
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadDirectoryFiles")]
    public static extern FilePathList LoadDirectoryFiles(char8 * dirPath);
    
    /// Load directory filepaths with extension filtering and recursive directory scan
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadDirectoryFilesEx")]
    public static extern FilePathList LoadDirectoryFilesEx(char8 * basePath, char8 * filter, bool scanSubdirs);
    
    /// Unload filepaths
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadDirectoryFiles")]
    public static extern void UnloadDirectoryFiles(FilePathList files);
    
    /// Check if a file has been dropped into window
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsFileDropped")]
    public static extern bool IsFileDropped();
    
    /// Load dropped filepaths
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadDroppedFiles")]
    public static extern FilePathList LoadDroppedFiles();
    
    /// Unload dropped filepaths
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadDroppedFiles")]
    public static extern void UnloadDroppedFiles(FilePathList files);
    
    /// Get file modification time (last write time)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetFileModTime")]
    public static extern int32 GetFileModTime(char8 * fileName);
    
    /// Compress data (DEFLATE algorithm), memory must be MemFree()
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CompressData")]
    public static extern char8 * CompressData(char8 * data, int dataSize, int * compDataSize);
    
    /// Decompress data (DEFLATE algorithm), memory must be MemFree()
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DecompressData")]
    public static extern char8 * DecompressData(char8 * compData, int compDataSize, int * dataSize);
    
    /// Encode data to Base64 string, memory must be MemFree()
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("EncodeDataBase64")]
    public static extern char8 * EncodeDataBase64(char8 * data, int dataSize, int * outputSize);
    
    /// Decode Base64 string data, memory must be MemFree()
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DecodeDataBase64")]
    public static extern char8 * DecodeDataBase64(char8 * data, int * outputSize);
    
    /// Check if a key has been pressed once
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsKeyPressed")]
    public static extern bool IsKeyPressed(int key);
    
    /// Check if a key is being pressed
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsKeyDown")]
    public static extern bool IsKeyDown(int key);
    
    /// Check if a key has been released once
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsKeyReleased")]
    public static extern bool IsKeyReleased(int key);
    
    /// Check if a key is NOT being pressed
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsKeyUp")]
    public static extern bool IsKeyUp(int key);
    
    /// Set a custom key to exit program (default is ESC)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetExitKey")]
    public static extern void SetExitKey(int key);
    
    /// Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetKeyPressed")]
    public static extern int GetKeyPressed();
    
    /// Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetCharPressed")]
    public static extern int GetCharPressed();
    
    /// Check if a gamepad is available
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsGamepadAvailable")]
    public static extern bool IsGamepadAvailable(int gamepad);
    
    /// Get gamepad internal name id
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetGamepadName")]
    public static extern char8 * GetGamepadName(int gamepad);
    
    /// Check if a gamepad button has been pressed once
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsGamepadButtonPressed")]
    public static extern bool IsGamepadButtonPressed(int gamepad, int button);
    
    /// Check if a gamepad button is being pressed
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsGamepadButtonDown")]
    public static extern bool IsGamepadButtonDown(int gamepad, int button);
    
    /// Check if a gamepad button has been released once
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsGamepadButtonReleased")]
    public static extern bool IsGamepadButtonReleased(int gamepad, int button);
    
    /// Check if a gamepad button is NOT being pressed
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsGamepadButtonUp")]
    public static extern bool IsGamepadButtonUp(int gamepad, int button);
    
    /// Get the last gamepad button pressed
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetGamepadButtonPressed")]
    public static extern int GetGamepadButtonPressed();
    
    /// Get gamepad axis count for a gamepad
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetGamepadAxisCount")]
    public static extern int GetGamepadAxisCount(int gamepad);
    
    /// Get axis movement value for a gamepad axis
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetGamepadAxisMovement")]
    public static extern float GetGamepadAxisMovement(int gamepad, int axis);
    
    /// Set internal gamepad mappings (SDL_GameControllerDB)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetGamepadMappings")]
    public static extern int SetGamepadMappings(char8 * mappings);
    
    /// Check if a mouse button has been pressed once
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsMouseButtonPressed")]
    public static extern bool IsMouseButtonPressed(int button);
    
    /// Check if a mouse button is being pressed
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsMouseButtonDown")]
    public static extern bool IsMouseButtonDown(int button);
    
    /// Check if a mouse button has been released once
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsMouseButtonReleased")]
    public static extern bool IsMouseButtonReleased(int button);
    
    /// Check if a mouse button is NOT being pressed
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsMouseButtonUp")]
    public static extern bool IsMouseButtonUp(int button);
    
    /// Get mouse position X
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMouseX")]
    public static extern int GetMouseX();
    
    /// Get mouse position Y
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMouseY")]
    public static extern int GetMouseY();
    
    /// Get mouse position XY
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMousePosition")]
    public static extern Vector2 GetMousePosition();
    
    /// Get mouse delta between frames
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMouseDelta")]
    public static extern Vector2 GetMouseDelta();
    
    /// Set mouse position XY
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetMousePosition")]
    public static extern void SetMousePosition(int x, int y);
    
    /// Set mouse offset
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetMouseOffset")]
    public static extern void SetMouseOffset(int offsetX, int offsetY);
    
    /// Set mouse scaling
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetMouseScale")]
    public static extern void SetMouseScale(float scaleX, float scaleY);
    
    /// Get mouse wheel movement for X or Y, whichever is larger
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMouseWheelMove")]
    public static extern float GetMouseWheelMove();
    
    /// Get mouse wheel movement for both X and Y
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMouseWheelMoveV")]
    public static extern Vector2 GetMouseWheelMoveV();
    
    /// Set mouse cursor
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetMouseCursor")]
    public static extern void SetMouseCursor(int cursor);
    
    /// Get touch position X for touch point 0 (relative to screen size)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetTouchX")]
    public static extern int GetTouchX();
    
    /// Get touch position Y for touch point 0 (relative to screen size)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetTouchY")]
    public static extern int GetTouchY();
    
    /// Get touch position XY for a touch point index (relative to screen size)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetTouchPosition")]
    public static extern Vector2 GetTouchPosition(int index);
    
    /// Get touch point identifier for given index
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetTouchPointId")]
    public static extern int GetTouchPointId(int index);
    
    /// Get number of touch points
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetTouchPointCount")]
    public static extern int GetTouchPointCount();
    
    /// Enable a set of gestures using flags
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetGesturesEnabled")]
    public static extern void SetGesturesEnabled(int flags);
    
    /// Check if a gesture have been detected
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsGestureDetected")]
    public static extern bool IsGestureDetected(int gesture);
    
    /// Get latest detected gesture
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetGestureDetected")]
    public static extern int GetGestureDetected();
    
    /// Get gesture hold time in milliseconds
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetGestureHoldDuration")]
    public static extern float GetGestureHoldDuration();
    
    /// Get gesture drag vector
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetGestureDragVector")]
    public static extern Vector2 GetGestureDragVector();
    
    /// Get gesture drag angle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetGestureDragAngle")]
    public static extern float GetGestureDragAngle();
    
    /// Get gesture pinch delta
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetGesturePinchVector")]
    public static extern Vector2 GetGesturePinchVector();
    
    /// Get gesture pinch angle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetGesturePinchAngle")]
    public static extern float GetGesturePinchAngle();
    
    /// Update camera position for selected mode
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UpdateCamera")]
    public static extern void UpdateCamera(Camera * camera, int mode);
    
    /// Update camera movement/rotation
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UpdateCameraPro")]
    public static extern void UpdateCameraPro(Camera * camera, Vector3 movement, Vector3 rotation, float zoom);
    
    /// Set texture and rectangle to be used on shapes drawing
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetShapesTexture")]
    public static extern void SetShapesTexture(Texture2D texture, Rectangle source);
    
    /// Draw a pixel
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawPixel")]
    public static extern void DrawPixel(int posX, int posY, Color color);
    
    /// Draw a pixel (Vector version)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawPixelV")]
    public static extern void DrawPixelV(Vector2 position, Color color);
    
    /// Draw a line
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawLine")]
    public static extern void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);
    
    /// Draw a line (Vector version)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawLineV")]
    public static extern void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);
    
    /// Draw a line defining thickness
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawLineEx")]
    public static extern void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);
    
    /// Draw a line using cubic-bezier curves in-out
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawLineBezier")]
    public static extern void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);
    
    /// Draw line using quadratic bezier curves with a control point
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawLineBezierQuad")]
    public static extern void DrawLineBezierQuad(Vector2 startPos, Vector2 endPos, Vector2 controlPos, float thick, Color color);
    
    /// Draw line using cubic bezier curves with 2 control points
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawLineBezierCubic")]
    public static extern void DrawLineBezierCubic(Vector2 startPos, Vector2 endPos, Vector2 startControlPos, Vector2 endControlPos, float thick, Color color);
    
    /// Draw lines sequence
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawLineStrip")]
    public static extern void DrawLineStrip(Vector2 * points, int pointCount, Color color);
    
    /// Draw a color-filled circle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCircle")]
    public static extern void DrawCircle(int centerX, int centerY, float radius, Color color);
    
    /// Draw a piece of a circle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCircleSector")]
    public static extern void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);
    
    /// Draw circle sector outline
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCircleSectorLines")]
    public static extern void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);
    
    /// Draw a gradient-filled circle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCircleGradient")]
    public static extern void DrawCircleGradient(int centerX, int centerY, float radius, Color color1, Color color2);
    
    /// Draw a color-filled circle (Vector version)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCircleV")]
    public static extern void DrawCircleV(Vector2 center, float radius, Color color);
    
    /// Draw circle outline
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCircleLines")]
    public static extern void DrawCircleLines(int centerX, int centerY, float radius, Color color);
    
    /// Draw ellipse
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawEllipse")]
    public static extern void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color);
    
    /// Draw ellipse outline
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawEllipseLines")]
    public static extern void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color);
    
    /// Draw ring
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawRing")]
    public static extern void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);
    
    /// Draw ring outline
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawRingLines")]
    public static extern void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);
    
    /// Draw a color-filled rectangle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawRectangle")]
    public static extern void DrawRectangle(int posX, int posY, int width, int height, Color color);
    
    /// Draw a color-filled rectangle (Vector version)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawRectangleV")]
    public static extern void DrawRectangleV(Vector2 position, Vector2 size, Color color);
    
    /// Draw a color-filled rectangle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawRectangleRec")]
    public static extern void DrawRectangleRec(Rectangle rec, Color color);
    
    /// Draw a color-filled rectangle with pro parameters
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawRectanglePro")]
    public static extern void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);
    
    /// Draw a vertical-gradient-filled rectangle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawRectangleGradientV")]
    public static extern void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color color2);
    
    /// Draw a horizontal-gradient-filled rectangle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawRectangleGradientH")]
    public static extern void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color color2);
    
    /// Draw a gradient-filled rectangle with custom vertex colors
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawRectangleGradientEx")]
    public static extern void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);
    
    /// Draw rectangle outline
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawRectangleLines")]
    public static extern void DrawRectangleLines(int posX, int posY, int width, int height, Color color);
    
    /// Draw rectangle outline with extended parameters
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawRectangleLinesEx")]
    public static extern void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color);
    
    /// Draw rectangle with rounded edges
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawRectangleRounded")]
    public static extern void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color);
    
    /// Draw rectangle with rounded edges outline
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawRectangleRoundedLines")]
    public static extern void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, float lineThick, Color color);
    
    /// Draw a color-filled triangle (vertex in counter-clockwise order!)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTriangle")]
    public static extern void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);
    
    /// Draw triangle outline (vertex in counter-clockwise order!)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTriangleLines")]
    public static extern void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);
    
    /// Draw a triangle fan defined by points (first vertex is the center)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTriangleFan")]
    public static extern void DrawTriangleFan(Vector2 * points, int pointCount, Color color);
    
    /// Draw a triangle strip defined by points
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTriangleStrip")]
    public static extern void DrawTriangleStrip(Vector2 * points, int pointCount, Color color);
    
    /// Draw a regular polygon (Vector version)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawPoly")]
    public static extern void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color);
    
    /// Draw a polygon outline of n sides
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawPolyLines")]
    public static extern void DrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color);
    
    /// Draw a polygon outline of n sides with extended parameters
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawPolyLinesEx")]
    public static extern void DrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float lineThick, Color color);
    
    /// Check collision between two rectangles
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CheckCollisionRecs")]
    public static extern bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);
    
    /// Check collision between two circles
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CheckCollisionCircles")]
    public static extern bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);
    
    /// Check collision between circle and rectangle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CheckCollisionCircleRec")]
    public static extern bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec);
    
    /// Check if point is inside rectangle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CheckCollisionPointRec")]
    public static extern bool CheckCollisionPointRec(Vector2 point, Rectangle rec);
    
    /// Check if point is inside circle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CheckCollisionPointCircle")]
    public static extern bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);
    
    /// Check if point is inside a triangle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CheckCollisionPointTriangle")]
    public static extern bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);
    
    /// Check if point is within a polygon described by array of vertices
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CheckCollisionPointPoly")]
    public static extern bool CheckCollisionPointPoly(Vector2 point, Vector2 * points, int pointCount);
    
    /// Check the collision between two lines defined by two points each, returns collision point by reference
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CheckCollisionLines")]
    public static extern bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 * collisionPoint);
    
    /// Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CheckCollisionPointLine")]
    public static extern bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int threshold);
    
    /// Get collision rectangle for two rectangles collision
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetCollisionRec")]
    public static extern Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);
    
    /// Load image from file into CPU memory (RAM)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadImage")]
    public static extern Image LoadImage(char8 * fileName);
    
    /// Load image from RAW file data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadImageRaw")]
    public static extern Image LoadImageRaw(char8 * fileName, int width, int height, int format, int headerSize);
    
    /// Load image sequence from file (frames appended to image.data)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadImageAnim")]
    public static extern Image LoadImageAnim(char8 * fileName, int * frames);
    
    /// Load image from memory buffer, fileType refers to extension: i.e. '.png'
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadImageFromMemory")]
    public static extern Image LoadImageFromMemory(char8 * fileType, char8 * fileData, int dataSize);
    
    /// Load image from GPU texture data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadImageFromTexture")]
    public static extern Image LoadImageFromTexture(Texture2D texture);
    
    /// Load image from screen buffer and (screenshot)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadImageFromScreen")]
    public static extern Image LoadImageFromScreen();
    
    /// Check if an image is ready
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsImageReady")]
    public static extern bool IsImageReady(Image image);
    
    /// Unload image from CPU memory (RAM)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadImage")]
    public static extern void UnloadImage(Image image);
    
    /// Export image data to file, returns true on success
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ExportImage")]
    public static extern bool ExportImage(Image image, char8 * fileName);
    
    /// Export image as code file defining an array of bytes, returns true on success
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ExportImageAsCode")]
    public static extern bool ExportImageAsCode(Image image, char8 * fileName);
    
    /// Generate image: plain color
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenImageColor")]
    public static extern Image GenImageColor(int width, int height, Color color);
    
    /// Generate image: vertical gradient
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenImageGradientV")]
    public static extern Image GenImageGradientV(int width, int height, Color top, Color bottom);
    
    /// Generate image: horizontal gradient
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenImageGradientH")]
    public static extern Image GenImageGradientH(int width, int height, Color left, Color right);
    
    /// Generate image: radial gradient
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenImageGradientRadial")]
    public static extern Image GenImageGradientRadial(int width, int height, float density, Color inner, Color outer);
    
    /// Generate image: checked
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenImageChecked")]
    public static extern Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2);
    
    /// Generate image: white noise
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenImageWhiteNoise")]
    public static extern Image GenImageWhiteNoise(int width, int height, float factor);
    
    /// Generate image: perlin noise
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenImagePerlinNoise")]
    public static extern Image GenImagePerlinNoise(int width, int height, int offsetX, int offsetY, float scale);
    
    /// Generate image: cellular algorithm, bigger tileSize means bigger cells
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenImageCellular")]
    public static extern Image GenImageCellular(int width, int height, int tileSize);
    
    /// Generate image: grayscale image from text data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenImageText")]
    public static extern Image GenImageText(int width, int height, char8 * text);
    
    /// Create an image duplicate (useful for transformations)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageCopy")]
    public static extern Image ImageCopy(Image image);
    
    /// Create an image from another image piece
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageFromImage")]
    public static extern Image ImageFromImage(Image image, Rectangle rec);
    
    /// Create an image from text (default font)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageText")]
    public static extern Image ImageText(char8 * text, int fontSize, Color color);
    
    /// Create an image from text (custom sprite font)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageTextEx")]
    public static extern Image ImageTextEx(Font font, char8 * text, float fontSize, float spacing, Color tint);
    
    /// Convert image data to desired format
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageFormat")]
    public static extern void ImageFormat(Image * image, int newFormat);
    
    /// Convert image to POT (power-of-two)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageToPOT")]
    public static extern void ImageToPOT(Image * image, Color fill);
    
    /// Crop an image to a defined rectangle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageCrop")]
    public static extern void ImageCrop(Image * image, Rectangle crop);
    
    /// Crop image depending on alpha value
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageAlphaCrop")]
    public static extern void ImageAlphaCrop(Image * image, float threshold);
    
    /// Clear alpha channel to desired color
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageAlphaClear")]
    public static extern void ImageAlphaClear(Image * image, Color color, float threshold);
    
    /// Apply alpha mask to image
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageAlphaMask")]
    public static extern void ImageAlphaMask(Image * image, Image alphaMask);
    
    /// Premultiply alpha channel
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageAlphaPremultiply")]
    public static extern void ImageAlphaPremultiply(Image * image);
    
    /// Apply Gaussian blur using a box blur approximation
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageBlurGaussian")]
    public static extern void ImageBlurGaussian(Image * image, int blurSize);
    
    /// Resize image (Bicubic scaling algorithm)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageResize")]
    public static extern void ImageResize(Image * image, int newWidth, int newHeight);
    
    /// Resize image (Nearest-Neighbor scaling algorithm)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageResizeNN")]
    public static extern void ImageResizeNN(Image * image, int newWidth, int newHeight);
    
    /// Resize canvas and fill with color
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageResizeCanvas")]
    public static extern void ImageResizeCanvas(Image * image, int newWidth, int newHeight, int offsetX, int offsetY, Color fill);
    
    /// Compute all mipmap levels for a provided image
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageMipmaps")]
    public static extern void ImageMipmaps(Image * image);
    
    /// Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDither")]
    public static extern void ImageDither(Image * image, int rBpp, int gBpp, int bBpp, int aBpp);
    
    /// Flip image vertically
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageFlipVertical")]
    public static extern void ImageFlipVertical(Image * image);
    
    /// Flip image horizontally
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageFlipHorizontal")]
    public static extern void ImageFlipHorizontal(Image * image);
    
    /// Rotate image clockwise 90deg
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageRotateCW")]
    public static extern void ImageRotateCW(Image * image);
    
    /// Rotate image counter-clockwise 90deg
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageRotateCCW")]
    public static extern void ImageRotateCCW(Image * image);
    
    /// Modify image color: tint
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageColorTint")]
    public static extern void ImageColorTint(Image * image, Color color);
    
    /// Modify image color: invert
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageColorInvert")]
    public static extern void ImageColorInvert(Image * image);
    
    /// Modify image color: grayscale
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageColorGrayscale")]
    public static extern void ImageColorGrayscale(Image * image);
    
    /// Modify image color: contrast (-100 to 100)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageColorContrast")]
    public static extern void ImageColorContrast(Image * image, float contrast);
    
    /// Modify image color: brightness (-255 to 255)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageColorBrightness")]
    public static extern void ImageColorBrightness(Image * image, int brightness);
    
    /// Modify image color: replace color
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageColorReplace")]
    public static extern void ImageColorReplace(Image * image, Color color, Color replace);
    
    /// Load color data from image as a Color array (RGBA - 32bit)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadImageColors")]
    public static extern Color * LoadImageColors(Image image);
    
    /// Load colors palette from image as a Color array (RGBA - 32bit)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadImagePalette")]
    public static extern Color * LoadImagePalette(Image image, int maxPaletteSize, int * colorCount);
    
    /// Unload color data loaded with LoadImageColors()
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadImageColors")]
    public static extern void UnloadImageColors(Color * colors);
    
    /// Unload colors palette loaded with LoadImagePalette()
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadImagePalette")]
    public static extern void UnloadImagePalette(Color * colors);
    
    /// Get image alpha border rectangle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetImageAlphaBorder")]
    public static extern Rectangle GetImageAlphaBorder(Image image, float threshold);
    
    /// Get image pixel color at (x, y) position
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetImageColor")]
    public static extern Color GetImageColor(Image image, int x, int y);
    
    /// Clear image background with given color
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageClearBackground")]
    public static extern void ImageClearBackground(Image * dst, Color color);
    
    /// Draw pixel within an image
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDrawPixel")]
    public static extern void ImageDrawPixel(Image * dst, int posX, int posY, Color color);
    
    /// Draw pixel within an image (Vector version)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDrawPixelV")]
    public static extern void ImageDrawPixelV(Image * dst, Vector2 position, Color color);
    
    /// Draw line within an image
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDrawLine")]
    public static extern void ImageDrawLine(Image * dst, int startPosX, int startPosY, int endPosX, int endPosY, Color color);
    
    /// Draw line within an image (Vector version)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDrawLineV")]
    public static extern void ImageDrawLineV(Image * dst, Vector2 start, Vector2 end, Color color);
    
    /// Draw a filled circle within an image
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDrawCircle")]
    public static extern void ImageDrawCircle(Image * dst, int centerX, int centerY, int radius, Color color);
    
    /// Draw a filled circle within an image (Vector version)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDrawCircleV")]
    public static extern void ImageDrawCircleV(Image * dst, Vector2 center, int radius, Color color);
    
    /// Draw circle outline within an image
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDrawCircleLines")]
    public static extern void ImageDrawCircleLines(Image * dst, int centerX, int centerY, int radius, Color color);
    
    /// Draw circle outline within an image (Vector version)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDrawCircleLinesV")]
    public static extern void ImageDrawCircleLinesV(Image * dst, Vector2 center, int radius, Color color);
    
    /// Draw rectangle within an image
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDrawRectangle")]
    public static extern void ImageDrawRectangle(Image * dst, int posX, int posY, int width, int height, Color color);
    
    /// Draw rectangle within an image (Vector version)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDrawRectangleV")]
    public static extern void ImageDrawRectangleV(Image * dst, Vector2 position, Vector2 size, Color color);
    
    /// Draw rectangle within an image
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDrawRectangleRec")]
    public static extern void ImageDrawRectangleRec(Image * dst, Rectangle rec, Color color);
    
    /// Draw rectangle lines within an image
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDrawRectangleLines")]
    public static extern void ImageDrawRectangleLines(Image * dst, Rectangle rec, int thick, Color color);
    
    /// Draw a source image within a destination image (tint applied to source)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDraw")]
    public static extern void ImageDraw(Image * dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint);
    
    /// Draw text (using default font) within an image (destination)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDrawText")]
    public static extern void ImageDrawText(Image * dst, char8 * text, int posX, int posY, int fontSize, Color color);
    
    /// Draw text (custom sprite font) within an image (destination)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ImageDrawTextEx")]
    public static extern void ImageDrawTextEx(Image * dst, Font font, char8 * text, Vector2 position, float fontSize, float spacing, Color tint);
    
    /// Load texture from file into GPU memory (VRAM)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadTexture")]
    public static extern Texture2D LoadTexture(char8 * fileName);
    
    /// Load texture from image data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadTextureFromImage")]
    public static extern Texture2D LoadTextureFromImage(Image image);
    
    /// Load cubemap from image, multiple image cubemap layouts supported
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadTextureCubemap")]
    public static extern TextureCubemap LoadTextureCubemap(Image image, int layout);
    
    /// Load texture for rendering (framebuffer)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadRenderTexture")]
    public static extern RenderTexture2D LoadRenderTexture(int width, int height);
    
    /// Check if a texture is ready
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsTextureReady")]
    public static extern bool IsTextureReady(Texture2D texture);
    
    /// Unload texture from GPU memory (VRAM)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadTexture")]
    public static extern void UnloadTexture(Texture2D texture);
    
    /// Check if a render texture is ready
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsRenderTextureReady")]
    public static extern bool IsRenderTextureReady(RenderTexture2D target);
    
    /// Unload render texture from GPU memory (VRAM)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadRenderTexture")]
    public static extern void UnloadRenderTexture(RenderTexture2D target);
    
    /// Update GPU texture with new data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UpdateTexture")]
    public static extern void UpdateTexture(Texture2D texture, void * pixels);
    
    /// Update GPU texture rectangle with new data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UpdateTextureRec")]
    public static extern void UpdateTextureRec(Texture2D texture, Rectangle rec, void * pixels);
    
    /// Generate GPU mipmaps for a texture
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenTextureMipmaps")]
    public static extern void GenTextureMipmaps(Texture2D * texture);
    
    /// Set texture scaling filter mode
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetTextureFilter")]
    public static extern void SetTextureFilter(Texture2D texture, int filter);
    
    /// Set texture wrapping mode
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetTextureWrap")]
    public static extern void SetTextureWrap(Texture2D texture, int wrap);
    
    /// Draw a Texture2D
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTexture")]
    public static extern void DrawTexture(Texture2D texture, int posX, int posY, Color tint);
    
    /// Draw a Texture2D with position defined as Vector2
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTextureV")]
    public static extern void DrawTextureV(Texture2D texture, Vector2 position, Color tint);
    
    /// Draw a Texture2D with extended parameters
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTextureEx")]
    public static extern void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);
    
    /// Draw a part of a texture defined by a rectangle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTextureRec")]
    public static extern void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint);
    
    /// Draw a part of a texture defined by a rectangle with 'pro' parameters
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTexturePro")]
    public static extern void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint);
    
    /// Draws a texture (or part of it) that stretches or shrinks nicely
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTextureNPatch")]
    public static extern void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint);
    
    /// Get color with alpha applied, alpha goes from 0.0f to 1.0f
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Fade")]
    public static extern Color Fade(Color color, float alpha);
    
    /// Get hexadecimal value for a Color
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ColorToInt")]
    public static extern int ColorToInt(Color color);
    
    /// Get Color normalized as float [0..1]
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ColorNormalize")]
    public static extern Vector4 ColorNormalize(Color color);
    
    /// Get Color from normalized values [0..1]
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ColorFromNormalized")]
    public static extern Color ColorFromNormalized(Vector4 normalized);
    
    /// Get HSV values for a Color, hue [0..360], saturation/value [0..1]
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ColorToHSV")]
    public static extern Vector3 ColorToHSV(Color color);
    
    /// Get a Color from HSV values, hue [0..360], saturation/value [0..1]
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ColorFromHSV")]
    public static extern Color ColorFromHSV(float hue, float saturation, float value);
    
    /// Get color multiplied with another color
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ColorTint")]
    public static extern Color ColorTint(Color color, Color tint);
    
    /// Get color with brightness correction, brightness factor goes from -1.0f to 1.0f
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ColorBrightness")]
    public static extern Color ColorBrightness(Color color, float factor);
    
    /// Get color with contrast correction, contrast values between -1.0f and 1.0f
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ColorContrast")]
    public static extern Color ColorContrast(Color color, float contrast);
    
    /// Get color with alpha applied, alpha goes from 0.0f to 1.0f
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ColorAlpha")]
    public static extern Color ColorAlpha(Color color, float alpha);
    
    /// Get src alpha-blended into dst color with tint
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ColorAlphaBlend")]
    public static extern Color ColorAlphaBlend(Color dst, Color src, Color tint);
    
    /// Get Color structure from hexadecimal value
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetColor")]
    public static extern Color GetColor(int hexValue);
    
    /// Get Color from a source pixel pointer of certain format
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetPixelColor")]
    public static extern Color GetPixelColor(void * srcPtr, int format);
    
    /// Set color formatted into destination pixel pointer
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetPixelColor")]
    public static extern void SetPixelColor(void * dstPtr, Color color, int format);
    
    /// Get pixel data size in bytes for certain format
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetPixelDataSize")]
    public static extern int GetPixelDataSize(int width, int height, int format);
    
    /// Get the default Font
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetFontDefault")]
    public static extern Font GetFontDefault();
    
    /// Load font from file into GPU memory (VRAM)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadFont")]
    public static extern Font LoadFont(char8 * fileName);
    
    /// Load font from file with extended parameters, use NULL for fontChars and 0 for glyphCount to load the default character set
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadFontEx")]
    public static extern Font LoadFontEx(char8 * fileName, int fontSize, int * fontChars, int glyphCount);
    
    /// Load font from Image (XNA style)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadFontFromImage")]
    public static extern Font LoadFontFromImage(Image image, Color key, int firstChar);
    
    /// Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadFontFromMemory")]
    public static extern Font LoadFontFromMemory(char8 * fileType, char8 * fileData, int dataSize, int fontSize, int * fontChars, int glyphCount);
    
    /// Check if a font is ready
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsFontReady")]
    public static extern bool IsFontReady(Font font);
    
    /// Load font data for further use
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadFontData")]
    public static extern GlyphInfo * LoadFontData(char8 * fileData, int dataSize, int fontSize, int * fontChars, int glyphCount, int type);
    
    /// Generate image font atlas using chars info
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenImageFontAtlas")]
    public static extern Image GenImageFontAtlas(GlyphInfo * chars, Rectangle ** recs, int glyphCount, int fontSize, int padding, int packMethod);
    
    /// Unload font chars info data (RAM)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadFontData")]
    public static extern void UnloadFontData(GlyphInfo * chars, int glyphCount);
    
    /// Unload font from GPU memory (VRAM)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadFont")]
    public static extern void UnloadFont(Font font);
    
    /// Export font as code file, returns true on success
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ExportFontAsCode")]
    public static extern bool ExportFontAsCode(Font font, char8 * fileName);
    
    /// Draw current FPS
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawFPS")]
    public static extern void DrawFPS(int posX, int posY);
    
    /// Draw text (using default font)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawText")]
    public static extern void DrawText(char8 * text, int posX, int posY, int fontSize, Color color);
    
    /// Draw text using font and additional parameters
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTextEx")]
    public static extern void DrawTextEx(Font font, char8 * text, Vector2 position, float fontSize, float spacing, Color tint);
    
    /// Draw text using Font and pro parameters (rotation)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTextPro")]
    public static extern void DrawTextPro(Font font, char8 * text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint);
    
    /// Draw one character (codepoint)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTextCodepoint")]
    public static extern void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint);
    
    /// Draw multiple character (codepoint)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTextCodepoints")]
    public static extern void DrawTextCodepoints(Font font, int * codepoints, int count, Vector2 position, float fontSize, float spacing, Color tint);
    
    /// Measure string width for default font
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MeasureText")]
    public static extern int MeasureText(char8 * text, int fontSize);
    
    /// Measure string size for Font
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MeasureTextEx")]
    public static extern Vector2 MeasureTextEx(Font font, char8 * text, float fontSize, float spacing);
    
    /// Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetGlyphIndex")]
    public static extern int GetGlyphIndex(Font font, int codepoint);
    
    /// Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetGlyphInfo")]
    public static extern GlyphInfo GetGlyphInfo(Font font, int codepoint);
    
    /// Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetGlyphAtlasRec")]
    public static extern Rectangle GetGlyphAtlasRec(Font font, int codepoint);
    
    /// Load UTF-8 text encoded from codepoints array
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadUTF8")]
    public static extern char8 * LoadUTF8(int * codepoints, int length);
    
    /// Unload UTF-8 text encoded from codepoints array
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadUTF8")]
    public static extern void UnloadUTF8(char8 * text);
    
    /// Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadCodepoints")]
    public static extern int * LoadCodepoints(char8 * text, int * count);
    
    /// Unload codepoints data from memory
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadCodepoints")]
    public static extern void UnloadCodepoints(int * codepoints);
    
    /// Get total number of codepoints in a UTF-8 encoded string
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetCodepointCount")]
    public static extern int GetCodepointCount(char8 * text);
    
    /// Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetCodepoint")]
    public static extern int GetCodepoint(char8 * text, int * codepointSize);
    
    /// Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetCodepointNext")]
    public static extern int GetCodepointNext(char8 * text, int * codepointSize);
    
    /// Get previous codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetCodepointPrevious")]
    public static extern int GetCodepointPrevious(char8 * text, int * codepointSize);
    
    /// Encode one codepoint into UTF-8 byte array (array length returned as parameter)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CodepointToUTF8")]
    public static extern char8 * CodepointToUTF8(int codepoint, int * utf8Size);
    
    /// Copy one string to another, returns bytes copied
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextCopy")]
    public static extern int TextCopy(char8 * dst, char8 * src);
    
    /// Check if two text string are equal
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextIsEqual")]
    public static extern bool TextIsEqual(char8 * text1, char8 * text2);
    
    /// Get text length, checks for '\0' ending
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextLength")]
    public static extern int TextLength(char8 * text);
    
    /// Text formatting with variables (sprintf() style)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextFormat")]
    public static extern char8 * TextFormat(char8 * text);
    
    /// Get a piece of a text string
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextSubtext")]
    public static extern char8 * TextSubtext(char8 * text, int position, int length);
    
    /// Replace text string (WARNING: memory must be freed!)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextReplace")]
    public static extern char8 * TextReplace(char8 * text, char8 * replace, char8 * by);
    
    /// Insert text in a position (WARNING: memory must be freed!)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextInsert")]
    public static extern char8 * TextInsert(char8 * text, char8 * insert, int position);
    
    /// Join text strings with delimiter
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextJoin")]
    public static extern char8 * TextJoin(char8 ** textList, int count, char8 * delimiter);
    
    /// Split text into multiple strings
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextSplit")]
    public static extern char8 ** TextSplit(char8 * text, char8 delimiter, int * count);
    
    /// Append text at specific position and move cursor!
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextAppend")]
    public static extern void TextAppend(char8 * text, char8 * @append, int * position);
    
    /// Find first text occurrence within a string
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextFindIndex")]
    public static extern int TextFindIndex(char8 * text, char8 * find);
    
    /// Get upper case version of provided string
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextToUpper")]
    public static extern char8 * TextToUpper(char8 * text);
    
    /// Get lower case version of provided string
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextToLower")]
    public static extern char8 * TextToLower(char8 * text);
    
    /// Get Pascal case notation version of provided string
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextToPascal")]
    public static extern char8 * TextToPascal(char8 * text);
    
    /// Get integer value from text (negative values not supported)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("TextToInteger")]
    public static extern int TextToInteger(char8 * text);
    
    /// Draw a line in 3D world space
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawLine3D")]
    public static extern void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color);
    
    /// Draw a point in 3D space, actually a small line
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawPoint3D")]
    public static extern void DrawPoint3D(Vector3 position, Color color);
    
    /// Draw a circle in 3D world space
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCircle3D")]
    public static extern void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color);
    
    /// Draw a color-filled triangle (vertex in counter-clockwise order!)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTriangle3D")]
    public static extern void DrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color);
    
    /// Draw a triangle strip defined by points
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawTriangleStrip3D")]
    public static extern void DrawTriangleStrip3D(Vector3 * points, int pointCount, Color color);
    
    /// Draw cube
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCube")]
    public static extern void DrawCube(Vector3 position, float width, float height, float length, Color color);
    
    /// Draw cube (Vector version)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCubeV")]
    public static extern void DrawCubeV(Vector3 position, Vector3 size, Color color);
    
    /// Draw cube wires
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCubeWires")]
    public static extern void DrawCubeWires(Vector3 position, float width, float height, float length, Color color);
    
    /// Draw cube wires (Vector version)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCubeWiresV")]
    public static extern void DrawCubeWiresV(Vector3 position, Vector3 size, Color color);
    
    /// Draw sphere
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawSphere")]
    public static extern void DrawSphere(Vector3 centerPos, float radius, Color color);
    
    /// Draw sphere with extended parameters
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawSphereEx")]
    public static extern void DrawSphereEx(Vector3 centerPos, float radius, int rings, int slices, Color color);
    
    /// Draw sphere wires
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawSphereWires")]
    public static extern void DrawSphereWires(Vector3 centerPos, float radius, int rings, int slices, Color color);
    
    /// Draw a cylinder/cone
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCylinder")]
    public static extern void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);
    
    /// Draw a cylinder with base at startPos and top at endPos
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCylinderEx")]
    public static extern void DrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);
    
    /// Draw a cylinder/cone wires
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCylinderWires")]
    public static extern void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);
    
    /// Draw a cylinder wires with base at startPos and top at endPos
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCylinderWiresEx")]
    public static extern void DrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);
    
    /// Draw a capsule with the center of its sphere caps at startPos and endPos
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCapsule")]
    public static extern void DrawCapsule(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color);
    
    /// Draw capsule wireframe with the center of its sphere caps at startPos and endPos
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawCapsuleWires")]
    public static extern void DrawCapsuleWires(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color);
    
    /// Draw a plane XZ
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawPlane")]
    public static extern void DrawPlane(Vector3 centerPos, Vector2 size, Color color);
    
    /// Draw a ray line
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawRay")]
    public static extern void DrawRay(Ray ray, Color color);
    
    /// Draw a grid (centered at (0, 0, 0))
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawGrid")]
    public static extern void DrawGrid(int slices, float spacing);
    
    /// Load model from files (meshes and materials)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadModel")]
    public static extern Model LoadModel(char8 * fileName);
    
    /// Load model from generated mesh (default material)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadModelFromMesh")]
    public static extern Model LoadModelFromMesh(Mesh mesh);
    
    /// Check if a model is ready
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsModelReady")]
    public static extern bool IsModelReady(Model model);
    
    /// Unload model (including meshes) from memory (RAM and/or VRAM)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadModel")]
    public static extern void UnloadModel(Model model);
    
    /// Compute model bounding box limits (considers all meshes)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetModelBoundingBox")]
    public static extern BoundingBox GetModelBoundingBox(Model model);
    
    /// Draw a model (with texture if set)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawModel")]
    public static extern void DrawModel(Model model, Vector3 position, float scale, Color tint);
    
    /// Draw a model with extended parameters
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawModelEx")]
    public static extern void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);
    
    /// Draw a model wires (with texture if set)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawModelWires")]
    public static extern void DrawModelWires(Model model, Vector3 position, float scale, Color tint);
    
    /// Draw a model wires (with texture if set) with extended parameters
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawModelWiresEx")]
    public static extern void DrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);
    
    /// Draw bounding box (wires)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawBoundingBox")]
    public static extern void DrawBoundingBox(BoundingBox @box, Color color);
    
    /// Draw a billboard texture
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawBillboard")]
    public static extern void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float size, Color tint);
    
    /// Draw a billboard texture defined by source
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawBillboardRec")]
    public static extern void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint);
    
    /// Draw a billboard texture defined by source and rotation
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawBillboardPro")]
    public static extern void DrawBillboardPro(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint);
    
    /// Upload mesh vertex data in GPU and provide VAO/VBO ids
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UploadMesh")]
    public static extern void UploadMesh(Mesh * mesh, bool dynamic);
    
    /// Update mesh vertex data in GPU for a specific buffer index
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UpdateMeshBuffer")]
    public static extern void UpdateMeshBuffer(Mesh mesh, int index, void * data, int dataSize, int offset);
    
    /// Unload mesh data from CPU and GPU
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadMesh")]
    public static extern void UnloadMesh(Mesh mesh);
    
    /// Draw a 3d mesh with material and transform
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawMesh")]
    public static extern void DrawMesh(Mesh mesh, Material material, Matrix transform);
    
    /// Draw multiple mesh instances with material and different transforms
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DrawMeshInstanced")]
    public static extern void DrawMeshInstanced(Mesh mesh, Material material, Matrix * transforms, int instances);
    
    /// Export mesh data to file, returns true on success
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ExportMesh")]
    public static extern bool ExportMesh(Mesh mesh, char8 * fileName);
    
    /// Compute mesh bounding box limits
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMeshBoundingBox")]
    public static extern BoundingBox GetMeshBoundingBox(Mesh mesh);
    
    /// Compute mesh tangents
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenMeshTangents")]
    public static extern void GenMeshTangents(Mesh * mesh);
    
    /// Generate polygonal mesh
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenMeshPoly")]
    public static extern Mesh GenMeshPoly(int sides, float radius);
    
    /// Generate plane mesh (with subdivisions)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenMeshPlane")]
    public static extern Mesh GenMeshPlane(float width, float length, int resX, int resZ);
    
    /// Generate cuboid mesh
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenMeshCube")]
    public static extern Mesh GenMeshCube(float width, float height, float length);
    
    /// Generate sphere mesh (standard sphere)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenMeshSphere")]
    public static extern Mesh GenMeshSphere(float radius, int rings, int slices);
    
    /// Generate half-sphere mesh (no bottom cap)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenMeshHemiSphere")]
    public static extern Mesh GenMeshHemiSphere(float radius, int rings, int slices);
    
    /// Generate cylinder mesh
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenMeshCylinder")]
    public static extern Mesh GenMeshCylinder(float radius, float height, int slices);
    
    /// Generate cone/pyramid mesh
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenMeshCone")]
    public static extern Mesh GenMeshCone(float radius, float height, int slices);
    
    /// Generate torus mesh
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenMeshTorus")]
    public static extern Mesh GenMeshTorus(float radius, float size, int radSeg, int sides);
    
    /// Generate trefoil knot mesh
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenMeshKnot")]
    public static extern Mesh GenMeshKnot(float radius, float size, int radSeg, int sides);
    
    /// Generate heightmap mesh from image data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenMeshHeightmap")]
    public static extern Mesh GenMeshHeightmap(Image heightmap, Vector3 size);
    
    /// Generate cubes-based map mesh from image data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GenMeshCubicmap")]
    public static extern Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize);
    
    /// Load materials from model file
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadMaterials")]
    public static extern Material * LoadMaterials(char8 * fileName, int * materialCount);
    
    /// Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadMaterialDefault")]
    public static extern Material LoadMaterialDefault();
    
    /// Check if a material is ready
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsMaterialReady")]
    public static extern bool IsMaterialReady(Material material);
    
    /// Unload material from GPU memory (VRAM)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadMaterial")]
    public static extern void UnloadMaterial(Material material);
    
    /// Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetMaterialTexture")]
    public static extern void SetMaterialTexture(Material * material, int mapType, Texture2D texture);
    
    /// Set material for a mesh
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetModelMeshMaterial")]
    public static extern void SetModelMeshMaterial(Model * model, int meshId, int materialId);
    
    /// Load model animations from file
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadModelAnimations")]
    public static extern ModelAnimation * LoadModelAnimations(char8 * fileName, int * animCount);
    
    /// Update model animation pose
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UpdateModelAnimation")]
    public static extern void UpdateModelAnimation(Model model, ModelAnimation anim, int frame);
    
    /// Unload animation data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadModelAnimation")]
    public static extern void UnloadModelAnimation(ModelAnimation anim);
    
    /// Unload animation array data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadModelAnimations")]
    public static extern void UnloadModelAnimations(ModelAnimation * animations, int count);
    
    /// Check model animation skeleton match
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsModelAnimationValid")]
    public static extern bool IsModelAnimationValid(Model model, ModelAnimation anim);
    
    /// Check collision between two spheres
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CheckCollisionSpheres")]
    public static extern bool CheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2);
    
    /// Check collision between two bounding boxes
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CheckCollisionBoxes")]
    public static extern bool CheckCollisionBoxes(BoundingBox box1, BoundingBox box2);
    
    /// Check collision between box and sphere
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CheckCollisionBoxSphere")]
    public static extern bool CheckCollisionBoxSphere(BoundingBox @box, Vector3 center, float radius);
    
    /// Get collision info between ray and sphere
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetRayCollisionSphere")]
    public static extern RayCollision GetRayCollisionSphere(Ray ray, Vector3 center, float radius);
    
    /// Get collision info between ray and box
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetRayCollisionBox")]
    public static extern RayCollision GetRayCollisionBox(Ray ray, BoundingBox @box);
    
    /// Get collision info between ray and mesh
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetRayCollisionMesh")]
    public static extern RayCollision GetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform);
    
    /// Get collision info between ray and triangle
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetRayCollisionTriangle")]
    public static extern RayCollision GetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3);
    
    /// Get collision info between ray and quad
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetRayCollisionQuad")]
    public static extern RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4);
    
    /// Initialize audio device and context
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("InitAudioDevice")]
    public static extern void InitAudioDevice();
    
    /// Close the audio device and context
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("CloseAudioDevice")]
    public static extern void CloseAudioDevice();
    
    /// Check if audio device has been initialized successfully
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsAudioDeviceReady")]
    public static extern bool IsAudioDeviceReady();
    
    /// Set master volume (listener)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetMasterVolume")]
    public static extern void SetMasterVolume(float volume);
    
    /// Load wave data from file
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadWave")]
    public static extern Wave LoadWave(char8 * fileName);
    
    /// Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadWaveFromMemory")]
    public static extern Wave LoadWaveFromMemory(char8 * fileType, char8 * fileData, int dataSize);
    
    /// Checks if wave data is ready
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsWaveReady")]
    public static extern bool IsWaveReady(Wave wave);
    
    /// Load sound from file
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadSound")]
    public static extern Sound LoadSound(char8 * fileName);
    
    /// Load sound from wave data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadSoundFromWave")]
    public static extern Sound LoadSoundFromWave(Wave wave);
    
    /// Checks if a sound is ready
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsSoundReady")]
    public static extern bool IsSoundReady(Sound sound);
    
    /// Update sound buffer with new data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UpdateSound")]
    public static extern void UpdateSound(Sound sound, void * data, int sampleCount);
    
    /// Unload wave data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadWave")]
    public static extern void UnloadWave(Wave wave);
    
    /// Unload sound
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadSound")]
    public static extern void UnloadSound(Sound sound);
    
    /// Export wave data to file, returns true on success
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ExportWave")]
    public static extern bool ExportWave(Wave wave, char8 * fileName);
    
    /// Export wave sample data to code (.h), returns true on success
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ExportWaveAsCode")]
    public static extern bool ExportWaveAsCode(Wave wave, char8 * fileName);
    
    /// Play a sound
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("PlaySound")]
    public static extern void PlaySound(Sound sound);
    
    /// Stop playing a sound
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("StopSound")]
    public static extern void StopSound(Sound sound);
    
    /// Pause a sound
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("PauseSound")]
    public static extern void PauseSound(Sound sound);
    
    /// Resume a paused sound
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ResumeSound")]
    public static extern void ResumeSound(Sound sound);
    
    /// Check if a sound is currently playing
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsSoundPlaying")]
    public static extern bool IsSoundPlaying(Sound sound);
    
    /// Set volume for a sound (1.0 is max level)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetSoundVolume")]
    public static extern void SetSoundVolume(Sound sound, float volume);
    
    /// Set pitch for a sound (1.0 is base level)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetSoundPitch")]
    public static extern void SetSoundPitch(Sound sound, float pitch);
    
    /// Set pan for a sound (0.5 is center)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetSoundPan")]
    public static extern void SetSoundPan(Sound sound, float pan);
    
    /// Copy a wave to a new wave
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("WaveCopy")]
    public static extern Wave WaveCopy(Wave wave);
    
    /// Crop a wave to defined samples range
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("WaveCrop")]
    public static extern void WaveCrop(Wave * wave, int initSample, int finalSample);
    
    /// Convert wave data to desired format
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("WaveFormat")]
    public static extern void WaveFormat(Wave * wave, int sampleRate, int sampleSize, int channels);
    
    /// Load samples data from wave as a 32bit float data array
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadWaveSamples")]
    public static extern float * LoadWaveSamples(Wave wave);
    
    /// Unload samples data loaded with LoadWaveSamples()
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadWaveSamples")]
    public static extern void UnloadWaveSamples(float * samples);
    
    /// Load music stream from file
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadMusicStream")]
    public static extern Music LoadMusicStream(char8 * fileName);
    
    /// Load music stream from data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadMusicStreamFromMemory")]
    public static extern Music LoadMusicStreamFromMemory(char8 * fileType, char8 * data, int dataSize);
    
    /// Checks if a music stream is ready
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsMusicReady")]
    public static extern bool IsMusicReady(Music music);
    
    /// Unload music stream
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadMusicStream")]
    public static extern void UnloadMusicStream(Music music);
    
    /// Start music playing
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("PlayMusicStream")]
    public static extern void PlayMusicStream(Music music);
    
    /// Check if music is playing
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsMusicStreamPlaying")]
    public static extern bool IsMusicStreamPlaying(Music music);
    
    /// Updates buffers for music streaming
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UpdateMusicStream")]
    public static extern void UpdateMusicStream(Music music);
    
    /// Stop music playing
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("StopMusicStream")]
    public static extern void StopMusicStream(Music music);
    
    /// Pause music playing
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("PauseMusicStream")]
    public static extern void PauseMusicStream(Music music);
    
    /// Resume playing paused music
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ResumeMusicStream")]
    public static extern void ResumeMusicStream(Music music);
    
    /// Seek music to a position (in seconds)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SeekMusicStream")]
    public static extern void SeekMusicStream(Music music, float position);
    
    /// Set volume for music (1.0 is max level)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetMusicVolume")]
    public static extern void SetMusicVolume(Music music, float volume);
    
    /// Set pitch for a music (1.0 is base level)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetMusicPitch")]
    public static extern void SetMusicPitch(Music music, float pitch);
    
    /// Set pan for a music (0.5 is center)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetMusicPan")]
    public static extern void SetMusicPan(Music music, float pan);
    
    /// Get music time length (in seconds)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMusicTimeLength")]
    public static extern float GetMusicTimeLength(Music music);
    
    /// Get current music time played (in seconds)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("GetMusicTimePlayed")]
    public static extern float GetMusicTimePlayed(Music music);
    
    /// Load audio stream (to stream raw audio pcm data)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("LoadAudioStream")]
    public static extern AudioStream LoadAudioStream(int sampleRate, int sampleSize, int channels);
    
    /// Checks if an audio stream is ready
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsAudioStreamReady")]
    public static extern bool IsAudioStreamReady(AudioStream stream);
    
    /// Unload audio stream and free memory
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UnloadAudioStream")]
    public static extern void UnloadAudioStream(AudioStream stream);
    
    /// Update audio stream buffers with data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("UpdateAudioStream")]
    public static extern void UpdateAudioStream(AudioStream stream, void * data, int frameCount);
    
    /// Check if any audio stream buffers requires refill
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsAudioStreamProcessed")]
    public static extern bool IsAudioStreamProcessed(AudioStream stream);
    
    /// Play audio stream
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("PlayAudioStream")]
    public static extern void PlayAudioStream(AudioStream stream);
    
    /// Pause audio stream
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("PauseAudioStream")]
    public static extern void PauseAudioStream(AudioStream stream);
    
    /// Resume audio stream
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("ResumeAudioStream")]
    public static extern void ResumeAudioStream(AudioStream stream);
    
    /// Check if audio stream is playing
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("IsAudioStreamPlaying")]
    public static extern bool IsAudioStreamPlaying(AudioStream stream);
    
    /// Stop audio stream
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("StopAudioStream")]
    public static extern void StopAudioStream(AudioStream stream);
    
    /// Set volume for audio stream (1.0 is max level)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetAudioStreamVolume")]
    public static extern void SetAudioStreamVolume(AudioStream stream, float volume);
    
    /// Set pitch for audio stream (1.0 is base level)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetAudioStreamPitch")]
    public static extern void SetAudioStreamPitch(AudioStream stream, float pitch);
    
    /// Set pan for audio stream (0.5 is centered)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetAudioStreamPan")]
    public static extern void SetAudioStreamPan(AudioStream stream, float pan);
    
    /// Default size for new audio streams
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetAudioStreamBufferSizeDefault")]
    public static extern void SetAudioStreamBufferSizeDefault(int size);
    
    /// Audio thread callback to request new data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("SetAudioStreamCallback")]
    public static extern void SetAudioStreamCallback(AudioStream stream, AudioCallback callback);
    
    /// Attach audio stream processor to stream
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("AttachAudioStreamProcessor")]
    public static extern void AttachAudioStreamProcessor(AudioStream stream, AudioCallback processor);
    
    /// Detach audio stream processor from stream
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DetachAudioStreamProcessor")]
    public static extern void DetachAudioStreamProcessor(AudioStream stream, AudioCallback processor);
    
    /// Attach audio stream processor to the entire audio pipeline
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("AttachAudioMixedProcessor")]
    public static extern void AttachAudioMixedProcessor(AudioCallback processor);
    
    /// Detach audio stream processor from the entire audio pipeline
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("DetachAudioMixedProcessor")]
    public static extern void DetachAudioMixedProcessor(AudioCallback processor);
    
    
    /// Logging: Redirect trace log messages
    public function void TraceLogCallback(int logLevel, char8 * text, void* args);
    
    /// FileIO: Load binary data
    public function char8 * LoadFileDataCallback(char8 * fileName, int * bytesRead);
    
    /// FileIO: Save binary data
    public function bool SaveFileDataCallback(char8 * fileName, void * data, int bytesToWrite);
    
    /// FileIO: Load text data
    public function char8 * LoadFileTextCallback(char8 * fileName);
    
    /// FileIO: Save text data
    public function bool SaveFileTextCallback(char8 * fileName, char8 * text);
    
    public function void AudioCallback(void * bufferData, int frames);
    
}
