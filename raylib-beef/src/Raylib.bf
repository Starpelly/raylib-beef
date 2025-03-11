using System;
using System.Interop;

namespace RaylibBeef;

public static class Raylib
{
	public const int32 RAYLIB_VERSION_MAJOR = 5;
	
	public const int32 RAYLIB_VERSION_MINOR = 5;
	
	public const int32 RAYLIB_VERSION_PATCH = 0;
	
	public const char8* RAYLIB_VERSION = "5.5";
	
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
	[CLink]
	public static extern void InitWindow(int32 width, int32 height, char8 *title);
	
	/// Close window and unload OpenGL context
	[CLink]
	public static extern void CloseWindow();
	
	/// Check if application should close (KEY_ESCAPE pressed or windows close icon clicked)
	[CLink]
	public static extern bool WindowShouldClose();
	
	/// Check if window has been initialized successfully
	[CLink]
	public static extern bool IsWindowReady();
	
	/// Check if window is currently fullscreen
	[CLink]
	public static extern bool IsWindowFullscreen();
	
	/// Check if window is currently hidden
	[CLink]
	public static extern bool IsWindowHidden();
	
	/// Check if window is currently minimized
	[CLink]
	public static extern bool IsWindowMinimized();
	
	/// Check if window is currently maximized
	[CLink]
	public static extern bool IsWindowMaximized();
	
	/// Check if window is currently focused
	[CLink]
	public static extern bool IsWindowFocused();
	
	/// Check if window has been resized last frame
	[CLink]
	public static extern bool IsWindowResized();
	
	/// Check if one specific window flag is enabled
	[CLink]
	public static extern bool IsWindowState(int32 flag);
	public static bool IsWindowState(ConfigFlags flag) => IsWindowState((int32)flag);
	
	/// Set window configuration state using flags
	[CLink]
	public static extern void SetWindowState(int32 flags);
	public static void SetWindowState(ConfigFlags flag) => SetWindowState((int32)flag);
	
	/// Clear window configuration state flags
	[CLink]
	public static extern void ClearWindowState(int32 flags);
	public static void ClearWindowState(ConfigFlags flag) => ClearWindowState((int32)flag);
	
	/// Toggle window state: fullscreen/windowed, resizes monitor to match window resolution
	[CLink]
	public static extern void ToggleFullscreen();
	
	/// Toggle window state: borderless windowed, resizes window to match monitor resolution
	[CLink]
	public static extern void ToggleBorderlessWindowed();
	
	/// Set window state: maximized, if resizable
	[CLink]
	public static extern void MaximizeWindow();
	
	/// Set window state: minimized, if resizable
	[CLink]
	public static extern void MinimizeWindow();
	
	/// Set window state: not minimized/maximized
	[CLink]
	public static extern void RestoreWindow();
	
	/// Set icon for window (multiple images, RGBA 32bit)
	[CLink]
	public static extern void SetWindowIcons(Image *images, int32 count);
	
	/// Set title for window
	[CLink]
	public static extern void SetWindowTitle(char8 *title);
	
	/// Set window position on screen
	[CLink]
	public static extern void SetWindowPosition(int32 x, int32 y);
	
	/// Set monitor for the current window
	[CLink]
	public static extern void SetWindowMonitor(int32 monitor);
	
	/// Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
	[CLink]
	public static extern void SetWindowMinSize(int32 width, int32 height);
	
	/// Set window maximum dimensions (for FLAG_WINDOW_RESIZABLE)
	[CLink]
	public static extern void SetWindowMaxSize(int32 width, int32 height);
	
	/// Set window dimensions
	[CLink]
	public static extern void SetWindowSize(int32 width, int32 height);
	
	/// Set window opacity [0.0f..1.0f]
	[CLink]
	public static extern void SetWindowOpacity(float opacity);
	
	/// Set window focused
	[CLink]
	public static extern void SetWindowFocused();
	
	/// Get native window handle
	[CLink]
	public static extern void * GetWindowHandle();
	
	/// Get current screen width
	[CLink]
	public static extern int32 GetScreenWidth();
	
	/// Get current screen height
	[CLink]
	public static extern int32 GetScreenHeight();
	
	/// Get current render width (it considers HiDPI)
	[CLink]
	public static extern int32 GetRenderWidth();
	
	/// Get current render height (it considers HiDPI)
	[CLink]
	public static extern int32 GetRenderHeight();
	
	/// Get number of connected monitors
	[CLink]
	public static extern int32 GetMonitorCount();
	
	/// Get current monitor where window is placed
	[CLink]
	public static extern int32 GetCurrentMonitor();
	
	/// Get specified monitor position
	[CLink]
	public static extern Vector2 GetMonitorPosition(int32 monitor);
	
	/// Get specified monitor width (current video mode used by monitor)
	[CLink]
	public static extern int32 GetMonitorWidth(int32 monitor);
	
	/// Get specified monitor height (current video mode used by monitor)
	[CLink]
	public static extern int32 GetMonitorHeight(int32 monitor);
	
	/// Get specified monitor physical width in millimetres
	[CLink]
	public static extern int32 GetMonitorPhysicalWidth(int32 monitor);
	
	/// Get specified monitor physical height in millimetres
	[CLink]
	public static extern int32 GetMonitorPhysicalHeight(int32 monitor);
	
	/// Get specified monitor refresh rate
	[CLink]
	public static extern int32 GetMonitorRefreshRate(int32 monitor);
	
	/// Get window position XY on monitor
	[CLink]
	public static extern Vector2 GetWindowPosition();
	
	/// Get window scale DPI factor
	[CLink]
	public static extern Vector2 GetWindowScaleDPI();
	
	/// Get the human-readable, UTF-8 encoded name of the specified monitor
	[CLink]
	public static extern char8 * GetMonitorName(int32 monitor);
	
	/// Set clipboard text content
	[CLink]
	public static extern void SetClipboardText(char8 *text);
	
	/// Get clipboard text content
	[CLink]
	public static extern char8 * GetClipboardText();
	
	/// Get clipboard image content
	[CLink]
	public static extern Image GetClipboardImage();
	
	/// Enable waiting for events on EndDrawing(), no automatic event polling
	[CLink]
	public static extern void EnableEventWaiting();
	
	/// Disable waiting for events on EndDrawing(), automatic events polling
	[CLink]
	public static extern void DisableEventWaiting();
	
	/// Shows cursor
	[CLink]
	public static extern void ShowCursor();
	
	/// Hides cursor
	[CLink]
	public static extern void HideCursor();
	
	/// Check if cursor is not visible
	[CLink]
	public static extern bool IsCursorHidden();
	
	/// Enables cursor (unlock cursor)
	[CLink]
	public static extern void EnableCursor();
	
	/// Disables cursor (lock cursor)
	[CLink]
	public static extern void DisableCursor();
	
	/// Check if cursor is on the screen
	[CLink]
	public static extern bool IsCursorOnScreen();
	
	/// Setup canvas (framebuffer) to start drawing
	[CLink]
	public static extern void BeginDrawing();
	
	/// End canvas drawing and swap buffers (double buffering)
	[CLink]
	public static extern void EndDrawing();
	
	/// Ends 2D mode with custom camera
	[CLink]
	public static extern void EndMode2D();
	
	/// Ends 3D mode and returns to default 2D orthographic mode
	[CLink]
	public static extern void EndMode3D();
	
	/// Ends drawing to render texture
	[CLink]
	public static extern void EndTextureMode();
	
	/// End custom shader drawing (use default shader)
	[CLink]
	public static extern void EndShaderMode();
	
	/// Begin blending mode (alpha, additive, multiplied, subtract, custom)
	[CLink]
	public static extern void BeginBlendMode(int32 mode);
	public static void BeginBlendMode(BlendMode mode) => BeginBlendMode((int32)mode);
	
	/// End blending mode (reset to default: alpha blending)
	[CLink]
	public static extern void EndBlendMode();
	
	/// Begin scissor mode (define screen area for following drawing)
	[CLink]
	public static extern void BeginScissorMode(int32 x, int32 y, int32 width, int32 height);
	
	/// End scissor mode
	[CLink]
	public static extern void EndScissorMode();
	
	/// End stereo rendering (requires VR simulator)
	[CLink]
	public static extern void EndVrStereoMode();
	
	/// Load shader from files and bind default locations
	[CLink]
	public static extern Shader LoadShader(char8 *vsFileName, char8 *fsFileName);
	
	/// Load shader from code strings and bind default locations
	[CLink]
	public static extern Shader LoadShaderFromMemory(char8 *vsCode, char8 *fsCode);
	
	/// Set target FPS (maximum)
	[CLink]
	public static extern void SetTargetFPS(int32 fps);
	
	/// Get time in seconds for last frame drawn (delta time)
	[CLink]
	public static extern float GetFrameTime();
	
	/// Get elapsed time in seconds since InitWindow()
	[CLink]
	public static extern double GetTime();
	
	/// Get current FPS
	[CLink]
	public static extern int32 GetFPS();
	
	/// Swap back buffer with front buffer (screen drawing)
	[CLink]
	public static extern void SwapScreenBuffer();
	
	/// Register all input events
	[CLink]
	public static extern void PollInputEvents();
	
	/// Wait for some time (halt program execution)
	[CLink]
	public static extern void WaitTime(double seconds);
	
	/// Set the seed for the random number generator
	[CLink]
	public static extern void SetRandomSeed(int32 seed);
	
	/// Get a random value between min and max (both included)
	[CLink]
	public static extern int32 GetRandomValue(int32 min, int32 max);
	
	/// Load random values sequence, no values repeated
	[CLink]
	public static extern int32 * LoadRandomSequence(int32 count, int32 min, int32 max);
	
	/// Unload random values sequence
	[CLink]
	public static extern void UnloadRandomSequence(int32 *sequence);
	
	/// Takes a screenshot of current screen (filename extension defines format)
	[CLink]
	public static extern void TakeScreenshot(char8 *fileName);
	
	/// Setup init configuration flags (view FLAGS)
	[CLink]
	public static extern void SetConfigFlags(int32 flags);
	public static void SetConfigFlags(ConfigFlags flags) => SetConfigFlags((int32)flags);
	
	/// Open URL with default system browser (if available)
	[CLink]
	public static extern void OpenURL(char8 *url);
	
	/// Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
	[CLink]
	public static extern void TraceLog(int32 logLevel, char8 *text);
	
	/// Set the current threshold (minimum) log level
	[CLink]
	public static extern void SetTraceLogLevel(int32 logLevel);
	public static void SetTraceLogLevel(TraceLogLevel logLevel) => SetTraceLogLevel((int32)logLevel);
	
	/// Internal memory allocator
	[CLink]
	public static extern void * MemAlloc(int32 size);
	
	/// Internal memory reallocator
	[CLink]
	public static extern void * MemRealloc(void *ptr, int32 size);
	
	/// Internal memory free
	[CLink]
	public static extern void MemFree(void *ptr);
	
	/// Set custom trace log
	[CLink]
	public static extern void SetTraceLogCallback(TraceLogCallback callback);
	
	/// Set custom file binary data loader
	[CLink]
	public static extern void SetLoadFileDataCallback(LoadFileDataCallback callback);
	
	/// Set custom file binary data saver
	[CLink]
	public static extern void SetSaveFileDataCallback(SaveFileDataCallback callback);
	
	/// Set custom file text data loader
	[CLink]
	public static extern void SetLoadFileTextCallback(LoadFileTextCallback callback);
	
	/// Set custom file text data saver
	[CLink]
	public static extern void SetSaveFileTextCallback(SaveFileTextCallback callback);
	
	/// Load file data as byte array (read)
	[CLink]
	public static extern char8 * LoadFileData(char8 *fileName, int32 *dataSize);
	
	/// Unload file data allocated by LoadFileData()
	[CLink]
	public static extern void UnloadFileData(char8 *data);
	
	/// Save data to file from byte array (write), returns true on success
	[CLink]
	public static extern bool SaveFileData(char8 *fileName, void *data, int32 dataSize);
	
	/// Export data to code (.h), returns true on success
	[CLink]
	public static extern bool ExportDataAsCode(char8 *data, int32 dataSize, char8 *fileName);
	
	/// Load text data from file (read), returns a '\0' terminated string
	[CLink]
	public static extern char8 * LoadFileText(char8 *fileName);
	
	/// Unload file text data allocated by LoadFileText()
	[CLink]
	public static extern void UnloadFileText(char8 *text);
	
	/// Save text data to file (write), string must be '\0' terminated, returns true on success
	[CLink]
	public static extern bool SaveFileText(char8 *fileName, char8 *text);
	
	/// Check if file exists
	[CLink]
	public static extern bool FileExists(char8 *fileName);
	
	/// Check if a directory path exists
	[CLink]
	public static extern bool DirectoryExists(char8 *dirPath);
	
	/// Check file extension (including point: .png, .wav)
	[CLink]
	public static extern bool IsFileExtension(char8 *fileName, char8 *ext);
	
	/// Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)
	[CLink]
	public static extern int32 GetFileLength(char8 *fileName);
	
	/// Get pointer to extension for a filename string (includes dot: '.png')
	[CLink]
	public static extern char8 * GetFileExtension(char8 *fileName);
	
	/// Get pointer to filename for a path string
	[CLink]
	public static extern char8 * GetFileName(char8 *filePath);
	
	/// Get filename string without extension (uses static string)
	[CLink]
	public static extern char8 * GetFileNameWithoutExt(char8 *filePath);
	
	/// Get full path for a given fileName with path (uses static string)
	[CLink]
	public static extern char8 * GetDirectoryPath(char8 *filePath);
	
	/// Get previous directory path for a given path (uses static string)
	[CLink]
	public static extern char8 * GetPrevDirectoryPath(char8 *dirPath);
	
	/// Get current working directory (uses static string)
	[CLink]
	public static extern char8 * GetWorkingDirectory();
	
	/// Get the directory of the running application (uses static string)
	[CLink]
	public static extern char8 * GetApplicationDirectory();
	
	/// Create directories (including full path requested), returns 0 on success
	[CLink]
	public static extern int32 MakeDirectory(char8 *dirPath);
	
	/// Change working directory, return true on success
	[CLink]
	public static extern bool ChangeDirectory(char8 *dir);
	
	/// Check if a given path is a file or a directory
	[CLink]
	public static extern bool IsPathFile(char8 *path);
	
	/// Check if fileName is valid for the platform/OS
	[CLink]
	public static extern bool IsFileNameValid(char8 *fileName);
	
	/// Load directory filepaths
	[CLink]
	public static extern FilePathList LoadDirectoryFiles(char8 *dirPath);
	
	/// Load directory filepaths with extension filtering and recursive directory scan. Use 'DIR' in the filter string to include directories in the result
	[CLink]
	public static extern FilePathList LoadDirectoryFilesEx(char8 *basePath, char8 *filter, bool scanSubdirs);
	
	/// Check if a file has been dropped into window
	[CLink]
	public static extern bool IsFileDropped();
	
	/// Load dropped filepaths
	[CLink]
	public static extern FilePathList LoadDroppedFiles();
	
	/// Get file modification time (last write time)
	[CLink]
	public static extern int32 GetFileModTime(char8 *fileName);
	
	/// Compress data (DEFLATE algorithm), memory must be MemFree()
	[CLink]
	public static extern char8 * CompressData(char8 *data, int32 dataSize, int32 *compDataSize);
	
	/// Decompress data (DEFLATE algorithm), memory must be MemFree()
	[CLink]
	public static extern char8 * DecompressData(char8 *compData, int32 compDataSize, int32 *dataSize);
	
	/// Encode data to Base64 string, memory must be MemFree()
	[CLink]
	public static extern char8 * EncodeDataBase64(char8 *data, int32 dataSize, int32 *outputSize);
	
	/// Decode Base64 string data, memory must be MemFree()
	[CLink]
	public static extern char8 * DecodeDataBase64(char8 *data, int32 *outputSize);
	
	/// Compute CRC32 hash code
	[CLink]
	public static extern int32 ComputeCRC32(char8 *data, int32 dataSize);
	
	/// Compute MD5 hash code, returns static int[4] (16 bytes)
	[CLink]
	public static extern int32 * ComputeMD5(char8 *data, int32 dataSize);
	
	/// Compute SHA1 hash code, returns static int[5] (20 bytes)
	[CLink]
	public static extern int32 * ComputeSHA1(char8 *data, int32 dataSize);
	
	/// Load automation events list from file, NULL for empty list, capacity = MAX_AUTOMATION_EVENTS
	[CLink]
	public static extern AutomationEventList LoadAutomationEventList(char8 *fileName);
	
	/// Set automation event list to record to
	[CLink]
	public static extern void SetAutomationEventList(AutomationEventList *list);
	
	/// Set automation event internal base frame to start recording
	[CLink]
	public static extern void SetAutomationEventBaseFrame(int32 frame);
	
	/// Start recording automation events (AutomationEventList must be set)
	[CLink]
	public static extern void StartAutomationEventRecording();
	
	/// Stop recording automation events
	[CLink]
	public static extern void StopAutomationEventRecording();
	
	/// Check if a key has been pressed once
	[CLink]
	public static extern bool IsKeyPressed(int32 key);
	public static bool IsKeyPressed(KeyboardKey key) => IsKeyPressed((int32)key);
	
	/// Check if a key has been pressed again
	[CLink]
	public static extern bool IsKeyPressedRepeat(int32 key);
	public static bool IsKeyPressedRepeat(KeyboardKey key) => IsKeyPressedRepeat((int32)key);
	
	/// Check if a key is being pressed
	[CLink]
	public static extern bool IsKeyDown(int32 key);
	public static bool IsKeyDown(KeyboardKey key) => IsKeyDown((int32)key);
	
	/// Check if a key has been released once
	[CLink]
	public static extern bool IsKeyReleased(int32 key);
	public static bool IsKeyReleased(KeyboardKey key) => IsKeyReleased((int32)key);
	
	/// Check if a key is NOT being pressed
	[CLink]
	public static extern bool IsKeyUp(int32 key);
	public static bool IsKeyUp(KeyboardKey key) => IsKeyUp((int32)key);
	
	/// Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
	[CLink]
	public static extern int32 GetKeyPressed();
	
	/// Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
	[CLink]
	public static extern int32 GetCharPressed();
	
	/// Set a custom key to exit program (default is ESC)
	[CLink]
	public static extern void SetExitKey(int32 key);
	public static void SetExitKey(KeyboardKey key) => SetExitKey((int32)key);
	
	/// Check if a gamepad is available
	[CLink]
	public static extern bool IsGamepadAvailable(int32 gamepad);
	
	/// Get gamepad internal name id
	[CLink]
	public static extern char8 * GetGamepadName(int32 gamepad);
	
	/// Check if a gamepad button has been pressed once
	[CLink]
	public static extern bool IsGamepadButtonPressed(int32 gamepad, int32 button);
	public static bool IsGamepadButtonPressed(int32 gamepad, GamepadButton button) => IsGamepadButtonPressed(gamepad, (int32)button);
	
	/// Check if a gamepad button is being pressed
	[CLink]
	public static extern bool IsGamepadButtonDown(int32 gamepad, int32 button);
	public static bool IsGamepadButtonDown(int32 gamepad, GamepadButton button) => IsGamepadButtonDown(gamepad, (int32)button);
	
	/// Check if a gamepad button has been released once
	[CLink]
	public static extern bool IsGamepadButtonReleased(int32 gamepad, int32 button);
	public static bool IsGamepadButtonReleased(int32 gamepad, GamepadButton button) => IsGamepadButtonReleased(gamepad, (int32)button);
	
	/// Check if a gamepad button is NOT being pressed
	[CLink]
	public static extern bool IsGamepadButtonUp(int32 gamepad, int32 button);
	public static bool IsGamepadButtonUp(int32 gamepad, GamepadButton button) => IsGamepadButtonUp(gamepad, (int32)button);
	
	/// Get the last gamepad button pressed
	[CLink]
	public static extern int32 GetGamepadButtonPressed();
	
	/// Get gamepad axis count for a gamepad
	[CLink]
	public static extern int32 GetGamepadAxisCount(int32 gamepad);
	
	/// Get axis movement value for a gamepad axis
	[CLink]
	public static extern float GetGamepadAxisMovement(int32 gamepad, int32 axis);
	public static float GetGamepadAxisMovement(int32 gamepad, GamepadAxis axis) => GetGamepadAxisMovement(gamepad, (int32)axis);
	
	/// Set internal gamepad mappings (SDL_GameControllerDB)
	[CLink]
	public static extern int32 SetGamepadMappings(char8 *mappings);
	
	/// Set gamepad vibration for both motors (duration in seconds)
	[CLink]
	public static extern void SetGamepadVibration(int32 gamepad, float leftMotor, float rightMotor, float duration);
	
	/// Check if a mouse button has been pressed once
	[CLink]
	public static extern bool IsMouseButtonPressed(int32 button);
	public static bool IsMouseButtonPressed(MouseButton button) => IsMouseButtonPressed((int32)button);
	
	/// Check if a mouse button is being pressed
	[CLink]
	public static extern bool IsMouseButtonDown(int32 button);
	public static bool IsMouseButtonDown(MouseButton button) => IsMouseButtonDown((int32)button);
	
	/// Check if a mouse button has been released once
	[CLink]
	public static extern bool IsMouseButtonReleased(int32 button);
	public static bool IsMouseButtonReleased(MouseButton button) => IsMouseButtonReleased((int32)button);
	
	/// Check if a mouse button is NOT being pressed
	[CLink]
	public static extern bool IsMouseButtonUp(int32 button);
	public static bool IsMouseButtonUp(MouseButton button) => IsMouseButtonUp((int32)button);
	
	/// Get mouse position X
	[CLink]
	public static extern int32 GetMouseX();
	
	/// Get mouse position Y
	[CLink]
	public static extern int32 GetMouseY();
	
	/// Get mouse position XY
	[CLink]
	public static extern Vector2 GetMousePosition();
	
	/// Get mouse delta between frames
	[CLink]
	public static extern Vector2 GetMouseDelta();
	
	/// Set mouse position XY
	[CLink]
	public static extern void SetMousePosition(int32 x, int32 y);
	
	/// Set mouse offset
	[CLink]
	public static extern void SetMouseOffset(int32 offsetX, int32 offsetY);
	
	/// Set mouse scaling
	[CLink]
	public static extern void SetMouseScale(float scaleX, float scaleY);
	
	/// Get mouse wheel movement for X or Y, whichever is larger
	[CLink]
	public static extern float GetMouseWheelMove();
	
	/// Get mouse wheel movement for both X and Y
	[CLink]
	public static extern Vector2 GetMouseWheelMoveV();
	
	/// Set mouse cursor
	[CLink]
	public static extern void SetMouseCursor(int32 cursor);
	public static void SetMouseCursor(MouseCursor cursor) => SetMouseCursor((int32)cursor);
	
	/// Get touch position X for touch point 0 (relative to screen size)
	[CLink]
	public static extern int32 GetTouchX();
	
	/// Get touch position Y for touch point 0 (relative to screen size)
	[CLink]
	public static extern int32 GetTouchY();
	
	/// Get touch position XY for a touch point index (relative to screen size)
	[CLink]
	public static extern Vector2 GetTouchPosition(int32 index);
	
	/// Get touch point identifier for given index
	[CLink]
	public static extern int32 GetTouchPointId(int32 index);
	
	/// Get number of touch points
	[CLink]
	public static extern int32 GetTouchPointCount();
	
	/// Enable a set of gestures using flags
	[CLink]
	public static extern void SetGesturesEnabled(int32 flags);
	public static void SetGesturesEnabled(Gesture flags) => SetGesturesEnabled((int32)flags);
	
	/// Check if a gesture have been detected
	[CLink]
	public static extern bool IsGestureDetected(int32 gesture);
	public static bool IsGestureDetected(Gesture gesture) => IsGestureDetected((int32)gesture);
	
	/// Get latest detected gesture
	[CLink]
	public static extern int32 GetGestureDetected();
	
	/// Get gesture hold time in seconds
	[CLink]
	public static extern float GetGestureHoldDuration();
	
	/// Get gesture drag vector
	[CLink]
	public static extern Vector2 GetGestureDragVector();
	
	/// Get gesture drag angle
	[CLink]
	public static extern float GetGestureDragAngle();
	
	/// Get gesture pinch delta
	[CLink]
	public static extern Vector2 GetGesturePinchVector();
	
	/// Get gesture pinch angle
	[CLink]
	public static extern float GetGesturePinchAngle();
	
	/// Update camera position for selected mode
	[CLink]
	public static extern void UpdateCamera(Camera *camera, int32 mode);
	public static void UpdateCamera(Camera *camera, CameraMode mode) => UpdateCamera(camera, (int32)mode);
	
	/// Get texture that is used for shapes drawing
	[CLink]
	public static extern Texture2D GetShapesTexture();
	
	/// Get texture source rectangle that is used for shapes drawing
	[CLink]
	public static extern Rectangle GetShapesTextureRectangle();
	
	/// Load image from file into CPU memory (RAM)
	[CLink]
	public static extern Image LoadImage(char8 *fileName);
	
	/// Load image from RAW file data
	[CLink]
	public static extern Image LoadImageRaw(char8 *fileName, int32 width, int32 height, int32 format, int32 headerSize);
	
	/// Load image sequence from file (frames appended to image.data)
	[CLink]
	public static extern Image LoadImageAnim(char8 *fileName, int32 *frames);
	
	/// Load image sequence from memory buffer
	[CLink]
	public static extern Image LoadImageAnimFromMemory(char8 *fileType, char8 *fileData, int32 dataSize, int32 *frames);
	
	/// Load image from memory buffer, fileType refers to extension: i.e. '.png'
	[CLink]
	public static extern Image LoadImageFromMemory(char8 *fileType, char8 *fileData, int32 dataSize);
	
	/// Load image from screen buffer and (screenshot)
	[CLink]
	public static extern Image LoadImageFromScreen();
	
	/// Generate image: white noise
	[CLink]
	public static extern Image GenImageWhiteNoise(int32 width, int32 height, float factor);
	
	/// Generate image: perlin noise
	[CLink]
	public static extern Image GenImagePerlinNoise(int32 width, int32 height, int32 offsetX, int32 offsetY, float scale);
	
	/// Generate image: cellular algorithm, bigger tileSize means bigger cells
	[CLink]
	public static extern Image GenImageCellular(int32 width, int32 height, int32 tileSize);
	
	/// Generate image: grayscale image from text data
	[CLink]
	public static extern Image GenImageText(int32 width, int32 height, char8 *text);
	
	/// Convert image data to desired format
	[CLink]
	public static extern void ImageFormat(Image *image, int32 newFormat);
	
	/// Crop image depending on alpha value
	[CLink]
	public static extern void ImageAlphaCrop(Image *image, float threshold);
	
	/// Premultiply alpha channel
	[CLink]
	public static extern void ImageAlphaPremultiply(Image *image);
	
	/// Apply Gaussian blur using a box blur approximation
	[CLink]
	public static extern void ImageBlurGaussian(Image *image, int32 blurSize);
	
	/// Apply custom square convolution kernel to image
	[CLink]
	public static extern void ImageKernelConvolution(Image *image, float *kernel, int32 kernelSize);
	
	/// Resize image (Bicubic scaling algorithm)
	[CLink]
	public static extern void ImageResize(Image *image, int32 newWidth, int32 newHeight);
	
	/// Resize image (Nearest-Neighbor scaling algorithm)
	[CLink]
	public static extern void ImageResizeNN(Image *image, int32 newWidth, int32 newHeight);
	
	/// Compute all mipmap levels for a provided image
	[CLink]
	public static extern void ImageMipmaps(Image *image);
	
	/// Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
	[CLink]
	public static extern void ImageDither(Image *image, int32 rBpp, int32 gBpp, int32 bBpp, int32 aBpp);
	
	/// Flip image vertically
	[CLink]
	public static extern void ImageFlipVertical(Image *image);
	
	/// Flip image horizontally
	[CLink]
	public static extern void ImageFlipHorizontal(Image *image);
	
	/// Rotate image by input angle in degrees (-359 to 359)
	[CLink]
	public static extern void ImageRotate(Image *image, int32 degrees);
	
	/// Rotate image clockwise 90deg
	[CLink]
	public static extern void ImageRotateCW(Image *image);
	
	/// Rotate image counter-clockwise 90deg
	[CLink]
	public static extern void ImageRotateCCW(Image *image);
	
	/// Modify image color: invert
	[CLink]
	public static extern void ImageColorInvert(Image *image);
	
	/// Modify image color: grayscale
	[CLink]
	public static extern void ImageColorGrayscale(Image *image);
	
	/// Modify image color: contrast (-100 to 100)
	[CLink]
	public static extern void ImageColorContrast(Image *image, float contrast);
	
	/// Modify image color: brightness (-255 to 255)
	[CLink]
	public static extern void ImageColorBrightness(Image *image, int32 brightness);
	
	/// Unload color data loaded with LoadImageColors()
	[CLink]
	public static extern void UnloadImageColors(Color *colors);
	
	/// Unload colors palette loaded with LoadImagePalette()
	[CLink]
	public static extern void UnloadImagePalette(Color *colors);
	
	/// Load texture from file into GPU memory (VRAM)
	[CLink]
	public static extern Texture2D LoadTexture(char8 *fileName);
	
	/// Load texture for rendering (framebuffer)
	[CLink]
	public static extern RenderTexture2D LoadRenderTexture(int32 width, int32 height);
	
	/// Generate GPU mipmaps for a texture
	[CLink]
	public static extern void GenTextureMipmaps(Texture2D *texture);
	
	/// Get a Color from HSV values, hue [0..360], saturation/value [0..1]
	[CLink]
	public static extern Color ColorFromHSV(float hue, float saturation, float value);
	
	/// Get Color structure from hexadecimal value
	[CLink]
	public static extern Color GetColor(int32 hexValue);
	
	/// Get Color from a source pixel pointer of certain format
	[CLink]
	public static extern Color GetPixelColor(void *srcPtr, int32 format);
	
	/// Get pixel data size in bytes for certain format
	[CLink]
	public static extern int32 GetPixelDataSize(int32 width, int32 height, int32 format);
	
	/// Get the default Font
	[CLink]
	public static extern Font GetFontDefault();
	
	/// Load font from file into GPU memory (VRAM)
	[CLink]
	public static extern Font LoadFont(char8 *fileName);
	
	/// Load font from file with extended parameters, use NULL for codepoints and 0 for codepointCount to load the default character set, font size is provided in pixels height
	[CLink]
	public static extern Font LoadFontEx(char8 *fileName, int32 fontSize, int32 *codepoints, int32 codepointCount);
	
	/// Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
	[CLink]
	public static extern Font LoadFontFromMemory(char8 *fileType, char8 *fileData, int32 dataSize, int32 fontSize, int32 *codepoints, int32 codepointCount);
	
	/// Load font data for further use
	[CLink]
	public static extern GlyphInfo * LoadFontData(char8 *fileData, int32 dataSize, int32 fontSize, int32 *codepoints, int32 codepointCount, int32 type);
	
	/// Generate image font atlas using chars info
	[CLink]
	public static extern Image GenImageFontAtlas(GlyphInfo *glyphs, Rectangle **glyphRecs, int32 glyphCount, int32 fontSize, int32 padding, int32 packMethod);
	
	/// Unload font chars info data (RAM)
	[CLink]
	public static extern void UnloadFontData(GlyphInfo *glyphs, int32 glyphCount);
	
	/// Draw current FPS
	[CLink]
	public static extern void DrawFPS(int32 posX, int32 posY);
	
	/// Set vertical line spacing when drawing with line-breaks
	[CLink]
	public static extern void SetTextLineSpacing(int32 spacing);
	
	/// Measure string width for default font
	[CLink]
	public static extern int32 MeasureText(char8 *text, int32 fontSize);
	
	/// Load UTF-8 text encoded from codepoints array
	[CLink]
	public static extern char8 * LoadUTF8(int32 *codepoints, int32 length);
	
	/// Unload UTF-8 text encoded from codepoints array
	[CLink]
	public static extern void UnloadUTF8(char8 *text);
	
	/// Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
	[CLink]
	public static extern int32 * LoadCodepoints(char8 *text, int32 *count);
	
	/// Unload codepoints data from memory
	[CLink]
	public static extern void UnloadCodepoints(int32 *codepoints);
	
	/// Get total number of codepoints in a UTF-8 encoded string
	[CLink]
	public static extern int32 GetCodepointCount(char8 *text);
	
	/// Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
	[CLink]
	public static extern int32 GetCodepoint(char8 *text, int32 *codepointSize);
	
	/// Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
	[CLink]
	public static extern int32 GetCodepointNext(char8 *text, int32 *codepointSize);
	
	/// Get previous codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
	[CLink]
	public static extern int32 GetCodepointPrevious(char8 *text, int32 *codepointSize);
	
	/// Encode one codepoint into UTF-8 byte array (array length returned as parameter)
	[CLink]
	public static extern char8 * CodepointToUTF8(int32 codepoint, int32 *utf8Size);
	
	/// Copy one string to another, returns bytes copied
	[CLink]
	public static extern int32 TextCopy(char8 *dst, char8 *src);
	
	/// Check if two text string are equal
	[CLink]
	public static extern bool TextIsEqual(char8 *text1, char8 *text2);
	
	/// Get text length, checks for '\0' ending
	[CLink]
	public static extern int32 TextLength(char8 *text);
	
	/// Text formatting with variables (sprintf() style)
	[CLink]
	public static extern char8 * TextFormat(char8 *text);
	
	/// Get a piece of a text string
	[CLink]
	public static extern char8 * TextSubtext(char8 *text, int32 position, int32 length);
	
	/// Replace text string (WARNING: memory must be freed!)
	[CLink]
	public static extern char8 * TextReplace(char8 *text, char8 *replace, char8 *by);
	
	/// Insert text in a position (WARNING: memory must be freed!)
	[CLink]
	public static extern char8 * TextInsert(char8 *text, char8 *insert, int32 position);
	
	/// Join text strings with delimiter
	[CLink]
	public static extern char8 * TextJoin(char8 **textList, int32 count, char8 *delimiter);
	
	/// Split text into multiple strings
	[CLink]
	public static extern char8 ** TextSplit(char8 *text, char8 delimiter, int32 *count);
	
	/// Append text at specific position and move cursor!
	[CLink]
	public static extern void TextAppend(char8 *text, char8 *@append, int32 *position);
	
	/// Find first text occurrence within a string
	[CLink]
	public static extern int32 TextFindIndex(char8 *text, char8 *find);
	
	/// Get upper case version of provided string
	[CLink]
	public static extern char8 * TextToUpper(char8 *text);
	
	/// Get lower case version of provided string
	[CLink]
	public static extern char8 * TextToLower(char8 *text);
	
	/// Get Pascal case notation version of provided string
	[CLink]
	public static extern char8 * TextToPascal(char8 *text);
	
	/// Get Snake case notation version of provided string
	[CLink]
	public static extern char8 * TextToSnake(char8 *text);
	
	/// Get Camel case notation version of provided string
	[CLink]
	public static extern char8 * TextToCamel(char8 *text);
	
	/// Get integer value from text (negative values not supported)
	[CLink]
	public static extern int32 TextToInteger(char8 *text);
	
	/// Get float value from text (negative values not supported)
	[CLink]
	public static extern float TextToFloat(char8 *text);
	
	/// Draw a grid (centered at (0, 0, 0))
	[CLink]
	public static extern void DrawGrid(int32 slices, float spacing);
	
	/// Load model from files (meshes and materials)
	[CLink]
	public static extern Model LoadModel(char8 *fileName);
	
	/// Upload mesh vertex data in GPU and provide VAO/VBO ids
	[CLink]
	public static extern void UploadMesh(Mesh *mesh, bool dynamic);
	
	/// Compute mesh tangents
	[CLink]
	public static extern void GenMeshTangents(Mesh *mesh);
	
	/// Generate polygonal mesh
	[CLink]
	public static extern Mesh GenMeshPoly(int32 sides, float radius);
	
	/// Generate plane mesh (with subdivisions)
	[CLink]
	public static extern Mesh GenMeshPlane(float width, float length, int32 resX, int32 resZ);
	
	/// Generate cuboid mesh
	[CLink]
	public static extern Mesh GenMeshCube(float width, float height, float length);
	
	/// Generate sphere mesh (standard sphere)
	[CLink]
	public static extern Mesh GenMeshSphere(float radius, int32 rings, int32 slices);
	
	/// Generate half-sphere mesh (no bottom cap)
	[CLink]
	public static extern Mesh GenMeshHemiSphere(float radius, int32 rings, int32 slices);
	
	/// Generate cylinder mesh
	[CLink]
	public static extern Mesh GenMeshCylinder(float radius, float height, int32 slices);
	
	/// Generate cone/pyramid mesh
	[CLink]
	public static extern Mesh GenMeshCone(float radius, float height, int32 slices);
	
	/// Generate torus mesh
	[CLink]
	public static extern Mesh GenMeshTorus(float radius, float size, int32 radSeg, int32 sides);
	
	/// Generate trefoil knot mesh
	[CLink]
	public static extern Mesh GenMeshKnot(float radius, float size, int32 radSeg, int32 sides);
	
	/// Load materials from model file
	[CLink]
	public static extern Material * LoadMaterials(char8 *fileName, int32 *materialCount);
	
	/// Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
	[CLink]
	public static extern Material LoadMaterialDefault();
	
	/// Set material for a mesh
	[CLink]
	public static extern void SetModelMeshMaterial(Model *model, int32 meshId, int32 materialId);
	
	/// Load model animations from file
	[CLink]
	public static extern ModelAnimation * LoadModelAnimations(char8 *fileName, int32 *animCount);
	
	/// Unload animation array data
	[CLink]
	public static extern void UnloadModelAnimations(ModelAnimation *animations, int32 animCount);
	
	/// Initialize audio device and context
	[CLink]
	public static extern void InitAudioDevice();
	
	/// Close the audio device and context
	[CLink]
	public static extern void CloseAudioDevice();
	
	/// Check if audio device has been initialized successfully
	[CLink]
	public static extern bool IsAudioDeviceReady();
	
	/// Set master volume (listener)
	[CLink]
	public static extern void SetMasterVolume(float volume);
	
	/// Get master volume (listener)
	[CLink]
	public static extern float GetMasterVolume();
	
	/// Load wave data from file
	[CLink]
	public static extern Wave LoadWave(char8 *fileName);
	
	/// Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
	[CLink]
	public static extern Wave LoadWaveFromMemory(char8 *fileType, char8 *fileData, int32 dataSize);
	
	/// Load sound from file
	[CLink]
	public static extern Sound LoadSound(char8 *fileName);
	
	/// Crop a wave to defined frames range
	[CLink]
	public static extern void WaveCrop(Wave *wave, int32 initFrame, int32 finalFrame);
	
	/// Convert wave data to desired format
	[CLink]
	public static extern void WaveFormat(Wave *wave, int32 sampleRate, int32 sampleSize, int32 channels);
	
	/// Unload samples data loaded with LoadWaveSamples()
	[CLink]
	public static extern void UnloadWaveSamples(float *samples);
	
	/// Load music stream from file
	[CLink]
	public static extern Music LoadMusicStream(char8 *fileName);
	
	/// Load music stream from data
	[CLink]
	public static extern Music LoadMusicStreamFromMemory(char8 *fileType, char8 *data, int32 dataSize);
	
	/// Load audio stream (to stream raw audio pcm data)
	[CLink]
	public static extern AudioStream LoadAudioStream(int32 sampleRate, int32 sampleSize, int32 channels);
	
	/// Default size for new audio streams
	[CLink]
	public static extern void SetAudioStreamBufferSizeDefault(int32 size);
	
	/// Attach audio stream processor to the entire audio pipeline, receives the samples as 'float'
	[CLink]
	public static extern void AttachAudioMixedProcessor(AudioCallback processor);
	
	/// Detach audio stream processor from the entire audio pipeline
	[CLink]
	public static extern void DetachAudioMixedProcessor(AudioCallback processor);
	
#if !BF_PLATFORM_WASM
	
	/// Set icon for window (single image, RGBA 32bit)
	[CLink]
	public static extern void SetWindowIcon(Image image);
	
	/// Set background color (framebuffer clear color)
	[CLink]
	public static extern void ClearBackground(Color color);
	
	/// Begin 2D mode with custom camera (2D)
	[CLink]
	public static extern void BeginMode2D(Camera2D camera);
	
	/// Begin 3D mode with custom camera (3D)
	[CLink]
	public static extern void BeginMode3D(Camera3D camera);
	
	/// Begin drawing to render texture
	[CLink]
	public static extern void BeginTextureMode(RenderTexture2D target);
	
	/// Begin custom shader drawing
	[CLink]
	public static extern void BeginShaderMode(Shader shader);
	
	/// Begin stereo rendering (requires VR simulator)
	[CLink]
	public static extern void BeginVrStereoMode(VrStereoConfig config);
	
	/// Load VR stereo config for VR simulator device parameters
	[CLink]
	public static extern VrStereoConfig LoadVrStereoConfig(VrDeviceInfo device);
	
	/// Unload VR stereo config
	[CLink]
	public static extern void UnloadVrStereoConfig(VrStereoConfig config);
	
	/// Check if a shader is valid (loaded on GPU)
	[CLink]
	public static extern bool IsShaderValid(Shader shader);
	
	/// Get shader uniform location
	[CLink]
	public static extern int32 GetShaderLocation(Shader shader, char8 *uniformName);
	
	/// Get shader attribute location
	[CLink]
	public static extern int32 GetShaderLocationAttrib(Shader shader, char8 *attribName);
	
	/// Set shader uniform value
	[CLink]
	public static extern void SetShaderValue(Shader shader, int32 locIndex, void *value, int32 uniformType);
	
	/// Set shader uniform value vector
	[CLink]
	public static extern void SetShaderValueV(Shader shader, int32 locIndex, void *value, int32 uniformType, int32 count);
	
	/// Set shader uniform value (matrix 4x4)
	[CLink]
	public static extern void SetShaderValueMatrix(Shader shader, int32 locIndex, Matrix mat);
	
	/// Set shader uniform value for texture (sampler2d)
	[CLink]
	public static extern void SetShaderValueTexture(Shader shader, int32 locIndex, Texture2D texture);
	
	/// Unload shader from GPU memory (VRAM)
	[CLink]
	public static extern void UnloadShader(Shader shader);
	
	/// Get a ray trace from screen position (i.e mouse)
	[CLink]
	public static extern Ray GetScreenToWorldRay(Vector2 position, Camera camera);
	
	/// Get a ray trace from screen position (i.e mouse) in a viewport
	[CLink]
	public static extern Ray GetScreenToWorldRayEx(Vector2 position, Camera camera, int32 width, int32 height);
	
	/// Get the screen space position for a 3d world space position
	[CLink]
	public static extern Vector2 GetWorldToScreen(Vector3 position, Camera camera);
	
	/// Get size position for a 3d world space position
	[CLink]
	public static extern Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int32 width, int32 height);
	
	/// Get the screen space position for a 2d camera world space position
	[CLink]
	public static extern Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera);
	
	/// Get the world space position for a 2d camera screen space position
	[CLink]
	public static extern Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera);
	
	/// Get camera transform matrix (view matrix)
	[CLink]
	public static extern Matrix GetCameraMatrix(Camera camera);
	
	/// Get camera 2d transform matrix
	[CLink]
	public static extern Matrix GetCameraMatrix2D(Camera2D camera);
	
	/// Unload filepaths
	[CLink]
	public static extern void UnloadDirectoryFiles(FilePathList files);
	
	/// Unload dropped filepaths
	[CLink]
	public static extern void UnloadDroppedFiles(FilePathList files);
	
	/// Unload automation events list from file
	[CLink]
	public static extern void UnloadAutomationEventList(AutomationEventList list);
	
	/// Export automation events list as text file
	[CLink]
	public static extern bool ExportAutomationEventList(AutomationEventList list, char8 *fileName);
	
	/// Play a recorded automation event
	[CLink]
	public static extern void PlayAutomationEvent(AutomationEvent event);
	
	/// Update camera movement/rotation
	[CLink]
	public static extern void UpdateCameraPro(Camera *camera, Vector3 movement, Vector3 rotation, float zoom);
	
	/// Set texture and rectangle to be used on shapes drawing
	[CLink]
	public static extern void SetShapesTexture(Texture2D texture, Rectangle source);
	
	/// Draw a pixel using geometry [Can be slow, use with care]
	[CLink]
	public static extern void DrawPixel(int32 posX, int32 posY, Color color);
	
	/// Draw a pixel using geometry (Vector version) [Can be slow, use with care]
	[CLink]
	public static extern void DrawPixelV(Vector2 position, Color color);
	
	/// Draw a line
	[CLink]
	public static extern void DrawLine(int32 startPosX, int32 startPosY, int32 endPosX, int32 endPosY, Color color);
	
	/// Draw a line (using gl lines)
	[CLink]
	public static extern void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);
	
	/// Draw a line (using triangles/quads)
	[CLink]
	public static extern void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);
	
	/// Draw lines sequence (using gl lines)
	[CLink]
	public static extern void DrawLineStrip(Vector2 *points, int32 pointCount, Color color);
	
	/// Draw line segment cubic-bezier in-out interpolation
	[CLink]
	public static extern void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);
	
	/// Draw a color-filled circle
	[CLink]
	public static extern void DrawCircle(int32 centerX, int32 centerY, float radius, Color color);
	
	/// Draw a piece of a circle
	[CLink]
	public static extern void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int32 segments, Color color);
	
	/// Draw circle sector outline
	[CLink]
	public static extern void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int32 segments, Color color);
	
	/// Draw a gradient-filled circle
	[CLink]
	public static extern void DrawCircleGradient(int32 centerX, int32 centerY, float radius, Color inner, Color outer);
	
	/// Draw a color-filled circle (Vector version)
	[CLink]
	public static extern void DrawCircleV(Vector2 center, float radius, Color color);
	
	/// Draw circle outline
	[CLink]
	public static extern void DrawCircleLines(int32 centerX, int32 centerY, float radius, Color color);
	
	/// Draw circle outline (Vector version)
	[CLink]
	public static extern void DrawCircleLinesV(Vector2 center, float radius, Color color);
	
	/// Draw ellipse
	[CLink]
	public static extern void DrawEllipse(int32 centerX, int32 centerY, float radiusH, float radiusV, Color color);
	
	/// Draw ellipse outline
	[CLink]
	public static extern void DrawEllipseLines(int32 centerX, int32 centerY, float radiusH, float radiusV, Color color);
	
	/// Draw ring
	[CLink]
	public static extern void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int32 segments, Color color);
	
	/// Draw ring outline
	[CLink]
	public static extern void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int32 segments, Color color);
	
	/// Draw a color-filled rectangle
	[CLink]
	public static extern void DrawRectangle(int32 posX, int32 posY, int32 width, int32 height, Color color);
	
	/// Draw a color-filled rectangle (Vector version)
	[CLink]
	public static extern void DrawRectangleV(Vector2 position, Vector2 size, Color color);
	
	/// Draw a color-filled rectangle
	[CLink]
	public static extern void DrawRectangleRec(Rectangle rec, Color color);
	
	/// Draw a color-filled rectangle with pro parameters
	[CLink]
	public static extern void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);
	
	/// Draw a vertical-gradient-filled rectangle
	[CLink]
	public static extern void DrawRectangleGradientV(int32 posX, int32 posY, int32 width, int32 height, Color top, Color bottom);
	
	/// Draw a horizontal-gradient-filled rectangle
	[CLink]
	public static extern void DrawRectangleGradientH(int32 posX, int32 posY, int32 width, int32 height, Color left, Color right);
	
	/// Draw a gradient-filled rectangle with custom vertex colors
	[CLink]
	public static extern void DrawRectangleGradientEx(Rectangle rec, Color topLeft, Color bottomLeft, Color topRight, Color bottomRight);
	
	/// Draw rectangle outline
	[CLink]
	public static extern void DrawRectangleLines(int32 posX, int32 posY, int32 width, int32 height, Color color);
	
	/// Draw rectangle outline with extended parameters
	[CLink]
	public static extern void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color);
	
	/// Draw rectangle with rounded edges
	[CLink]
	public static extern void DrawRectangleRounded(Rectangle rec, float roundness, int32 segments, Color color);
	
	/// Draw rectangle lines with rounded edges
	[CLink]
	public static extern void DrawRectangleRoundedLines(Rectangle rec, float roundness, int32 segments, Color color);
	
	/// Draw rectangle with rounded edges outline
	[CLink]
	public static extern void DrawRectangleRoundedLinesEx(Rectangle rec, float roundness, int32 segments, float lineThick, Color color);
	
	/// Draw a color-filled triangle (vertex in counter-clockwise order!)
	[CLink]
	public static extern void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);
	
	/// Draw triangle outline (vertex in counter-clockwise order!)
	[CLink]
	public static extern void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);
	
	/// Draw a triangle fan defined by points (first vertex is the center)
	[CLink]
	public static extern void DrawTriangleFan(Vector2 *points, int32 pointCount, Color color);
	
	/// Draw a triangle strip defined by points
	[CLink]
	public static extern void DrawTriangleStrip(Vector2 *points, int32 pointCount, Color color);
	
	/// Draw a regular polygon (Vector version)
	[CLink]
	public static extern void DrawPoly(Vector2 center, int32 sides, float radius, float rotation, Color color);
	
	/// Draw a polygon outline of n sides
	[CLink]
	public static extern void DrawPolyLines(Vector2 center, int32 sides, float radius, float rotation, Color color);
	
	/// Draw a polygon outline of n sides with extended parameters
	[CLink]
	public static extern void DrawPolyLinesEx(Vector2 center, int32 sides, float radius, float rotation, float lineThick, Color color);
	
	/// Draw spline: Linear, minimum 2 points
	[CLink]
	public static extern void DrawSplineLinear(Vector2 *points, int32 pointCount, float thick, Color color);
	
	/// Draw spline: B-Spline, minimum 4 points
	[CLink]
	public static extern void DrawSplineBasis(Vector2 *points, int32 pointCount, float thick, Color color);
	
	/// Draw spline: Catmull-Rom, minimum 4 points
	[CLink]
	public static extern void DrawSplineCatmullRom(Vector2 *points, int32 pointCount, float thick, Color color);
	
	/// Draw spline: Quadratic Bezier, minimum 3 points (1 control point): [p1, c2, p3, c4...]
	[CLink]
	public static extern void DrawSplineBezierQuadratic(Vector2 *points, int32 pointCount, float thick, Color color);
	
	/// Draw spline: Cubic Bezier, minimum 4 points (2 control points): [p1, c2, c3, p4, c5, c6...]
	[CLink]
	public static extern void DrawSplineBezierCubic(Vector2 *points, int32 pointCount, float thick, Color color);
	
	/// Draw spline segment: Linear, 2 points
	[CLink]
	public static extern void DrawSplineSegmentLinear(Vector2 p1, Vector2 p2, float thick, Color color);
	
	/// Draw spline segment: B-Spline, 4 points
	[CLink]
	public static extern void DrawSplineSegmentBasis(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color);
	
	/// Draw spline segment: Catmull-Rom, 4 points
	[CLink]
	public static extern void DrawSplineSegmentCatmullRom(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color);
	
	/// Draw spline segment: Quadratic Bezier, 2 points, 1 control point
	[CLink]
	public static extern void DrawSplineSegmentBezierQuadratic(Vector2 p1, Vector2 c2, Vector2 p3, float thick, Color color);
	
	/// Draw spline segment: Cubic Bezier, 2 points, 2 control points
	[CLink]
	public static extern void DrawSplineSegmentBezierCubic(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float thick, Color color);
	
	/// Get (evaluate) spline point: Linear
	[CLink]
	public static extern Vector2 GetSplinePointLinear(Vector2 startPos, Vector2 endPos, float t);
	
	/// Get (evaluate) spline point: B-Spline
	[CLink]
	public static extern Vector2 GetSplinePointBasis(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t);
	
	/// Get (evaluate) spline point: Catmull-Rom
	[CLink]
	public static extern Vector2 GetSplinePointCatmullRom(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t);
	
	/// Get (evaluate) spline point: Quadratic Bezier
	[CLink]
	public static extern Vector2 GetSplinePointBezierQuad(Vector2 p1, Vector2 c2, Vector2 p3, float t);
	
	/// Get (evaluate) spline point: Cubic Bezier
	[CLink]
	public static extern Vector2 GetSplinePointBezierCubic(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float t);
	
	/// Check collision between two rectangles
	[CLink]
	public static extern bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);
	
	/// Check collision between two circles
	[CLink]
	public static extern bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);
	
	/// Check collision between circle and rectangle
	[CLink]
	public static extern bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec);
	
	/// Check if circle collides with a line created betweeen two points [p1] and [p2]
	[CLink]
	public static extern bool CheckCollisionCircleLine(Vector2 center, float radius, Vector2 p1, Vector2 p2);
	
	/// Check if point is inside rectangle
	[CLink]
	public static extern bool CheckCollisionPointRec(Vector2 point, Rectangle rec);
	
	/// Check if point is inside circle
	[CLink]
	public static extern bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);
	
	/// Check if point is inside a triangle
	[CLink]
	public static extern bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);
	
	/// Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
	[CLink]
	public static extern bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int32 threshold);
	
	/// Check if point is within a polygon described by array of vertices
	[CLink]
	public static extern bool CheckCollisionPointPoly(Vector2 point, Vector2 *points, int32 pointCount);
	
	/// Check the collision between two lines defined by two points each, returns collision point by reference
	[CLink]
	public static extern bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 *collisionPoint);
	
	/// Get collision rectangle for two rectangles collision
	[CLink]
	public static extern Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);
	
	/// Load image from GPU texture data
	[CLink]
	public static extern Image LoadImageFromTexture(Texture2D texture);
	
	/// Check if an image is valid (data and parameters)
	[CLink]
	public static extern bool IsImageValid(Image image);
	
	/// Unload image from CPU memory (RAM)
	[CLink]
	public static extern void UnloadImage(Image image);
	
	/// Export image data to file, returns true on success
	[CLink]
	public static extern bool ExportImage(Image image, char8 *fileName);
	
	/// Export image to memory buffer
	[CLink]
	public static extern char8 * ExportImageToMemory(Image image, char8 *fileType, int32 *fileSize);
	
	/// Export image as code file defining an array of bytes, returns true on success
	[CLink]
	public static extern bool ExportImageAsCode(Image image, char8 *fileName);
	
	/// Generate image: plain color
	[CLink]
	public static extern Image GenImageColor(int32 width, int32 height, Color color);
	
	/// Generate image: linear gradient, direction in degrees [0..360], 0=Vertical gradient
	[CLink]
	public static extern Image GenImageGradientLinear(int32 width, int32 height, int32 direction, Color start, Color end);
	
	/// Generate image: radial gradient
	[CLink]
	public static extern Image GenImageGradientRadial(int32 width, int32 height, float density, Color inner, Color outer);
	
	/// Generate image: square gradient
	[CLink]
	public static extern Image GenImageGradientSquare(int32 width, int32 height, float density, Color inner, Color outer);
	
	/// Generate image: checked
	[CLink]
	public static extern Image GenImageChecked(int32 width, int32 height, int32 checksX, int32 checksY, Color col1, Color col2);
	
	/// Create an image duplicate (useful for transformations)
	[CLink]
	public static extern Image ImageCopy(Image image);
	
	/// Create an image from another image piece
	[CLink]
	public static extern Image ImageFromImage(Image image, Rectangle rec);
	
	/// Create an image from a selected channel of another image (GRAYSCALE)
	[CLink]
	public static extern Image ImageFromChannel(Image image, int32 selectedChannel);
	
	/// Create an image from text (default font)
	[CLink]
	public static extern Image ImageText(char8 *text, int32 fontSize, Color color);
	
	/// Create an image from text (custom sprite font)
	[CLink]
	public static extern Image ImageTextEx(Font font, char8 *text, float fontSize, float spacing, Color tint);
	
	/// Convert image to POT (power-of-two)
	[CLink]
	public static extern void ImageToPOT(Image *image, Color fill);
	
	/// Crop an image to a defined rectangle
	[CLink]
	public static extern void ImageCrop(Image *image, Rectangle crop);
	
	/// Clear alpha channel to desired color
	[CLink]
	public static extern void ImageAlphaClear(Image *image, Color color, float threshold);
	
	/// Apply alpha mask to image
	[CLink]
	public static extern void ImageAlphaMask(Image *image, Image alphaMask);
	
	/// Resize canvas and fill with color
	[CLink]
	public static extern void ImageResizeCanvas(Image *image, int32 newWidth, int32 newHeight, int32 offsetX, int32 offsetY, Color fill);
	
	/// Modify image color: tint
	[CLink]
	public static extern void ImageColorTint(Image *image, Color color);
	
	/// Modify image color: replace color
	[CLink]
	public static extern void ImageColorReplace(Image *image, Color color, Color replace);
	
	/// Load color data from image as a Color array (RGBA - 32bit)
	[CLink]
	public static extern Color * LoadImageColors(Image image);
	
	/// Load colors palette from image as a Color array (RGBA - 32bit)
	[CLink]
	public static extern Color * LoadImagePalette(Image image, int32 maxPaletteSize, int32 *colorCount);
	
	/// Get image alpha border rectangle
	[CLink]
	public static extern Rectangle GetImageAlphaBorder(Image image, float threshold);
	
	/// Get image pixel color at (x, y) position
	[CLink]
	public static extern Color GetImageColor(Image image, int32 x, int32 y);
	
	/// Clear image background with given color
	[CLink]
	public static extern void ImageClearBackground(Image *dst, Color color);
	
	/// Draw pixel within an image
	[CLink]
	public static extern void ImageDrawPixel(Image *dst, int32 posX, int32 posY, Color color);
	
	/// Draw pixel within an image (Vector version)
	[CLink]
	public static extern void ImageDrawPixelV(Image *dst, Vector2 position, Color color);
	
	/// Draw line within an image
	[CLink]
	public static extern void ImageDrawLine(Image *dst, int32 startPosX, int32 startPosY, int32 endPosX, int32 endPosY, Color color);
	
	/// Draw line within an image (Vector version)
	[CLink]
	public static extern void ImageDrawLineV(Image *dst, Vector2 start, Vector2 end, Color color);
	
	/// Draw a line defining thickness within an image
	[CLink]
	public static extern void ImageDrawLineEx(Image *dst, Vector2 start, Vector2 end, int32 thick, Color color);
	
	/// Draw a filled circle within an image
	[CLink]
	public static extern void ImageDrawCircle(Image *dst, int32 centerX, int32 centerY, int32 radius, Color color);
	
	/// Draw a filled circle within an image (Vector version)
	[CLink]
	public static extern void ImageDrawCircleV(Image *dst, Vector2 center, int32 radius, Color color);
	
	/// Draw circle outline within an image
	[CLink]
	public static extern void ImageDrawCircleLines(Image *dst, int32 centerX, int32 centerY, int32 radius, Color color);
	
	/// Draw circle outline within an image (Vector version)
	[CLink]
	public static extern void ImageDrawCircleLinesV(Image *dst, Vector2 center, int32 radius, Color color);
	
	/// Draw rectangle within an image
	[CLink]
	public static extern void ImageDrawRectangle(Image *dst, int32 posX, int32 posY, int32 width, int32 height, Color color);
	
	/// Draw rectangle within an image (Vector version)
	[CLink]
	public static extern void ImageDrawRectangleV(Image *dst, Vector2 position, Vector2 size, Color color);
	
	/// Draw rectangle within an image
	[CLink]
	public static extern void ImageDrawRectangleRec(Image *dst, Rectangle rec, Color color);
	
	/// Draw rectangle lines within an image
	[CLink]
	public static extern void ImageDrawRectangleLines(Image *dst, Rectangle rec, int32 thick, Color color);
	
	/// Draw triangle within an image
	[CLink]
	public static extern void ImageDrawTriangle(Image *dst, Vector2 v1, Vector2 v2, Vector2 v3, Color color);
	
	/// Draw triangle with interpolated colors within an image
	[CLink]
	public static extern void ImageDrawTriangleEx(Image *dst, Vector2 v1, Vector2 v2, Vector2 v3, Color c1, Color c2, Color c3);
	
	/// Draw triangle outline within an image
	[CLink]
	public static extern void ImageDrawTriangleLines(Image *dst, Vector2 v1, Vector2 v2, Vector2 v3, Color color);
	
	/// Draw a triangle fan defined by points within an image (first vertex is the center)
	[CLink]
	public static extern void ImageDrawTriangleFan(Image *dst, Vector2 *points, int32 pointCount, Color color);
	
	/// Draw a triangle strip defined by points within an image
	[CLink]
	public static extern void ImageDrawTriangleStrip(Image *dst, Vector2 *points, int32 pointCount, Color color);
	
	/// Draw a source image within a destination image (tint applied to source)
	[CLink]
	public static extern void ImageDraw(Image *dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint);
	
	/// Draw text (using default font) within an image (destination)
	[CLink]
	public static extern void ImageDrawText(Image *dst, char8 *text, int32 posX, int32 posY, int32 fontSize, Color color);
	
	/// Draw text (custom sprite font) within an image (destination)
	[CLink]
	public static extern void ImageDrawTextEx(Image *dst, Font font, char8 *text, Vector2 position, float fontSize, float spacing, Color tint);
	
	/// Load texture from image data
	[CLink]
	public static extern Texture2D LoadTextureFromImage(Image image);
	
	/// Load cubemap from image, multiple image cubemap layouts supported
	[CLink]
	public static extern TextureCubemap LoadTextureCubemap(Image image, int32 layout);
	
	/// Check if a texture is valid (loaded in GPU)
	[CLink]
	public static extern bool IsTextureValid(Texture2D texture);
	
	/// Unload texture from GPU memory (VRAM)
	[CLink]
	public static extern void UnloadTexture(Texture2D texture);
	
	/// Check if a render texture is valid (loaded in GPU)
	[CLink]
	public static extern bool IsRenderTextureValid(RenderTexture2D target);
	
	/// Unload render texture from GPU memory (VRAM)
	[CLink]
	public static extern void UnloadRenderTexture(RenderTexture2D target);
	
	/// Update GPU texture with new data
	[CLink]
	public static extern void UpdateTexture(Texture2D texture, void *pixels);
	
	/// Update GPU texture rectangle with new data
	[CLink]
	public static extern void UpdateTextureRec(Texture2D texture, Rectangle rec, void *pixels);
	
	/// Set texture scaling filter mode
	[CLink]
	public static extern void SetTextureFilter(Texture2D texture, int32 filter);
	
	/// Set texture wrapping mode
	[CLink]
	public static extern void SetTextureWrap(Texture2D texture, int32 wrap);
	
	/// Draw a Texture2D
	[CLink]
	public static extern void DrawTexture(Texture2D texture, int32 posX, int32 posY, Color tint);
	
	/// Draw a Texture2D with position defined as Vector2
	[CLink]
	public static extern void DrawTextureV(Texture2D texture, Vector2 position, Color tint);
	
	/// Draw a Texture2D with extended parameters
	[CLink]
	public static extern void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);
	
	/// Draw a part of a texture defined by a rectangle
	[CLink]
	public static extern void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint);
	
	/// Draw a part of a texture defined by a rectangle with 'pro' parameters
	[CLink]
	public static extern void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint);
	
	/// Draws a texture (or part of it) that stretches or shrinks nicely
	[CLink]
	public static extern void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint);
	
	/// Check if two colors are equal
	[CLink]
	public static extern bool ColorIsEqual(Color col1, Color col2);
	
	/// Get color with alpha applied, alpha goes from 0.0f to 1.0f
	[CLink]
	public static extern Color Fade(Color color, float alpha);
	
	/// Get hexadecimal value for a Color (0xRRGGBBAA)
	[CLink]
	public static extern int32 ColorToInt(Color color);
	
	/// Get Color normalized as float [0..1]
	[CLink]
	public static extern Vector4 ColorNormalize(Color color);
	
	/// Get Color from normalized values [0..1]
	[CLink]
	public static extern Color ColorFromNormalized(Vector4 normalized);
	
	/// Get HSV values for a Color, hue [0..360], saturation/value [0..1]
	[CLink]
	public static extern Vector3 ColorToHSV(Color color);
	
	/// Get color multiplied with another color
	[CLink]
	public static extern Color ColorTint(Color color, Color tint);
	
	/// Get color with brightness correction, brightness factor goes from -1.0f to 1.0f
	[CLink]
	public static extern Color ColorBrightness(Color color, float factor);
	
	/// Get color with contrast correction, contrast values between -1.0f and 1.0f
	[CLink]
	public static extern Color ColorContrast(Color color, float contrast);
	
	/// Get color with alpha applied, alpha goes from 0.0f to 1.0f
	[CLink]
	public static extern Color ColorAlpha(Color color, float alpha);
	
	/// Get src alpha-blended into dst color with tint
	[CLink]
	public static extern Color ColorAlphaBlend(Color dst, Color src, Color tint);
	
	/// Get color lerp interpolation between two colors, factor [0.0f..1.0f]
	[CLink]
	public static extern Color ColorLerp(Color color1, Color color2, float factor);
	
	/// Set color formatted into destination pixel pointer
	[CLink]
	public static extern void SetPixelColor(void *dstPtr, Color color, int32 format);
	
	/// Load font from Image (XNA style)
	[CLink]
	public static extern Font LoadFontFromImage(Image image, Color key, int32 firstChar);
	
	/// Check if a font is valid (font data loaded, WARNING: GPU texture not checked)
	[CLink]
	public static extern bool IsFontValid(Font font);
	
	/// Unload font from GPU memory (VRAM)
	[CLink]
	public static extern void UnloadFont(Font font);
	
	/// Export font as code file, returns true on success
	[CLink]
	public static extern bool ExportFontAsCode(Font font, char8 *fileName);
	
	/// Draw text (using default font)
	[CLink]
	public static extern void DrawText(char8 *text, int32 posX, int32 posY, int32 fontSize, Color color);
	
	/// Draw text using font and additional parameters
	[CLink]
	public static extern void DrawTextEx(Font font, char8 *text, Vector2 position, float fontSize, float spacing, Color tint);
	
	/// Draw text using Font and pro parameters (rotation)
	[CLink]
	public static extern void DrawTextPro(Font font, char8 *text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint);
	
	/// Draw one character (codepoint)
	[CLink]
	public static extern void DrawTextCodepoint(Font font, int32 codepoint, Vector2 position, float fontSize, Color tint);
	
	/// Draw multiple character (codepoint)
	[CLink]
	public static extern void DrawTextCodepoints(Font font, int32 *codepoints, int32 codepointCount, Vector2 position, float fontSize, float spacing, Color tint);
	
	/// Measure string size for Font
	[CLink]
	public static extern Vector2 MeasureTextEx(Font font, char8 *text, float fontSize, float spacing);
	
	/// Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
	[CLink]
	public static extern int32 GetGlyphIndex(Font font, int32 codepoint);
	
	/// Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
	[CLink]
	public static extern GlyphInfo GetGlyphInfo(Font font, int32 codepoint);
	
	/// Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
	[CLink]
	public static extern Rectangle GetGlyphAtlasRec(Font font, int32 codepoint);
	
	/// Draw a line in 3D world space
	[CLink]
	public static extern void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color);
	
	/// Draw a point in 3D space, actually a small line
	[CLink]
	public static extern void DrawPoint3D(Vector3 position, Color color);
	
	/// Draw a circle in 3D world space
	[CLink]
	public static extern void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color);
	
	/// Draw a color-filled triangle (vertex in counter-clockwise order!)
	[CLink]
	public static extern void DrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color);
	
	/// Draw a triangle strip defined by points
	[CLink]
	public static extern void DrawTriangleStrip3D(Vector3 *points, int32 pointCount, Color color);
	
	/// Draw cube
	[CLink]
	public static extern void DrawCube(Vector3 position, float width, float height, float length, Color color);
	
	/// Draw cube (Vector version)
	[CLink]
	public static extern void DrawCubeV(Vector3 position, Vector3 size, Color color);
	
	/// Draw cube wires
	[CLink]
	public static extern void DrawCubeWires(Vector3 position, float width, float height, float length, Color color);
	
	/// Draw cube wires (Vector version)
	[CLink]
	public static extern void DrawCubeWiresV(Vector3 position, Vector3 size, Color color);
	
	/// Draw sphere
	[CLink]
	public static extern void DrawSphere(Vector3 centerPos, float radius, Color color);
	
	/// Draw sphere with extended parameters
	[CLink]
	public static extern void DrawSphereEx(Vector3 centerPos, float radius, int32 rings, int32 slices, Color color);
	
	/// Draw sphere wires
	[CLink]
	public static extern void DrawSphereWires(Vector3 centerPos, float radius, int32 rings, int32 slices, Color color);
	
	/// Draw a cylinder/cone
	[CLink]
	public static extern void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int32 slices, Color color);
	
	/// Draw a cylinder with base at startPos and top at endPos
	[CLink]
	public static extern void DrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int32 sides, Color color);
	
	/// Draw a cylinder/cone wires
	[CLink]
	public static extern void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int32 slices, Color color);
	
	/// Draw a cylinder wires with base at startPos and top at endPos
	[CLink]
	public static extern void DrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int32 sides, Color color);
	
	/// Draw a capsule with the center of its sphere caps at startPos and endPos
	[CLink]
	public static extern void DrawCapsule(Vector3 startPos, Vector3 endPos, float radius, int32 slices, int32 rings, Color color);
	
	/// Draw capsule wireframe with the center of its sphere caps at startPos and endPos
	[CLink]
	public static extern void DrawCapsuleWires(Vector3 startPos, Vector3 endPos, float radius, int32 slices, int32 rings, Color color);
	
	/// Draw a plane XZ
	[CLink]
	public static extern void DrawPlane(Vector3 centerPos, Vector2 size, Color color);
	
	/// Draw a ray line
	[CLink]
	public static extern void DrawRay(Ray ray, Color color);
	
	/// Load model from generated mesh (default material)
	[CLink]
	public static extern Model LoadModelFromMesh(Mesh mesh);
	
	/// Check if a model is valid (loaded in GPU, VAO/VBOs)
	[CLink]
	public static extern bool IsModelValid(Model model);
	
	/// Unload model (including meshes) from memory (RAM and/or VRAM)
	[CLink]
	public static extern void UnloadModel(Model model);
	
	/// Compute model bounding box limits (considers all meshes)
	[CLink]
	public static extern BoundingBox GetModelBoundingBox(Model model);
	
	/// Draw a model (with texture if set)
	[CLink]
	public static extern void DrawModel(Model model, Vector3 position, float scale, Color tint);
	
	/// Draw a model with extended parameters
	[CLink]
	public static extern void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);
	
	/// Draw a model wires (with texture if set)
	[CLink]
	public static extern void DrawModelWires(Model model, Vector3 position, float scale, Color tint);
	
	/// Draw a model wires (with texture if set) with extended parameters
	[CLink]
	public static extern void DrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);
	
	/// Draw a model as points
	[CLink]
	public static extern void DrawModelPoints(Model model, Vector3 position, float scale, Color tint);
	
	/// Draw a model as points with extended parameters
	[CLink]
	public static extern void DrawModelPointsEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);
	
	/// Draw bounding box (wires)
	[CLink]
	public static extern void DrawBoundingBox(BoundingBox @box, Color color);
	
	/// Draw a billboard texture
	[CLink]
	public static extern void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float scale, Color tint);
	
	/// Draw a billboard texture defined by source
	[CLink]
	public static extern void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint);
	
	/// Draw a billboard texture defined by source and rotation
	[CLink]
	public static extern void DrawBillboardPro(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint);
	
	/// Update mesh vertex data in GPU for a specific buffer index
	[CLink]
	public static extern void UpdateMeshBuffer(Mesh mesh, int32 index, void *data, int32 dataSize, int32 offset);
	
	/// Unload mesh data from CPU and GPU
	[CLink]
	public static extern void UnloadMesh(Mesh mesh);
	
	/// Draw a 3d mesh with material and transform
	[CLink]
	public static extern void DrawMesh(Mesh mesh, Material material, Matrix transform);
	
	/// Draw multiple mesh instances with material and different transforms
	[CLink]
	public static extern void DrawMeshInstanced(Mesh mesh, Material material, Matrix *transforms, int32 instances);
	
	/// Compute mesh bounding box limits
	[CLink]
	public static extern BoundingBox GetMeshBoundingBox(Mesh mesh);
	
	/// Export mesh data to file, returns true on success
	[CLink]
	public static extern bool ExportMesh(Mesh mesh, char8 *fileName);
	
	/// Export mesh as code file (.h) defining multiple arrays of vertex attributes
	[CLink]
	public static extern bool ExportMeshAsCode(Mesh mesh, char8 *fileName);
	
	/// Generate heightmap mesh from image data
	[CLink]
	public static extern Mesh GenMeshHeightmap(Image heightmap, Vector3 size);
	
	/// Generate cubes-based map mesh from image data
	[CLink]
	public static extern Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize);
	
	/// Check if a material is valid (shader assigned, map textures loaded in GPU)
	[CLink]
	public static extern bool IsMaterialValid(Material material);
	
	/// Unload material from GPU memory (VRAM)
	[CLink]
	public static extern void UnloadMaterial(Material material);
	
	/// Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
	[CLink]
	public static extern void SetMaterialTexture(Material *material, int32 mapType, Texture2D texture);
	
	/// Update model animation pose (CPU)
	[CLink]
	public static extern void UpdateModelAnimation(Model model, ModelAnimation anim, int32 frame);
	
	/// Update model animation mesh bone matrices (GPU skinning)
	[CLink]
	public static extern void UpdateModelAnimationBones(Model model, ModelAnimation anim, int32 frame);
	
	/// Unload animation data
	[CLink]
	public static extern void UnloadModelAnimation(ModelAnimation anim);
	
	/// Check model animation skeleton match
	[CLink]
	public static extern bool IsModelAnimationValid(Model model, ModelAnimation anim);
	
	/// Check collision between two spheres
	[CLink]
	public static extern bool CheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2);
	
	/// Check collision between two bounding boxes
	[CLink]
	public static extern bool CheckCollisionBoxes(BoundingBox box1, BoundingBox box2);
	
	/// Check collision between box and sphere
	[CLink]
	public static extern bool CheckCollisionBoxSphere(BoundingBox @box, Vector3 center, float radius);
	
	/// Get collision info between ray and sphere
	[CLink]
	public static extern RayCollision GetRayCollisionSphere(Ray ray, Vector3 center, float radius);
	
	/// Get collision info between ray and box
	[CLink]
	public static extern RayCollision GetRayCollisionBox(Ray ray, BoundingBox @box);
	
	/// Get collision info between ray and mesh
	[CLink]
	public static extern RayCollision GetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform);
	
	/// Get collision info between ray and triangle
	[CLink]
	public static extern RayCollision GetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3);
	
	/// Get collision info between ray and quad
	[CLink]
	public static extern RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4);
	
	/// Checks if wave data is valid (data loaded and parameters)
	[CLink]
	public static extern bool IsWaveValid(Wave wave);
	
	/// Load sound from wave data
	[CLink]
	public static extern Sound LoadSoundFromWave(Wave wave);
	
	/// Create a new sound that shares the same sample data as the source sound, does not own the sound data
	[CLink]
	public static extern Sound LoadSoundAlias(Sound source);
	
	/// Checks if a sound is valid (data loaded and buffers initialized)
	[CLink]
	public static extern bool IsSoundValid(Sound sound);
	
	/// Update sound buffer with new data
	[CLink]
	public static extern void UpdateSound(Sound sound, void *data, int32 sampleCount);
	
	/// Unload wave data
	[CLink]
	public static extern void UnloadWave(Wave wave);
	
	/// Unload sound
	[CLink]
	public static extern void UnloadSound(Sound sound);
	
	/// Unload a sound alias (does not deallocate sample data)
	[CLink]
	public static extern void UnloadSoundAlias(Sound alias);
	
	/// Export wave data to file, returns true on success
	[CLink]
	public static extern bool ExportWave(Wave wave, char8 *fileName);
	
	/// Export wave sample data to code (.h), returns true on success
	[CLink]
	public static extern bool ExportWaveAsCode(Wave wave, char8 *fileName);
	
	/// Play a sound
	[CLink]
	public static extern void PlaySound(Sound sound);
	
	/// Stop playing a sound
	[CLink]
	public static extern void StopSound(Sound sound);
	
	/// Pause a sound
	[CLink]
	public static extern void PauseSound(Sound sound);
	
	/// Resume a paused sound
	[CLink]
	public static extern void ResumeSound(Sound sound);
	
	/// Check if a sound is currently playing
	[CLink]
	public static extern bool IsSoundPlaying(Sound sound);
	
	/// Set volume for a sound (1.0 is max level)
	[CLink]
	public static extern void SetSoundVolume(Sound sound, float volume);
	
	/// Set pitch for a sound (1.0 is base level)
	[CLink]
	public static extern void SetSoundPitch(Sound sound, float pitch);
	
	/// Set pan for a sound (0.5 is center)
	[CLink]
	public static extern void SetSoundPan(Sound sound, float pan);
	
	/// Copy a wave to a new wave
	[CLink]
	public static extern Wave WaveCopy(Wave wave);
	
	/// Load samples data from wave as a 32bit float data array
	[CLink]
	public static extern float * LoadWaveSamples(Wave wave);
	
	/// Checks if a music stream is valid (context and buffers initialized)
	[CLink]
	public static extern bool IsMusicValid(Music music);
	
	/// Unload music stream
	[CLink]
	public static extern void UnloadMusicStream(Music music);
	
	/// Start music playing
	[CLink]
	public static extern void PlayMusicStream(Music music);
	
	/// Check if music is playing
	[CLink]
	public static extern bool IsMusicStreamPlaying(Music music);
	
	/// Updates buffers for music streaming
	[CLink]
	public static extern void UpdateMusicStream(Music music);
	
	/// Stop music playing
	[CLink]
	public static extern void StopMusicStream(Music music);
	
	/// Pause music playing
	[CLink]
	public static extern void PauseMusicStream(Music music);
	
	/// Resume playing paused music
	[CLink]
	public static extern void ResumeMusicStream(Music music);
	
	/// Seek music to a position (in seconds)
	[CLink]
	public static extern void SeekMusicStream(Music music, float position);
	
	/// Set volume for music (1.0 is max level)
	[CLink]
	public static extern void SetMusicVolume(Music music, float volume);
	
	/// Set pitch for a music (1.0 is base level)
	[CLink]
	public static extern void SetMusicPitch(Music music, float pitch);
	
	/// Set pan for a music (0.5 is center)
	[CLink]
	public static extern void SetMusicPan(Music music, float pan);
	
	/// Get music time length (in seconds)
	[CLink]
	public static extern float GetMusicTimeLength(Music music);
	
	/// Get current music time played (in seconds)
	[CLink]
	public static extern float GetMusicTimePlayed(Music music);
	
	/// Checks if an audio stream is valid (buffers initialized)
	[CLink]
	public static extern bool IsAudioStreamValid(AudioStream stream);
	
	/// Unload audio stream and free memory
	[CLink]
	public static extern void UnloadAudioStream(AudioStream stream);
	
	/// Update audio stream buffers with data
	[CLink]
	public static extern void UpdateAudioStream(AudioStream stream, void *data, int32 frameCount);
	
	/// Check if any audio stream buffers requires refill
	[CLink]
	public static extern bool IsAudioStreamProcessed(AudioStream stream);
	
	/// Play audio stream
	[CLink]
	public static extern void PlayAudioStream(AudioStream stream);
	
	/// Pause audio stream
	[CLink]
	public static extern void PauseAudioStream(AudioStream stream);
	
	/// Resume audio stream
	[CLink]
	public static extern void ResumeAudioStream(AudioStream stream);
	
	/// Check if audio stream is playing
	[CLink]
	public static extern bool IsAudioStreamPlaying(AudioStream stream);
	
	/// Stop audio stream
	[CLink]
	public static extern void StopAudioStream(AudioStream stream);
	
	/// Set volume for audio stream (1.0 is max level)
	[CLink]
	public static extern void SetAudioStreamVolume(AudioStream stream, float volume);
	
	/// Set pitch for audio stream (1.0 is base level)
	[CLink]
	public static extern void SetAudioStreamPitch(AudioStream stream, float pitch);
	
	/// Set pan for audio stream (0.5 is centered)
	[CLink]
	public static extern void SetAudioStreamPan(AudioStream stream, float pan);
	
	/// Audio thread callback to request new data
	[CLink]
	public static extern void SetAudioStreamCallback(AudioStream stream, AudioCallback callback);
	
	/// Attach audio stream processor to stream, receives the samples as 'float'
	[CLink]
	public static extern void AttachAudioStreamProcessor(AudioStream stream, AudioCallback processor);
	
	/// Detach audio stream processor from stream
	[CLink]
	public static extern void DetachAudioStreamProcessor(AudioStream stream, AudioCallback processor);
	
#else
	
	/// Set icon for window (single image, RGBA 32bit)
	[Inline]
	public static void SetWindowIcon(Image image)
	{
		SetWindowIcon_Impl(image);
	}
	[LinkName("SetWindowIcon")]
	private static extern void SetWindowIcon_Impl(in Image image);
	
	/// Set background color (framebuffer clear color)
	[Inline]
	public static void ClearBackground(Color color)
	{
		ClearBackground_Impl(color);
	}
	[LinkName("ClearBackground")]
	private static extern void ClearBackground_Impl(in Color color);
	
	/// Begin 2D mode with custom camera (2D)
	[Inline]
	public static void BeginMode2D(Camera2D camera)
	{
		BeginMode2D_Impl(camera);
	}
	[LinkName("BeginMode2D")]
	private static extern void BeginMode2D_Impl(in Camera2D camera);
	
	/// Begin 3D mode with custom camera (3D)
	[Inline]
	public static void BeginMode3D(Camera3D camera)
	{
		BeginMode3D_Impl(camera);
	}
	[LinkName("BeginMode3D")]
	private static extern void BeginMode3D_Impl(in Camera3D camera);
	
	/// Begin drawing to render texture
	[Inline]
	public static void BeginTextureMode(RenderTexture2D target)
	{
		BeginTextureMode_Impl(target);
	}
	[LinkName("BeginTextureMode")]
	private static extern void BeginTextureMode_Impl(in RenderTexture2D target);
	
	/// Begin custom shader drawing
	[Inline]
	public static void BeginShaderMode(Shader shader)
	{
		BeginShaderMode_Impl(shader);
	}
	[LinkName("BeginShaderMode")]
	private static extern void BeginShaderMode_Impl(in Shader shader);
	
	/// Begin stereo rendering (requires VR simulator)
	[Inline]
	public static void BeginVrStereoMode(VrStereoConfig config)
	{
		BeginVrStereoMode_Impl(config);
	}
	[LinkName("BeginVrStereoMode")]
	private static extern void BeginVrStereoMode_Impl(in VrStereoConfig config);
	
	/// Load VR stereo config for VR simulator device parameters
	[Inline]
	public static VrStereoConfig LoadVrStereoConfig(VrDeviceInfo device)
	{
		return LoadVrStereoConfig_Impl(device);
	}
	[LinkName("LoadVrStereoConfig")]
	private static extern VrStereoConfig LoadVrStereoConfig_Impl(in VrDeviceInfo device);
	
	/// Unload VR stereo config
	[Inline]
	public static void UnloadVrStereoConfig(VrStereoConfig config)
	{
		UnloadVrStereoConfig_Impl(config);
	}
	[LinkName("UnloadVrStereoConfig")]
	private static extern void UnloadVrStereoConfig_Impl(in VrStereoConfig config);
	
	/// Check if a shader is valid (loaded on GPU)
	[Inline]
	public static bool IsShaderValid(Shader shader)
	{
		return IsShaderValid_Impl(shader);
	}
	[LinkName("IsShaderValid")]
	private static extern bool IsShaderValid_Impl(in Shader shader);
	
	/// Get shader uniform location
	[Inline]
	public static int32 GetShaderLocation(Shader shader, char8 *uniformName)
	{
		return GetShaderLocation_Impl(shader, uniformName);
	}
	[LinkName("GetShaderLocation")]
	private static extern int32 GetShaderLocation_Impl(in Shader shader, char8 *uniformName);
	
	/// Get shader attribute location
	[Inline]
	public static int32 GetShaderLocationAttrib(Shader shader, char8 *attribName)
	{
		return GetShaderLocationAttrib_Impl(shader, attribName);
	}
	[LinkName("GetShaderLocationAttrib")]
	private static extern int32 GetShaderLocationAttrib_Impl(in Shader shader, char8 *attribName);
	
	/// Set shader uniform value
	[Inline]
	public static void SetShaderValue(Shader shader, int32 locIndex, void *value, int32 uniformType)
	{
		SetShaderValue_Impl(shader, locIndex, value, uniformType);
	}
	[LinkName("SetShaderValue")]
	private static extern void SetShaderValue_Impl(in Shader shader, int32 locIndex, void *value, int32 uniformType);
	
	/// Set shader uniform value vector
	[Inline]
	public static void SetShaderValueV(Shader shader, int32 locIndex, void *value, int32 uniformType, int32 count)
	{
		SetShaderValueV_Impl(shader, locIndex, value, uniformType, count);
	}
	[LinkName("SetShaderValueV")]
	private static extern void SetShaderValueV_Impl(in Shader shader, int32 locIndex, void *value, int32 uniformType, int32 count);
	
	/// Set shader uniform value (matrix 4x4)
	[Inline]
	public static void SetShaderValueMatrix(Shader shader, int32 locIndex, Matrix mat)
	{
		SetShaderValueMatrix_Impl(shader, locIndex, mat);
	}
	[LinkName("SetShaderValueMatrix")]
	private static extern void SetShaderValueMatrix_Impl(in Shader shader, int32 locIndex, in Matrix mat);
	
	/// Set shader uniform value for texture (sampler2d)
	[Inline]
	public static void SetShaderValueTexture(Shader shader, int32 locIndex, Texture2D texture)
	{
		SetShaderValueTexture_Impl(shader, locIndex, texture);
	}
	[LinkName("SetShaderValueTexture")]
	private static extern void SetShaderValueTexture_Impl(in Shader shader, int32 locIndex, in Texture2D texture);
	
	/// Unload shader from GPU memory (VRAM)
	[Inline]
	public static void UnloadShader(Shader shader)
	{
		UnloadShader_Impl(shader);
	}
	[LinkName("UnloadShader")]
	private static extern void UnloadShader_Impl(in Shader shader);
	
	/// Get a ray trace from screen position (i.e mouse)
	[Inline]
	public static Ray GetScreenToWorldRay(Vector2 position, Camera camera)
	{
		return GetScreenToWorldRay_Impl(position, camera);
	}
	[LinkName("GetScreenToWorldRay")]
	private static extern Ray GetScreenToWorldRay_Impl(in Vector2 position, in Camera camera);
	
	/// Get a ray trace from screen position (i.e mouse) in a viewport
	[Inline]
	public static Ray GetScreenToWorldRayEx(Vector2 position, Camera camera, int32 width, int32 height)
	{
		return GetScreenToWorldRayEx_Impl(position, camera, width, height);
	}
	[LinkName("GetScreenToWorldRayEx")]
	private static extern Ray GetScreenToWorldRayEx_Impl(in Vector2 position, in Camera camera, int32 width, int32 height);
	
	/// Get the screen space position for a 3d world space position
	[Inline]
	public static Vector2 GetWorldToScreen(Vector3 position, Camera camera)
	{
		return GetWorldToScreen_Impl(position, camera);
	}
	[LinkName("GetWorldToScreen")]
	private static extern Vector2 GetWorldToScreen_Impl(in Vector3 position, in Camera camera);
	
	/// Get size position for a 3d world space position
	[Inline]
	public static Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int32 width, int32 height)
	{
		return GetWorldToScreenEx_Impl(position, camera, width, height);
	}
	[LinkName("GetWorldToScreenEx")]
	private static extern Vector2 GetWorldToScreenEx_Impl(in Vector3 position, in Camera camera, int32 width, int32 height);
	
	/// Get the screen space position for a 2d camera world space position
	[Inline]
	public static Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera)
	{
		return GetWorldToScreen2D_Impl(position, camera);
	}
	[LinkName("GetWorldToScreen2D")]
	private static extern Vector2 GetWorldToScreen2D_Impl(in Vector2 position, in Camera2D camera);
	
	/// Get the world space position for a 2d camera screen space position
	[Inline]
	public static Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera)
	{
		return GetScreenToWorld2D_Impl(position, camera);
	}
	[LinkName("GetScreenToWorld2D")]
	private static extern Vector2 GetScreenToWorld2D_Impl(in Vector2 position, in Camera2D camera);
	
	/// Get camera transform matrix (view matrix)
	[Inline]
	public static Matrix GetCameraMatrix(Camera camera)
	{
		return GetCameraMatrix_Impl(camera);
	}
	[LinkName("GetCameraMatrix")]
	private static extern Matrix GetCameraMatrix_Impl(in Camera camera);
	
	/// Get camera 2d transform matrix
	[Inline]
	public static Matrix GetCameraMatrix2D(Camera2D camera)
	{
		return GetCameraMatrix2D_Impl(camera);
	}
	[LinkName("GetCameraMatrix2D")]
	private static extern Matrix GetCameraMatrix2D_Impl(in Camera2D camera);
	
	/// Unload filepaths
	[Inline]
	public static void UnloadDirectoryFiles(FilePathList files)
	{
		UnloadDirectoryFiles_Impl(files);
	}
	[LinkName("UnloadDirectoryFiles")]
	private static extern void UnloadDirectoryFiles_Impl(in FilePathList files);
	
	/// Unload dropped filepaths
	[Inline]
	public static void UnloadDroppedFiles(FilePathList files)
	{
		UnloadDroppedFiles_Impl(files);
	}
	[LinkName("UnloadDroppedFiles")]
	private static extern void UnloadDroppedFiles_Impl(in FilePathList files);
	
	/// Unload automation events list from file
	[Inline]
	public static void UnloadAutomationEventList(AutomationEventList list)
	{
		UnloadAutomationEventList_Impl(list);
	}
	[LinkName("UnloadAutomationEventList")]
	private static extern void UnloadAutomationEventList_Impl(in AutomationEventList list);
	
	/// Export automation events list as text file
	[Inline]
	public static bool ExportAutomationEventList(AutomationEventList list, char8 *fileName)
	{
		return ExportAutomationEventList_Impl(list, fileName);
	}
	[LinkName("ExportAutomationEventList")]
	private static extern bool ExportAutomationEventList_Impl(in AutomationEventList list, char8 *fileName);
	
	/// Play a recorded automation event
	[Inline]
	public static void PlayAutomationEvent(AutomationEvent event)
	{
		PlayAutomationEvent_Impl(event);
	}
	[LinkName("PlayAutomationEvent")]
	private static extern void PlayAutomationEvent_Impl(in AutomationEvent event);
	
	/// Update camera movement/rotation
	[Inline]
	public static void UpdateCameraPro(Camera *camera, Vector3 movement, Vector3 rotation, float zoom)
	{
		UpdateCameraPro_Impl(camera, movement, rotation, zoom);
	}
	[LinkName("UpdateCameraPro")]
	private static extern void UpdateCameraPro_Impl(Camera *camera, in Vector3 movement, in Vector3 rotation, float zoom);
	
	/// Set texture and rectangle to be used on shapes drawing
	[Inline]
	public static void SetShapesTexture(Texture2D texture, Rectangle source)
	{
		SetShapesTexture_Impl(texture, source);
	}
	[LinkName("SetShapesTexture")]
	private static extern void SetShapesTexture_Impl(in Texture2D texture, in Rectangle source);
	
	/// Draw a pixel using geometry [Can be slow, use with care]
	[Inline]
	public static void DrawPixel(int32 posX, int32 posY, Color color)
	{
		DrawPixel_Impl(posX, posY, color);
	}
	[LinkName("DrawPixel")]
	private static extern void DrawPixel_Impl(int32 posX, int32 posY, in Color color);
	
	/// Draw a pixel using geometry (Vector version) [Can be slow, use with care]
	[Inline]
	public static void DrawPixelV(Vector2 position, Color color)
	{
		DrawPixelV_Impl(position, color);
	}
	[LinkName("DrawPixelV")]
	private static extern void DrawPixelV_Impl(in Vector2 position, in Color color);
	
	/// Draw a line
	[Inline]
	public static void DrawLine(int32 startPosX, int32 startPosY, int32 endPosX, int32 endPosY, Color color)
	{
		DrawLine_Impl(startPosX, startPosY, endPosX, endPosY, color);
	}
	[LinkName("DrawLine")]
	private static extern void DrawLine_Impl(int32 startPosX, int32 startPosY, int32 endPosX, int32 endPosY, in Color color);
	
	/// Draw a line (using gl lines)
	[Inline]
	public static void DrawLineV(Vector2 startPos, Vector2 endPos, Color color)
	{
		DrawLineV_Impl(startPos, endPos, color);
	}
	[LinkName("DrawLineV")]
	private static extern void DrawLineV_Impl(in Vector2 startPos, in Vector2 endPos, in Color color);
	
	/// Draw a line (using triangles/quads)
	[Inline]
	public static void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color)
	{
		DrawLineEx_Impl(startPos, endPos, thick, color);
	}
	[LinkName("DrawLineEx")]
	private static extern void DrawLineEx_Impl(in Vector2 startPos, in Vector2 endPos, float thick, in Color color);
	
	/// Draw lines sequence (using gl lines)
	[Inline]
	public static void DrawLineStrip(Vector2 *points, int32 pointCount, Color color)
	{
		DrawLineStrip_Impl(points, pointCount, color);
	}
	[LinkName("DrawLineStrip")]
	private static extern void DrawLineStrip_Impl(Vector2 *points, int32 pointCount, in Color color);
	
	/// Draw line segment cubic-bezier in-out interpolation
	[Inline]
	public static void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color)
	{
		DrawLineBezier_Impl(startPos, endPos, thick, color);
	}
	[LinkName("DrawLineBezier")]
	private static extern void DrawLineBezier_Impl(in Vector2 startPos, in Vector2 endPos, float thick, in Color color);
	
	/// Draw a color-filled circle
	[Inline]
	public static void DrawCircle(int32 centerX, int32 centerY, float radius, Color color)
	{
		DrawCircle_Impl(centerX, centerY, radius, color);
	}
	[LinkName("DrawCircle")]
	private static extern void DrawCircle_Impl(int32 centerX, int32 centerY, float radius, in Color color);
	
	/// Draw a piece of a circle
	[Inline]
	public static void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int32 segments, Color color)
	{
		DrawCircleSector_Impl(center, radius, startAngle, endAngle, segments, color);
	}
	[LinkName("DrawCircleSector")]
	private static extern void DrawCircleSector_Impl(in Vector2 center, float radius, float startAngle, float endAngle, int32 segments, in Color color);
	
	/// Draw circle sector outline
	[Inline]
	public static void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int32 segments, Color color)
	{
		DrawCircleSectorLines_Impl(center, radius, startAngle, endAngle, segments, color);
	}
	[LinkName("DrawCircleSectorLines")]
	private static extern void DrawCircleSectorLines_Impl(in Vector2 center, float radius, float startAngle, float endAngle, int32 segments, in Color color);
	
	/// Draw a gradient-filled circle
	[Inline]
	public static void DrawCircleGradient(int32 centerX, int32 centerY, float radius, Color inner, Color outer)
	{
		DrawCircleGradient_Impl(centerX, centerY, radius, inner, outer);
	}
	[LinkName("DrawCircleGradient")]
	private static extern void DrawCircleGradient_Impl(int32 centerX, int32 centerY, float radius, in Color inner, in Color outer);
	
	/// Draw a color-filled circle (Vector version)
	[Inline]
	public static void DrawCircleV(Vector2 center, float radius, Color color)
	{
		DrawCircleV_Impl(center, radius, color);
	}
	[LinkName("DrawCircleV")]
	private static extern void DrawCircleV_Impl(in Vector2 center, float radius, in Color color);
	
	/// Draw circle outline
	[Inline]
	public static void DrawCircleLines(int32 centerX, int32 centerY, float radius, Color color)
	{
		DrawCircleLines_Impl(centerX, centerY, radius, color);
	}
	[LinkName("DrawCircleLines")]
	private static extern void DrawCircleLines_Impl(int32 centerX, int32 centerY, float radius, in Color color);
	
	/// Draw circle outline (Vector version)
	[Inline]
	public static void DrawCircleLinesV(Vector2 center, float radius, Color color)
	{
		DrawCircleLinesV_Impl(center, radius, color);
	}
	[LinkName("DrawCircleLinesV")]
	private static extern void DrawCircleLinesV_Impl(in Vector2 center, float radius, in Color color);
	
	/// Draw ellipse
	[Inline]
	public static void DrawEllipse(int32 centerX, int32 centerY, float radiusH, float radiusV, Color color)
	{
		DrawEllipse_Impl(centerX, centerY, radiusH, radiusV, color);
	}
	[LinkName("DrawEllipse")]
	private static extern void DrawEllipse_Impl(int32 centerX, int32 centerY, float radiusH, float radiusV, in Color color);
	
	/// Draw ellipse outline
	[Inline]
	public static void DrawEllipseLines(int32 centerX, int32 centerY, float radiusH, float radiusV, Color color)
	{
		DrawEllipseLines_Impl(centerX, centerY, radiusH, radiusV, color);
	}
	[LinkName("DrawEllipseLines")]
	private static extern void DrawEllipseLines_Impl(int32 centerX, int32 centerY, float radiusH, float radiusV, in Color color);
	
	/// Draw ring
	[Inline]
	public static void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int32 segments, Color color)
	{
		DrawRing_Impl(center, innerRadius, outerRadius, startAngle, endAngle, segments, color);
	}
	[LinkName("DrawRing")]
	private static extern void DrawRing_Impl(in Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int32 segments, in Color color);
	
	/// Draw ring outline
	[Inline]
	public static void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int32 segments, Color color)
	{
		DrawRingLines_Impl(center, innerRadius, outerRadius, startAngle, endAngle, segments, color);
	}
	[LinkName("DrawRingLines")]
	private static extern void DrawRingLines_Impl(in Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int32 segments, in Color color);
	
	/// Draw a color-filled rectangle
	[Inline]
	public static void DrawRectangle(int32 posX, int32 posY, int32 width, int32 height, Color color)
	{
		DrawRectangle_Impl(posX, posY, width, height, color);
	}
	[LinkName("DrawRectangle")]
	private static extern void DrawRectangle_Impl(int32 posX, int32 posY, int32 width, int32 height, in Color color);
	
	/// Draw a color-filled rectangle (Vector version)
	[Inline]
	public static void DrawRectangleV(Vector2 position, Vector2 size, Color color)
	{
		DrawRectangleV_Impl(position, size, color);
	}
	[LinkName("DrawRectangleV")]
	private static extern void DrawRectangleV_Impl(in Vector2 position, in Vector2 size, in Color color);
	
	/// Draw a color-filled rectangle
	[Inline]
	public static void DrawRectangleRec(Rectangle rec, Color color)
	{
		DrawRectangleRec_Impl(rec, color);
	}
	[LinkName("DrawRectangleRec")]
	private static extern void DrawRectangleRec_Impl(in Rectangle rec, in Color color);
	
	/// Draw a color-filled rectangle with pro parameters
	[Inline]
	public static void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color)
	{
		DrawRectanglePro_Impl(rec, origin, rotation, color);
	}
	[LinkName("DrawRectanglePro")]
	private static extern void DrawRectanglePro_Impl(in Rectangle rec, in Vector2 origin, float rotation, in Color color);
	
	/// Draw a vertical-gradient-filled rectangle
	[Inline]
	public static void DrawRectangleGradientV(int32 posX, int32 posY, int32 width, int32 height, Color top, Color bottom)
	{
		DrawRectangleGradientV_Impl(posX, posY, width, height, top, bottom);
	}
	[LinkName("DrawRectangleGradientV")]
	private static extern void DrawRectangleGradientV_Impl(int32 posX, int32 posY, int32 width, int32 height, in Color top, in Color bottom);
	
	/// Draw a horizontal-gradient-filled rectangle
	[Inline]
	public static void DrawRectangleGradientH(int32 posX, int32 posY, int32 width, int32 height, Color left, Color right)
	{
		DrawRectangleGradientH_Impl(posX, posY, width, height, left, right);
	}
	[LinkName("DrawRectangleGradientH")]
	private static extern void DrawRectangleGradientH_Impl(int32 posX, int32 posY, int32 width, int32 height, in Color left, in Color right);
	
	/// Draw a gradient-filled rectangle with custom vertex colors
	[Inline]
	public static void DrawRectangleGradientEx(Rectangle rec, Color topLeft, Color bottomLeft, Color topRight, Color bottomRight)
	{
		DrawRectangleGradientEx_Impl(rec, topLeft, bottomLeft, topRight, bottomRight);
	}
	[LinkName("DrawRectangleGradientEx")]
	private static extern void DrawRectangleGradientEx_Impl(in Rectangle rec, in Color topLeft, in Color bottomLeft, in Color topRight, in Color bottomRight);
	
	/// Draw rectangle outline
	[Inline]
	public static void DrawRectangleLines(int32 posX, int32 posY, int32 width, int32 height, Color color)
	{
		DrawRectangleLines_Impl(posX, posY, width, height, color);
	}
	[LinkName("DrawRectangleLines")]
	private static extern void DrawRectangleLines_Impl(int32 posX, int32 posY, int32 width, int32 height, in Color color);
	
	/// Draw rectangle outline with extended parameters
	[Inline]
	public static void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color)
	{
		DrawRectangleLinesEx_Impl(rec, lineThick, color);
	}
	[LinkName("DrawRectangleLinesEx")]
	private static extern void DrawRectangleLinesEx_Impl(in Rectangle rec, float lineThick, in Color color);
	
	/// Draw rectangle with rounded edges
	[Inline]
	public static void DrawRectangleRounded(Rectangle rec, float roundness, int32 segments, Color color)
	{
		DrawRectangleRounded_Impl(rec, roundness, segments, color);
	}
	[LinkName("DrawRectangleRounded")]
	private static extern void DrawRectangleRounded_Impl(in Rectangle rec, float roundness, int32 segments, in Color color);
	
	/// Draw rectangle lines with rounded edges
	[Inline]
	public static void DrawRectangleRoundedLines(Rectangle rec, float roundness, int32 segments, Color color)
	{
		DrawRectangleRoundedLines_Impl(rec, roundness, segments, color);
	}
	[LinkName("DrawRectangleRoundedLines")]
	private static extern void DrawRectangleRoundedLines_Impl(in Rectangle rec, float roundness, int32 segments, in Color color);
	
	/// Draw rectangle with rounded edges outline
	[Inline]
	public static void DrawRectangleRoundedLinesEx(Rectangle rec, float roundness, int32 segments, float lineThick, Color color)
	{
		DrawRectangleRoundedLinesEx_Impl(rec, roundness, segments, lineThick, color);
	}
	[LinkName("DrawRectangleRoundedLinesEx")]
	private static extern void DrawRectangleRoundedLinesEx_Impl(in Rectangle rec, float roundness, int32 segments, float lineThick, in Color color);
	
	/// Draw a color-filled triangle (vertex in counter-clockwise order!)
	[Inline]
	public static void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color)
	{
		DrawTriangle_Impl(v1, v2, v3, color);
	}
	[LinkName("DrawTriangle")]
	private static extern void DrawTriangle_Impl(in Vector2 v1, in Vector2 v2, in Vector2 v3, in Color color);
	
	/// Draw triangle outline (vertex in counter-clockwise order!)
	[Inline]
	public static void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color)
	{
		DrawTriangleLines_Impl(v1, v2, v3, color);
	}
	[LinkName("DrawTriangleLines")]
	private static extern void DrawTriangleLines_Impl(in Vector2 v1, in Vector2 v2, in Vector2 v3, in Color color);
	
	/// Draw a triangle fan defined by points (first vertex is the center)
	[Inline]
	public static void DrawTriangleFan(Vector2 *points, int32 pointCount, Color color)
	{
		DrawTriangleFan_Impl(points, pointCount, color);
	}
	[LinkName("DrawTriangleFan")]
	private static extern void DrawTriangleFan_Impl(Vector2 *points, int32 pointCount, in Color color);
	
	/// Draw a triangle strip defined by points
	[Inline]
	public static void DrawTriangleStrip(Vector2 *points, int32 pointCount, Color color)
	{
		DrawTriangleStrip_Impl(points, pointCount, color);
	}
	[LinkName("DrawTriangleStrip")]
	private static extern void DrawTriangleStrip_Impl(Vector2 *points, int32 pointCount, in Color color);
	
	/// Draw a regular polygon (Vector version)
	[Inline]
	public static void DrawPoly(Vector2 center, int32 sides, float radius, float rotation, Color color)
	{
		DrawPoly_Impl(center, sides, radius, rotation, color);
	}
	[LinkName("DrawPoly")]
	private static extern void DrawPoly_Impl(in Vector2 center, int32 sides, float radius, float rotation, in Color color);
	
	/// Draw a polygon outline of n sides
	[Inline]
	public static void DrawPolyLines(Vector2 center, int32 sides, float radius, float rotation, Color color)
	{
		DrawPolyLines_Impl(center, sides, radius, rotation, color);
	}
	[LinkName("DrawPolyLines")]
	private static extern void DrawPolyLines_Impl(in Vector2 center, int32 sides, float radius, float rotation, in Color color);
	
	/// Draw a polygon outline of n sides with extended parameters
	[Inline]
	public static void DrawPolyLinesEx(Vector2 center, int32 sides, float radius, float rotation, float lineThick, Color color)
	{
		DrawPolyLinesEx_Impl(center, sides, radius, rotation, lineThick, color);
	}
	[LinkName("DrawPolyLinesEx")]
	private static extern void DrawPolyLinesEx_Impl(in Vector2 center, int32 sides, float radius, float rotation, float lineThick, in Color color);
	
	/// Draw spline: Linear, minimum 2 points
	[Inline]
	public static void DrawSplineLinear(Vector2 *points, int32 pointCount, float thick, Color color)
	{
		DrawSplineLinear_Impl(points, pointCount, thick, color);
	}
	[LinkName("DrawSplineLinear")]
	private static extern void DrawSplineLinear_Impl(Vector2 *points, int32 pointCount, float thick, in Color color);
	
	/// Draw spline: B-Spline, minimum 4 points
	[Inline]
	public static void DrawSplineBasis(Vector2 *points, int32 pointCount, float thick, Color color)
	{
		DrawSplineBasis_Impl(points, pointCount, thick, color);
	}
	[LinkName("DrawSplineBasis")]
	private static extern void DrawSplineBasis_Impl(Vector2 *points, int32 pointCount, float thick, in Color color);
	
	/// Draw spline: Catmull-Rom, minimum 4 points
	[Inline]
	public static void DrawSplineCatmullRom(Vector2 *points, int32 pointCount, float thick, Color color)
	{
		DrawSplineCatmullRom_Impl(points, pointCount, thick, color);
	}
	[LinkName("DrawSplineCatmullRom")]
	private static extern void DrawSplineCatmullRom_Impl(Vector2 *points, int32 pointCount, float thick, in Color color);
	
	/// Draw spline: Quadratic Bezier, minimum 3 points (1 control point): [p1, c2, p3, c4...]
	[Inline]
	public static void DrawSplineBezierQuadratic(Vector2 *points, int32 pointCount, float thick, Color color)
	{
		DrawSplineBezierQuadratic_Impl(points, pointCount, thick, color);
	}
	[LinkName("DrawSplineBezierQuadratic")]
	private static extern void DrawSplineBezierQuadratic_Impl(Vector2 *points, int32 pointCount, float thick, in Color color);
	
	/// Draw spline: Cubic Bezier, minimum 4 points (2 control points): [p1, c2, c3, p4, c5, c6...]
	[Inline]
	public static void DrawSplineBezierCubic(Vector2 *points, int32 pointCount, float thick, Color color)
	{
		DrawSplineBezierCubic_Impl(points, pointCount, thick, color);
	}
	[LinkName("DrawSplineBezierCubic")]
	private static extern void DrawSplineBezierCubic_Impl(Vector2 *points, int32 pointCount, float thick, in Color color);
	
	/// Draw spline segment: Linear, 2 points
	[Inline]
	public static void DrawSplineSegmentLinear(Vector2 p1, Vector2 p2, float thick, Color color)
	{
		DrawSplineSegmentLinear_Impl(p1, p2, thick, color);
	}
	[LinkName("DrawSplineSegmentLinear")]
	private static extern void DrawSplineSegmentLinear_Impl(in Vector2 p1, in Vector2 p2, float thick, in Color color);
	
	/// Draw spline segment: B-Spline, 4 points
	[Inline]
	public static void DrawSplineSegmentBasis(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color)
	{
		DrawSplineSegmentBasis_Impl(p1, p2, p3, p4, thick, color);
	}
	[LinkName("DrawSplineSegmentBasis")]
	private static extern void DrawSplineSegmentBasis_Impl(in Vector2 p1, in Vector2 p2, in Vector2 p3, in Vector2 p4, float thick, in Color color);
	
	/// Draw spline segment: Catmull-Rom, 4 points
	[Inline]
	public static void DrawSplineSegmentCatmullRom(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color)
	{
		DrawSplineSegmentCatmullRom_Impl(p1, p2, p3, p4, thick, color);
	}
	[LinkName("DrawSplineSegmentCatmullRom")]
	private static extern void DrawSplineSegmentCatmullRom_Impl(in Vector2 p1, in Vector2 p2, in Vector2 p3, in Vector2 p4, float thick, in Color color);
	
	/// Draw spline segment: Quadratic Bezier, 2 points, 1 control point
	[Inline]
	public static void DrawSplineSegmentBezierQuadratic(Vector2 p1, Vector2 c2, Vector2 p3, float thick, Color color)
	{
		DrawSplineSegmentBezierQuadratic_Impl(p1, c2, p3, thick, color);
	}
	[LinkName("DrawSplineSegmentBezierQuadratic")]
	private static extern void DrawSplineSegmentBezierQuadratic_Impl(in Vector2 p1, in Vector2 c2, in Vector2 p3, float thick, in Color color);
	
	/// Draw spline segment: Cubic Bezier, 2 points, 2 control points
	[Inline]
	public static void DrawSplineSegmentBezierCubic(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float thick, Color color)
	{
		DrawSplineSegmentBezierCubic_Impl(p1, c2, c3, p4, thick, color);
	}
	[LinkName("DrawSplineSegmentBezierCubic")]
	private static extern void DrawSplineSegmentBezierCubic_Impl(in Vector2 p1, in Vector2 c2, in Vector2 c3, in Vector2 p4, float thick, in Color color);
	
	/// Get (evaluate) spline point: Linear
	[Inline]
	public static Vector2 GetSplinePointLinear(Vector2 startPos, Vector2 endPos, float t)
	{
		return GetSplinePointLinear_Impl(startPos, endPos, t);
	}
	[LinkName("GetSplinePointLinear")]
	private static extern Vector2 GetSplinePointLinear_Impl(in Vector2 startPos, in Vector2 endPos, float t);
	
	/// Get (evaluate) spline point: B-Spline
	[Inline]
	public static Vector2 GetSplinePointBasis(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t)
	{
		return GetSplinePointBasis_Impl(p1, p2, p3, p4, t);
	}
	[LinkName("GetSplinePointBasis")]
	private static extern Vector2 GetSplinePointBasis_Impl(in Vector2 p1, in Vector2 p2, in Vector2 p3, in Vector2 p4, float t);
	
	/// Get (evaluate) spline point: Catmull-Rom
	[Inline]
	public static Vector2 GetSplinePointCatmullRom(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t)
	{
		return GetSplinePointCatmullRom_Impl(p1, p2, p3, p4, t);
	}
	[LinkName("GetSplinePointCatmullRom")]
	private static extern Vector2 GetSplinePointCatmullRom_Impl(in Vector2 p1, in Vector2 p2, in Vector2 p3, in Vector2 p4, float t);
	
	/// Get (evaluate) spline point: Quadratic Bezier
	[Inline]
	public static Vector2 GetSplinePointBezierQuad(Vector2 p1, Vector2 c2, Vector2 p3, float t)
	{
		return GetSplinePointBezierQuad_Impl(p1, c2, p3, t);
	}
	[LinkName("GetSplinePointBezierQuad")]
	private static extern Vector2 GetSplinePointBezierQuad_Impl(in Vector2 p1, in Vector2 c2, in Vector2 p3, float t);
	
	/// Get (evaluate) spline point: Cubic Bezier
	[Inline]
	public static Vector2 GetSplinePointBezierCubic(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float t)
	{
		return GetSplinePointBezierCubic_Impl(p1, c2, c3, p4, t);
	}
	[LinkName("GetSplinePointBezierCubic")]
	private static extern Vector2 GetSplinePointBezierCubic_Impl(in Vector2 p1, in Vector2 c2, in Vector2 c3, in Vector2 p4, float t);
	
	/// Check collision between two rectangles
	[Inline]
	public static bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2)
	{
		return CheckCollisionRecs_Impl(rec1, rec2);
	}
	[LinkName("CheckCollisionRecs")]
	private static extern bool CheckCollisionRecs_Impl(in Rectangle rec1, in Rectangle rec2);
	
	/// Check collision between two circles
	[Inline]
	public static bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2)
	{
		return CheckCollisionCircles_Impl(center1, radius1, center2, radius2);
	}
	[LinkName("CheckCollisionCircles")]
	private static extern bool CheckCollisionCircles_Impl(in Vector2 center1, float radius1, in Vector2 center2, float radius2);
	
	/// Check collision between circle and rectangle
	[Inline]
	public static bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec)
	{
		return CheckCollisionCircleRec_Impl(center, radius, rec);
	}
	[LinkName("CheckCollisionCircleRec")]
	private static extern bool CheckCollisionCircleRec_Impl(in Vector2 center, float radius, in Rectangle rec);
	
	/// Check if circle collides with a line created betweeen two points [p1] and [p2]
	[Inline]
	public static bool CheckCollisionCircleLine(Vector2 center, float radius, Vector2 p1, Vector2 p2)
	{
		return CheckCollisionCircleLine_Impl(center, radius, p1, p2);
	}
	[LinkName("CheckCollisionCircleLine")]
	private static extern bool CheckCollisionCircleLine_Impl(in Vector2 center, float radius, in Vector2 p1, in Vector2 p2);
	
	/// Check if point is inside rectangle
	[Inline]
	public static bool CheckCollisionPointRec(Vector2 point, Rectangle rec)
	{
		return CheckCollisionPointRec_Impl(point, rec);
	}
	[LinkName("CheckCollisionPointRec")]
	private static extern bool CheckCollisionPointRec_Impl(in Vector2 point, in Rectangle rec);
	
	/// Check if point is inside circle
	[Inline]
	public static bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius)
	{
		return CheckCollisionPointCircle_Impl(point, center, radius);
	}
	[LinkName("CheckCollisionPointCircle")]
	private static extern bool CheckCollisionPointCircle_Impl(in Vector2 point, in Vector2 center, float radius);
	
	/// Check if point is inside a triangle
	[Inline]
	public static bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3)
	{
		return CheckCollisionPointTriangle_Impl(point, p1, p2, p3);
	}
	[LinkName("CheckCollisionPointTriangle")]
	private static extern bool CheckCollisionPointTriangle_Impl(in Vector2 point, in Vector2 p1, in Vector2 p2, in Vector2 p3);
	
	/// Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
	[Inline]
	public static bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int32 threshold)
	{
		return CheckCollisionPointLine_Impl(point, p1, p2, threshold);
	}
	[LinkName("CheckCollisionPointLine")]
	private static extern bool CheckCollisionPointLine_Impl(in Vector2 point, in Vector2 p1, in Vector2 p2, int32 threshold);
	
	/// Check if point is within a polygon described by array of vertices
	[Inline]
	public static bool CheckCollisionPointPoly(Vector2 point, Vector2 *points, int32 pointCount)
	{
		return CheckCollisionPointPoly_Impl(point, points, pointCount);
	}
	[LinkName("CheckCollisionPointPoly")]
	private static extern bool CheckCollisionPointPoly_Impl(in Vector2 point, Vector2 *points, int32 pointCount);
	
	/// Check the collision between two lines defined by two points each, returns collision point by reference
	[Inline]
	public static bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 *collisionPoint)
	{
		return CheckCollisionLines_Impl(startPos1, endPos1, startPos2, endPos2, collisionPoint);
	}
	[LinkName("CheckCollisionLines")]
	private static extern bool CheckCollisionLines_Impl(in Vector2 startPos1, in Vector2 endPos1, in Vector2 startPos2, in Vector2 endPos2, Vector2 *collisionPoint);
	
	/// Get collision rectangle for two rectangles collision
	[Inline]
	public static Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2)
	{
		return GetCollisionRec_Impl(rec1, rec2);
	}
	[LinkName("GetCollisionRec")]
	private static extern Rectangle GetCollisionRec_Impl(in Rectangle rec1, in Rectangle rec2);
	
	/// Load image from GPU texture data
	[Inline]
	public static Image LoadImageFromTexture(Texture2D texture)
	{
		return LoadImageFromTexture_Impl(texture);
	}
	[LinkName("LoadImageFromTexture")]
	private static extern Image LoadImageFromTexture_Impl(in Texture2D texture);
	
	/// Check if an image is valid (data and parameters)
	[Inline]
	public static bool IsImageValid(Image image)
	{
		return IsImageValid_Impl(image);
	}
	[LinkName("IsImageValid")]
	private static extern bool IsImageValid_Impl(in Image image);
	
	/// Unload image from CPU memory (RAM)
	[Inline]
	public static void UnloadImage(Image image)
	{
		UnloadImage_Impl(image);
	}
	[LinkName("UnloadImage")]
	private static extern void UnloadImage_Impl(in Image image);
	
	/// Export image data to file, returns true on success
	[Inline]
	public static bool ExportImage(Image image, char8 *fileName)
	{
		return ExportImage_Impl(image, fileName);
	}
	[LinkName("ExportImage")]
	private static extern bool ExportImage_Impl(in Image image, char8 *fileName);
	
	/// Export image to memory buffer
	[Inline]
	public static char8 * ExportImageToMemory(Image image, char8 *fileType, int32 *fileSize)
	{
		return ExportImageToMemory_Impl(image, fileType, fileSize);
	}
	[LinkName("ExportImageToMemory")]
	private static extern char8 * ExportImageToMemory_Impl(in Image image, char8 *fileType, int32 *fileSize);
	
	/// Export image as code file defining an array of bytes, returns true on success
	[Inline]
	public static bool ExportImageAsCode(Image image, char8 *fileName)
	{
		return ExportImageAsCode_Impl(image, fileName);
	}
	[LinkName("ExportImageAsCode")]
	private static extern bool ExportImageAsCode_Impl(in Image image, char8 *fileName);
	
	/// Generate image: plain color
	[Inline]
	public static Image GenImageColor(int32 width, int32 height, Color color)
	{
		return GenImageColor_Impl(width, height, color);
	}
	[LinkName("GenImageColor")]
	private static extern Image GenImageColor_Impl(int32 width, int32 height, in Color color);
	
	/// Generate image: linear gradient, direction in degrees [0..360], 0=Vertical gradient
	[Inline]
	public static Image GenImageGradientLinear(int32 width, int32 height, int32 direction, Color start, Color end)
	{
		return GenImageGradientLinear_Impl(width, height, direction, start, end);
	}
	[LinkName("GenImageGradientLinear")]
	private static extern Image GenImageGradientLinear_Impl(int32 width, int32 height, int32 direction, in Color start, in Color end);
	
	/// Generate image: radial gradient
	[Inline]
	public static Image GenImageGradientRadial(int32 width, int32 height, float density, Color inner, Color outer)
	{
		return GenImageGradientRadial_Impl(width, height, density, inner, outer);
	}
	[LinkName("GenImageGradientRadial")]
	private static extern Image GenImageGradientRadial_Impl(int32 width, int32 height, float density, in Color inner, in Color outer);
	
	/// Generate image: square gradient
	[Inline]
	public static Image GenImageGradientSquare(int32 width, int32 height, float density, Color inner, Color outer)
	{
		return GenImageGradientSquare_Impl(width, height, density, inner, outer);
	}
	[LinkName("GenImageGradientSquare")]
	private static extern Image GenImageGradientSquare_Impl(int32 width, int32 height, float density, in Color inner, in Color outer);
	
	/// Generate image: checked
	[Inline]
	public static Image GenImageChecked(int32 width, int32 height, int32 checksX, int32 checksY, Color col1, Color col2)
	{
		return GenImageChecked_Impl(width, height, checksX, checksY, col1, col2);
	}
	[LinkName("GenImageChecked")]
	private static extern Image GenImageChecked_Impl(int32 width, int32 height, int32 checksX, int32 checksY, in Color col1, in Color col2);
	
	/// Create an image duplicate (useful for transformations)
	[Inline]
	public static Image ImageCopy(Image image)
	{
		return ImageCopy_Impl(image);
	}
	[LinkName("ImageCopy")]
	private static extern Image ImageCopy_Impl(in Image image);
	
	/// Create an image from another image piece
	[Inline]
	public static Image ImageFromImage(Image image, Rectangle rec)
	{
		return ImageFromImage_Impl(image, rec);
	}
	[LinkName("ImageFromImage")]
	private static extern Image ImageFromImage_Impl(in Image image, in Rectangle rec);
	
	/// Create an image from a selected channel of another image (GRAYSCALE)
	[Inline]
	public static Image ImageFromChannel(Image image, int32 selectedChannel)
	{
		return ImageFromChannel_Impl(image, selectedChannel);
	}
	[LinkName("ImageFromChannel")]
	private static extern Image ImageFromChannel_Impl(in Image image, int32 selectedChannel);
	
	/// Create an image from text (default font)
	[Inline]
	public static Image ImageText(char8 *text, int32 fontSize, Color color)
	{
		return ImageText_Impl(text, fontSize, color);
	}
	[LinkName("ImageText")]
	private static extern Image ImageText_Impl(char8 *text, int32 fontSize, in Color color);
	
	/// Create an image from text (custom sprite font)
	[Inline]
	public static Image ImageTextEx(Font font, char8 *text, float fontSize, float spacing, Color tint)
	{
		return ImageTextEx_Impl(font, text, fontSize, spacing, tint);
	}
	[LinkName("ImageTextEx")]
	private static extern Image ImageTextEx_Impl(in Font font, char8 *text, float fontSize, float spacing, in Color tint);
	
	/// Convert image to POT (power-of-two)
	[Inline]
	public static void ImageToPOT(Image *image, Color fill)
	{
		ImageToPOT_Impl(image, fill);
	}
	[LinkName("ImageToPOT")]
	private static extern void ImageToPOT_Impl(Image *image, in Color fill);
	
	/// Crop an image to a defined rectangle
	[Inline]
	public static void ImageCrop(Image *image, Rectangle crop)
	{
		ImageCrop_Impl(image, crop);
	}
	[LinkName("ImageCrop")]
	private static extern void ImageCrop_Impl(Image *image, in Rectangle crop);
	
	/// Clear alpha channel to desired color
	[Inline]
	public static void ImageAlphaClear(Image *image, Color color, float threshold)
	{
		ImageAlphaClear_Impl(image, color, threshold);
	}
	[LinkName("ImageAlphaClear")]
	private static extern void ImageAlphaClear_Impl(Image *image, in Color color, float threshold);
	
	/// Apply alpha mask to image
	[Inline]
	public static void ImageAlphaMask(Image *image, Image alphaMask)
	{
		ImageAlphaMask_Impl(image, alphaMask);
	}
	[LinkName("ImageAlphaMask")]
	private static extern void ImageAlphaMask_Impl(Image *image, in Image alphaMask);
	
	/// Resize canvas and fill with color
	[Inline]
	public static void ImageResizeCanvas(Image *image, int32 newWidth, int32 newHeight, int32 offsetX, int32 offsetY, Color fill)
	{
		ImageResizeCanvas_Impl(image, newWidth, newHeight, offsetX, offsetY, fill);
	}
	[LinkName("ImageResizeCanvas")]
	private static extern void ImageResizeCanvas_Impl(Image *image, int32 newWidth, int32 newHeight, int32 offsetX, int32 offsetY, in Color fill);
	
	/// Modify image color: tint
	[Inline]
	public static void ImageColorTint(Image *image, Color color)
	{
		ImageColorTint_Impl(image, color);
	}
	[LinkName("ImageColorTint")]
	private static extern void ImageColorTint_Impl(Image *image, in Color color);
	
	/// Modify image color: replace color
	[Inline]
	public static void ImageColorReplace(Image *image, Color color, Color replace)
	{
		ImageColorReplace_Impl(image, color, replace);
	}
	[LinkName("ImageColorReplace")]
	private static extern void ImageColorReplace_Impl(Image *image, in Color color, in Color replace);
	
	/// Load color data from image as a Color array (RGBA - 32bit)
	[Inline]
	public static Color * LoadImageColors(Image image)
	{
		return LoadImageColors_Impl(image);
	}
	[LinkName("LoadImageColors")]
	private static extern Color * LoadImageColors_Impl(in Image image);
	
	/// Load colors palette from image as a Color array (RGBA - 32bit)
	[Inline]
	public static Color * LoadImagePalette(Image image, int32 maxPaletteSize, int32 *colorCount)
	{
		return LoadImagePalette_Impl(image, maxPaletteSize, colorCount);
	}
	[LinkName("LoadImagePalette")]
	private static extern Color * LoadImagePalette_Impl(in Image image, int32 maxPaletteSize, int32 *colorCount);
	
	/// Get image alpha border rectangle
	[Inline]
	public static Rectangle GetImageAlphaBorder(Image image, float threshold)
	{
		return GetImageAlphaBorder_Impl(image, threshold);
	}
	[LinkName("GetImageAlphaBorder")]
	private static extern Rectangle GetImageAlphaBorder_Impl(in Image image, float threshold);
	
	/// Get image pixel color at (x, y) position
	[Inline]
	public static Color GetImageColor(Image image, int32 x, int32 y)
	{
		return GetImageColor_Impl(image, x, y);
	}
	[LinkName("GetImageColor")]
	private static extern Color GetImageColor_Impl(in Image image, int32 x, int32 y);
	
	/// Clear image background with given color
	[Inline]
	public static void ImageClearBackground(Image *dst, Color color)
	{
		ImageClearBackground_Impl(dst, color);
	}
	[LinkName("ImageClearBackground")]
	private static extern void ImageClearBackground_Impl(Image *dst, in Color color);
	
	/// Draw pixel within an image
	[Inline]
	public static void ImageDrawPixel(Image *dst, int32 posX, int32 posY, Color color)
	{
		ImageDrawPixel_Impl(dst, posX, posY, color);
	}
	[LinkName("ImageDrawPixel")]
	private static extern void ImageDrawPixel_Impl(Image *dst, int32 posX, int32 posY, in Color color);
	
	/// Draw pixel within an image (Vector version)
	[Inline]
	public static void ImageDrawPixelV(Image *dst, Vector2 position, Color color)
	{
		ImageDrawPixelV_Impl(dst, position, color);
	}
	[LinkName("ImageDrawPixelV")]
	private static extern void ImageDrawPixelV_Impl(Image *dst, in Vector2 position, in Color color);
	
	/// Draw line within an image
	[Inline]
	public static void ImageDrawLine(Image *dst, int32 startPosX, int32 startPosY, int32 endPosX, int32 endPosY, Color color)
	{
		ImageDrawLine_Impl(dst, startPosX, startPosY, endPosX, endPosY, color);
	}
	[LinkName("ImageDrawLine")]
	private static extern void ImageDrawLine_Impl(Image *dst, int32 startPosX, int32 startPosY, int32 endPosX, int32 endPosY, in Color color);
	
	/// Draw line within an image (Vector version)
	[Inline]
	public static void ImageDrawLineV(Image *dst, Vector2 start, Vector2 end, Color color)
	{
		ImageDrawLineV_Impl(dst, start, end, color);
	}
	[LinkName("ImageDrawLineV")]
	private static extern void ImageDrawLineV_Impl(Image *dst, in Vector2 start, in Vector2 end, in Color color);
	
	/// Draw a line defining thickness within an image
	[Inline]
	public static void ImageDrawLineEx(Image *dst, Vector2 start, Vector2 end, int32 thick, Color color)
	{
		ImageDrawLineEx_Impl(dst, start, end, thick, color);
	}
	[LinkName("ImageDrawLineEx")]
	private static extern void ImageDrawLineEx_Impl(Image *dst, in Vector2 start, in Vector2 end, int32 thick, in Color color);
	
	/// Draw a filled circle within an image
	[Inline]
	public static void ImageDrawCircle(Image *dst, int32 centerX, int32 centerY, int32 radius, Color color)
	{
		ImageDrawCircle_Impl(dst, centerX, centerY, radius, color);
	}
	[LinkName("ImageDrawCircle")]
	private static extern void ImageDrawCircle_Impl(Image *dst, int32 centerX, int32 centerY, int32 radius, in Color color);
	
	/// Draw a filled circle within an image (Vector version)
	[Inline]
	public static void ImageDrawCircleV(Image *dst, Vector2 center, int32 radius, Color color)
	{
		ImageDrawCircleV_Impl(dst, center, radius, color);
	}
	[LinkName("ImageDrawCircleV")]
	private static extern void ImageDrawCircleV_Impl(Image *dst, in Vector2 center, int32 radius, in Color color);
	
	/// Draw circle outline within an image
	[Inline]
	public static void ImageDrawCircleLines(Image *dst, int32 centerX, int32 centerY, int32 radius, Color color)
	{
		ImageDrawCircleLines_Impl(dst, centerX, centerY, radius, color);
	}
	[LinkName("ImageDrawCircleLines")]
	private static extern void ImageDrawCircleLines_Impl(Image *dst, int32 centerX, int32 centerY, int32 radius, in Color color);
	
	/// Draw circle outline within an image (Vector version)
	[Inline]
	public static void ImageDrawCircleLinesV(Image *dst, Vector2 center, int32 radius, Color color)
	{
		ImageDrawCircleLinesV_Impl(dst, center, radius, color);
	}
	[LinkName("ImageDrawCircleLinesV")]
	private static extern void ImageDrawCircleLinesV_Impl(Image *dst, in Vector2 center, int32 radius, in Color color);
	
	/// Draw rectangle within an image
	[Inline]
	public static void ImageDrawRectangle(Image *dst, int32 posX, int32 posY, int32 width, int32 height, Color color)
	{
		ImageDrawRectangle_Impl(dst, posX, posY, width, height, color);
	}
	[LinkName("ImageDrawRectangle")]
	private static extern void ImageDrawRectangle_Impl(Image *dst, int32 posX, int32 posY, int32 width, int32 height, in Color color);
	
	/// Draw rectangle within an image (Vector version)
	[Inline]
	public static void ImageDrawRectangleV(Image *dst, Vector2 position, Vector2 size, Color color)
	{
		ImageDrawRectangleV_Impl(dst, position, size, color);
	}
	[LinkName("ImageDrawRectangleV")]
	private static extern void ImageDrawRectangleV_Impl(Image *dst, in Vector2 position, in Vector2 size, in Color color);
	
	/// Draw rectangle within an image
	[Inline]
	public static void ImageDrawRectangleRec(Image *dst, Rectangle rec, Color color)
	{
		ImageDrawRectangleRec_Impl(dst, rec, color);
	}
	[LinkName("ImageDrawRectangleRec")]
	private static extern void ImageDrawRectangleRec_Impl(Image *dst, in Rectangle rec, in Color color);
	
	/// Draw rectangle lines within an image
	[Inline]
	public static void ImageDrawRectangleLines(Image *dst, Rectangle rec, int32 thick, Color color)
	{
		ImageDrawRectangleLines_Impl(dst, rec, thick, color);
	}
	[LinkName("ImageDrawRectangleLines")]
	private static extern void ImageDrawRectangleLines_Impl(Image *dst, in Rectangle rec, int32 thick, in Color color);
	
	/// Draw triangle within an image
	[Inline]
	public static void ImageDrawTriangle(Image *dst, Vector2 v1, Vector2 v2, Vector2 v3, Color color)
	{
		ImageDrawTriangle_Impl(dst, v1, v2, v3, color);
	}
	[LinkName("ImageDrawTriangle")]
	private static extern void ImageDrawTriangle_Impl(Image *dst, in Vector2 v1, in Vector2 v2, in Vector2 v3, in Color color);
	
	/// Draw triangle with interpolated colors within an image
	[Inline]
	public static void ImageDrawTriangleEx(Image *dst, Vector2 v1, Vector2 v2, Vector2 v3, Color c1, Color c2, Color c3)
	{
		ImageDrawTriangleEx_Impl(dst, v1, v2, v3, c1, c2, c3);
	}
	[LinkName("ImageDrawTriangleEx")]
	private static extern void ImageDrawTriangleEx_Impl(Image *dst, in Vector2 v1, in Vector2 v2, in Vector2 v3, in Color c1, in Color c2, in Color c3);
	
	/// Draw triangle outline within an image
	[Inline]
	public static void ImageDrawTriangleLines(Image *dst, Vector2 v1, Vector2 v2, Vector2 v3, Color color)
	{
		ImageDrawTriangleLines_Impl(dst, v1, v2, v3, color);
	}
	[LinkName("ImageDrawTriangleLines")]
	private static extern void ImageDrawTriangleLines_Impl(Image *dst, in Vector2 v1, in Vector2 v2, in Vector2 v3, in Color color);
	
	/// Draw a triangle fan defined by points within an image (first vertex is the center)
	[Inline]
	public static void ImageDrawTriangleFan(Image *dst, Vector2 *points, int32 pointCount, Color color)
	{
		ImageDrawTriangleFan_Impl(dst, points, pointCount, color);
	}
	[LinkName("ImageDrawTriangleFan")]
	private static extern void ImageDrawTriangleFan_Impl(Image *dst, Vector2 *points, int32 pointCount, in Color color);
	
	/// Draw a triangle strip defined by points within an image
	[Inline]
	public static void ImageDrawTriangleStrip(Image *dst, Vector2 *points, int32 pointCount, Color color)
	{
		ImageDrawTriangleStrip_Impl(dst, points, pointCount, color);
	}
	[LinkName("ImageDrawTriangleStrip")]
	private static extern void ImageDrawTriangleStrip_Impl(Image *dst, Vector2 *points, int32 pointCount, in Color color);
	
	/// Draw a source image within a destination image (tint applied to source)
	[Inline]
	public static void ImageDraw(Image *dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint)
	{
		ImageDraw_Impl(dst, src, srcRec, dstRec, tint);
	}
	[LinkName("ImageDraw")]
	private static extern void ImageDraw_Impl(Image *dst, in Image src, in Rectangle srcRec, in Rectangle dstRec, in Color tint);
	
	/// Draw text (using default font) within an image (destination)
	[Inline]
	public static void ImageDrawText(Image *dst, char8 *text, int32 posX, int32 posY, int32 fontSize, Color color)
	{
		ImageDrawText_Impl(dst, text, posX, posY, fontSize, color);
	}
	[LinkName("ImageDrawText")]
	private static extern void ImageDrawText_Impl(Image *dst, char8 *text, int32 posX, int32 posY, int32 fontSize, in Color color);
	
	/// Draw text (custom sprite font) within an image (destination)
	[Inline]
	public static void ImageDrawTextEx(Image *dst, Font font, char8 *text, Vector2 position, float fontSize, float spacing, Color tint)
	{
		ImageDrawTextEx_Impl(dst, font, text, position, fontSize, spacing, tint);
	}
	[LinkName("ImageDrawTextEx")]
	private static extern void ImageDrawTextEx_Impl(Image *dst, in Font font, char8 *text, in Vector2 position, float fontSize, float spacing, in Color tint);
	
	/// Load texture from image data
	[Inline]
	public static Texture2D LoadTextureFromImage(Image image)
	{
		return LoadTextureFromImage_Impl(image);
	}
	[LinkName("LoadTextureFromImage")]
	private static extern Texture2D LoadTextureFromImage_Impl(in Image image);
	
	/// Load cubemap from image, multiple image cubemap layouts supported
	[Inline]
	public static TextureCubemap LoadTextureCubemap(Image image, int32 layout)
	{
		return LoadTextureCubemap_Impl(image, layout);
	}
	[LinkName("LoadTextureCubemap")]
	private static extern TextureCubemap LoadTextureCubemap_Impl(in Image image, int32 layout);
	
	/// Check if a texture is valid (loaded in GPU)
	[Inline]
	public static bool IsTextureValid(Texture2D texture)
	{
		return IsTextureValid_Impl(texture);
	}
	[LinkName("IsTextureValid")]
	private static extern bool IsTextureValid_Impl(in Texture2D texture);
	
	/// Unload texture from GPU memory (VRAM)
	[Inline]
	public static void UnloadTexture(Texture2D texture)
	{
		UnloadTexture_Impl(texture);
	}
	[LinkName("UnloadTexture")]
	private static extern void UnloadTexture_Impl(in Texture2D texture);
	
	/// Check if a render texture is valid (loaded in GPU)
	[Inline]
	public static bool IsRenderTextureValid(RenderTexture2D target)
	{
		return IsRenderTextureValid_Impl(target);
	}
	[LinkName("IsRenderTextureValid")]
	private static extern bool IsRenderTextureValid_Impl(in RenderTexture2D target);
	
	/// Unload render texture from GPU memory (VRAM)
	[Inline]
	public static void UnloadRenderTexture(RenderTexture2D target)
	{
		UnloadRenderTexture_Impl(target);
	}
	[LinkName("UnloadRenderTexture")]
	private static extern void UnloadRenderTexture_Impl(in RenderTexture2D target);
	
	/// Update GPU texture with new data
	[Inline]
	public static void UpdateTexture(Texture2D texture, void *pixels)
	{
		UpdateTexture_Impl(texture, pixels);
	}
	[LinkName("UpdateTexture")]
	private static extern void UpdateTexture_Impl(in Texture2D texture, void *pixels);
	
	/// Update GPU texture rectangle with new data
	[Inline]
	public static void UpdateTextureRec(Texture2D texture, Rectangle rec, void *pixels)
	{
		UpdateTextureRec_Impl(texture, rec, pixels);
	}
	[LinkName("UpdateTextureRec")]
	private static extern void UpdateTextureRec_Impl(in Texture2D texture, in Rectangle rec, void *pixels);
	
	/// Set texture scaling filter mode
	[Inline]
	public static void SetTextureFilter(Texture2D texture, int32 filter)
	{
		SetTextureFilter_Impl(texture, filter);
	}
	[LinkName("SetTextureFilter")]
	private static extern void SetTextureFilter_Impl(in Texture2D texture, int32 filter);
	
	/// Set texture wrapping mode
	[Inline]
	public static void SetTextureWrap(Texture2D texture, int32 wrap)
	{
		SetTextureWrap_Impl(texture, wrap);
	}
	[LinkName("SetTextureWrap")]
	private static extern void SetTextureWrap_Impl(in Texture2D texture, int32 wrap);
	
	/// Draw a Texture2D
	[Inline]
	public static void DrawTexture(Texture2D texture, int32 posX, int32 posY, Color tint)
	{
		DrawTexture_Impl(texture, posX, posY, tint);
	}
	[LinkName("DrawTexture")]
	private static extern void DrawTexture_Impl(in Texture2D texture, int32 posX, int32 posY, in Color tint);
	
	/// Draw a Texture2D with position defined as Vector2
	[Inline]
	public static void DrawTextureV(Texture2D texture, Vector2 position, Color tint)
	{
		DrawTextureV_Impl(texture, position, tint);
	}
	[LinkName("DrawTextureV")]
	private static extern void DrawTextureV_Impl(in Texture2D texture, in Vector2 position, in Color tint);
	
	/// Draw a Texture2D with extended parameters
	[Inline]
	public static void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint)
	{
		DrawTextureEx_Impl(texture, position, rotation, scale, tint);
	}
	[LinkName("DrawTextureEx")]
	private static extern void DrawTextureEx_Impl(in Texture2D texture, in Vector2 position, float rotation, float scale, in Color tint);
	
	/// Draw a part of a texture defined by a rectangle
	[Inline]
	public static void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint)
	{
		DrawTextureRec_Impl(texture, source, position, tint);
	}
	[LinkName("DrawTextureRec")]
	private static extern void DrawTextureRec_Impl(in Texture2D texture, in Rectangle source, in Vector2 position, in Color tint);
	
	/// Draw a part of a texture defined by a rectangle with 'pro' parameters
	[Inline]
	public static void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint)
	{
		DrawTexturePro_Impl(texture, source, dest, origin, rotation, tint);
	}
	[LinkName("DrawTexturePro")]
	private static extern void DrawTexturePro_Impl(in Texture2D texture, in Rectangle source, in Rectangle dest, in Vector2 origin, float rotation, in Color tint);
	
	/// Draws a texture (or part of it) that stretches or shrinks nicely
	[Inline]
	public static void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint)
	{
		DrawTextureNPatch_Impl(texture, nPatchInfo, dest, origin, rotation, tint);
	}
	[LinkName("DrawTextureNPatch")]
	private static extern void DrawTextureNPatch_Impl(in Texture2D texture, in NPatchInfo nPatchInfo, in Rectangle dest, in Vector2 origin, float rotation, in Color tint);
	
	/// Check if two colors are equal
	[Inline]
	public static bool ColorIsEqual(Color col1, Color col2)
	{
		return ColorIsEqual_Impl(col1, col2);
	}
	[LinkName("ColorIsEqual")]
	private static extern bool ColorIsEqual_Impl(in Color col1, in Color col2);
	
	/// Get color with alpha applied, alpha goes from 0.0f to 1.0f
	[Inline]
	public static Color Fade(Color color, float alpha)
	{
		return Fade_Impl(color, alpha);
	}
	[LinkName("Fade")]
	private static extern Color Fade_Impl(in Color color, float alpha);
	
	/// Get hexadecimal value for a Color (0xRRGGBBAA)
	[Inline]
	public static int32 ColorToInt(Color color)
	{
		return ColorToInt_Impl(color);
	}
	[LinkName("ColorToInt")]
	private static extern int32 ColorToInt_Impl(in Color color);
	
	/// Get Color normalized as float [0..1]
	[Inline]
	public static Vector4 ColorNormalize(Color color)
	{
		return ColorNormalize_Impl(color);
	}
	[LinkName("ColorNormalize")]
	private static extern Vector4 ColorNormalize_Impl(in Color color);
	
	/// Get Color from normalized values [0..1]
	[Inline]
	public static Color ColorFromNormalized(Vector4 normalized)
	{
		return ColorFromNormalized_Impl(normalized);
	}
	[LinkName("ColorFromNormalized")]
	private static extern Color ColorFromNormalized_Impl(in Vector4 normalized);
	
	/// Get HSV values for a Color, hue [0..360], saturation/value [0..1]
	[Inline]
	public static Vector3 ColorToHSV(Color color)
	{
		return ColorToHSV_Impl(color);
	}
	[LinkName("ColorToHSV")]
	private static extern Vector3 ColorToHSV_Impl(in Color color);
	
	/// Get color multiplied with another color
	[Inline]
	public static Color ColorTint(Color color, Color tint)
	{
		return ColorTint_Impl(color, tint);
	}
	[LinkName("ColorTint")]
	private static extern Color ColorTint_Impl(in Color color, in Color tint);
	
	/// Get color with brightness correction, brightness factor goes from -1.0f to 1.0f
	[Inline]
	public static Color ColorBrightness(Color color, float factor)
	{
		return ColorBrightness_Impl(color, factor);
	}
	[LinkName("ColorBrightness")]
	private static extern Color ColorBrightness_Impl(in Color color, float factor);
	
	/// Get color with contrast correction, contrast values between -1.0f and 1.0f
	[Inline]
	public static Color ColorContrast(Color color, float contrast)
	{
		return ColorContrast_Impl(color, contrast);
	}
	[LinkName("ColorContrast")]
	private static extern Color ColorContrast_Impl(in Color color, float contrast);
	
	/// Get color with alpha applied, alpha goes from 0.0f to 1.0f
	[Inline]
	public static Color ColorAlpha(Color color, float alpha)
	{
		return ColorAlpha_Impl(color, alpha);
	}
	[LinkName("ColorAlpha")]
	private static extern Color ColorAlpha_Impl(in Color color, float alpha);
	
	/// Get src alpha-blended into dst color with tint
	[Inline]
	public static Color ColorAlphaBlend(Color dst, Color src, Color tint)
	{
		return ColorAlphaBlend_Impl(dst, src, tint);
	}
	[LinkName("ColorAlphaBlend")]
	private static extern Color ColorAlphaBlend_Impl(in Color dst, in Color src, in Color tint);
	
	/// Get color lerp interpolation between two colors, factor [0.0f..1.0f]
	[Inline]
	public static Color ColorLerp(Color color1, Color color2, float factor)
	{
		return ColorLerp_Impl(color1, color2, factor);
	}
	[LinkName("ColorLerp")]
	private static extern Color ColorLerp_Impl(in Color color1, in Color color2, float factor);
	
	/// Set color formatted into destination pixel pointer
	[Inline]
	public static void SetPixelColor(void *dstPtr, Color color, int32 format)
	{
		SetPixelColor_Impl(dstPtr, color, format);
	}
	[LinkName("SetPixelColor")]
	private static extern void SetPixelColor_Impl(void *dstPtr, in Color color, int32 format);
	
	/// Load font from Image (XNA style)
	[Inline]
	public static Font LoadFontFromImage(Image image, Color key, int32 firstChar)
	{
		return LoadFontFromImage_Impl(image, key, firstChar);
	}
	[LinkName("LoadFontFromImage")]
	private static extern Font LoadFontFromImage_Impl(in Image image, in Color key, int32 firstChar);
	
	/// Check if a font is valid (font data loaded, WARNING: GPU texture not checked)
	[Inline]
	public static bool IsFontValid(Font font)
	{
		return IsFontValid_Impl(font);
	}
	[LinkName("IsFontValid")]
	private static extern bool IsFontValid_Impl(in Font font);
	
	/// Unload font from GPU memory (VRAM)
	[Inline]
	public static void UnloadFont(Font font)
	{
		UnloadFont_Impl(font);
	}
	[LinkName("UnloadFont")]
	private static extern void UnloadFont_Impl(in Font font);
	
	/// Export font as code file, returns true on success
	[Inline]
	public static bool ExportFontAsCode(Font font, char8 *fileName)
	{
		return ExportFontAsCode_Impl(font, fileName);
	}
	[LinkName("ExportFontAsCode")]
	private static extern bool ExportFontAsCode_Impl(in Font font, char8 *fileName);
	
	/// Draw text (using default font)
	[Inline]
	public static void DrawText(char8 *text, int32 posX, int32 posY, int32 fontSize, Color color)
	{
		DrawText_Impl(text, posX, posY, fontSize, color);
	}
	[LinkName("DrawText")]
	private static extern void DrawText_Impl(char8 *text, int32 posX, int32 posY, int32 fontSize, in Color color);
	
	/// Draw text using font and additional parameters
	[Inline]
	public static void DrawTextEx(Font font, char8 *text, Vector2 position, float fontSize, float spacing, Color tint)
	{
		DrawTextEx_Impl(font, text, position, fontSize, spacing, tint);
	}
	[LinkName("DrawTextEx")]
	private static extern void DrawTextEx_Impl(in Font font, char8 *text, in Vector2 position, float fontSize, float spacing, in Color tint);
	
	/// Draw text using Font and pro parameters (rotation)
	[Inline]
	public static void DrawTextPro(Font font, char8 *text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint)
	{
		DrawTextPro_Impl(font, text, position, origin, rotation, fontSize, spacing, tint);
	}
	[LinkName("DrawTextPro")]
	private static extern void DrawTextPro_Impl(in Font font, char8 *text, in Vector2 position, in Vector2 origin, float rotation, float fontSize, float spacing, in Color tint);
	
	/// Draw one character (codepoint)
	[Inline]
	public static void DrawTextCodepoint(Font font, int32 codepoint, Vector2 position, float fontSize, Color tint)
	{
		DrawTextCodepoint_Impl(font, codepoint, position, fontSize, tint);
	}
	[LinkName("DrawTextCodepoint")]
	private static extern void DrawTextCodepoint_Impl(in Font font, int32 codepoint, in Vector2 position, float fontSize, in Color tint);
	
	/// Draw multiple character (codepoint)
	[Inline]
	public static void DrawTextCodepoints(Font font, int32 *codepoints, int32 codepointCount, Vector2 position, float fontSize, float spacing, Color tint)
	{
		DrawTextCodepoints_Impl(font, codepoints, codepointCount, position, fontSize, spacing, tint);
	}
	[LinkName("DrawTextCodepoints")]
	private static extern void DrawTextCodepoints_Impl(in Font font, int32 *codepoints, int32 codepointCount, in Vector2 position, float fontSize, float spacing, in Color tint);
	
	/// Measure string size for Font
	[Inline]
	public static Vector2 MeasureTextEx(Font font, char8 *text, float fontSize, float spacing)
	{
		return MeasureTextEx_Impl(font, text, fontSize, spacing);
	}
	[LinkName("MeasureTextEx")]
	private static extern Vector2 MeasureTextEx_Impl(in Font font, char8 *text, float fontSize, float spacing);
	
	/// Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
	[Inline]
	public static int32 GetGlyphIndex(Font font, int32 codepoint)
	{
		return GetGlyphIndex_Impl(font, codepoint);
	}
	[LinkName("GetGlyphIndex")]
	private static extern int32 GetGlyphIndex_Impl(in Font font, int32 codepoint);
	
	/// Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
	[Inline]
	public static GlyphInfo GetGlyphInfo(Font font, int32 codepoint)
	{
		return GetGlyphInfo_Impl(font, codepoint);
	}
	[LinkName("GetGlyphInfo")]
	private static extern GlyphInfo GetGlyphInfo_Impl(in Font font, int32 codepoint);
	
	/// Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
	[Inline]
	public static Rectangle GetGlyphAtlasRec(Font font, int32 codepoint)
	{
		return GetGlyphAtlasRec_Impl(font, codepoint);
	}
	[LinkName("GetGlyphAtlasRec")]
	private static extern Rectangle GetGlyphAtlasRec_Impl(in Font font, int32 codepoint);
	
	/// Draw a line in 3D world space
	[Inline]
	public static void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color)
	{
		DrawLine3D_Impl(startPos, endPos, color);
	}
	[LinkName("DrawLine3D")]
	private static extern void DrawLine3D_Impl(in Vector3 startPos, in Vector3 endPos, in Color color);
	
	/// Draw a point in 3D space, actually a small line
	[Inline]
	public static void DrawPoint3D(Vector3 position, Color color)
	{
		DrawPoint3D_Impl(position, color);
	}
	[LinkName("DrawPoint3D")]
	private static extern void DrawPoint3D_Impl(in Vector3 position, in Color color);
	
	/// Draw a circle in 3D world space
	[Inline]
	public static void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color)
	{
		DrawCircle3D_Impl(center, radius, rotationAxis, rotationAngle, color);
	}
	[LinkName("DrawCircle3D")]
	private static extern void DrawCircle3D_Impl(in Vector3 center, float radius, in Vector3 rotationAxis, float rotationAngle, in Color color);
	
	/// Draw a color-filled triangle (vertex in counter-clockwise order!)
	[Inline]
	public static void DrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color)
	{
		DrawTriangle3D_Impl(v1, v2, v3, color);
	}
	[LinkName("DrawTriangle3D")]
	private static extern void DrawTriangle3D_Impl(in Vector3 v1, in Vector3 v2, in Vector3 v3, in Color color);
	
	/// Draw a triangle strip defined by points
	[Inline]
	public static void DrawTriangleStrip3D(Vector3 *points, int32 pointCount, Color color)
	{
		DrawTriangleStrip3D_Impl(points, pointCount, color);
	}
	[LinkName("DrawTriangleStrip3D")]
	private static extern void DrawTriangleStrip3D_Impl(Vector3 *points, int32 pointCount, in Color color);
	
	/// Draw cube
	[Inline]
	public static void DrawCube(Vector3 position, float width, float height, float length, Color color)
	{
		DrawCube_Impl(position, width, height, length, color);
	}
	[LinkName("DrawCube")]
	private static extern void DrawCube_Impl(in Vector3 position, float width, float height, float length, in Color color);
	
	/// Draw cube (Vector version)
	[Inline]
	public static void DrawCubeV(Vector3 position, Vector3 size, Color color)
	{
		DrawCubeV_Impl(position, size, color);
	}
	[LinkName("DrawCubeV")]
	private static extern void DrawCubeV_Impl(in Vector3 position, in Vector3 size, in Color color);
	
	/// Draw cube wires
	[Inline]
	public static void DrawCubeWires(Vector3 position, float width, float height, float length, Color color)
	{
		DrawCubeWires_Impl(position, width, height, length, color);
	}
	[LinkName("DrawCubeWires")]
	private static extern void DrawCubeWires_Impl(in Vector3 position, float width, float height, float length, in Color color);
	
	/// Draw cube wires (Vector version)
	[Inline]
	public static void DrawCubeWiresV(Vector3 position, Vector3 size, Color color)
	{
		DrawCubeWiresV_Impl(position, size, color);
	}
	[LinkName("DrawCubeWiresV")]
	private static extern void DrawCubeWiresV_Impl(in Vector3 position, in Vector3 size, in Color color);
	
	/// Draw sphere
	[Inline]
	public static void DrawSphere(Vector3 centerPos, float radius, Color color)
	{
		DrawSphere_Impl(centerPos, radius, color);
	}
	[LinkName("DrawSphere")]
	private static extern void DrawSphere_Impl(in Vector3 centerPos, float radius, in Color color);
	
	/// Draw sphere with extended parameters
	[Inline]
	public static void DrawSphereEx(Vector3 centerPos, float radius, int32 rings, int32 slices, Color color)
	{
		DrawSphereEx_Impl(centerPos, radius, rings, slices, color);
	}
	[LinkName("DrawSphereEx")]
	private static extern void DrawSphereEx_Impl(in Vector3 centerPos, float radius, int32 rings, int32 slices, in Color color);
	
	/// Draw sphere wires
	[Inline]
	public static void DrawSphereWires(Vector3 centerPos, float radius, int32 rings, int32 slices, Color color)
	{
		DrawSphereWires_Impl(centerPos, radius, rings, slices, color);
	}
	[LinkName("DrawSphereWires")]
	private static extern void DrawSphereWires_Impl(in Vector3 centerPos, float radius, int32 rings, int32 slices, in Color color);
	
	/// Draw a cylinder/cone
	[Inline]
	public static void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int32 slices, Color color)
	{
		DrawCylinder_Impl(position, radiusTop, radiusBottom, height, slices, color);
	}
	[LinkName("DrawCylinder")]
	private static extern void DrawCylinder_Impl(in Vector3 position, float radiusTop, float radiusBottom, float height, int32 slices, in Color color);
	
	/// Draw a cylinder with base at startPos and top at endPos
	[Inline]
	public static void DrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int32 sides, Color color)
	{
		DrawCylinderEx_Impl(startPos, endPos, startRadius, endRadius, sides, color);
	}
	[LinkName("DrawCylinderEx")]
	private static extern void DrawCylinderEx_Impl(in Vector3 startPos, in Vector3 endPos, float startRadius, float endRadius, int32 sides, in Color color);
	
	/// Draw a cylinder/cone wires
	[Inline]
	public static void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int32 slices, Color color)
	{
		DrawCylinderWires_Impl(position, radiusTop, radiusBottom, height, slices, color);
	}
	[LinkName("DrawCylinderWires")]
	private static extern void DrawCylinderWires_Impl(in Vector3 position, float radiusTop, float radiusBottom, float height, int32 slices, in Color color);
	
	/// Draw a cylinder wires with base at startPos and top at endPos
	[Inline]
	public static void DrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int32 sides, Color color)
	{
		DrawCylinderWiresEx_Impl(startPos, endPos, startRadius, endRadius, sides, color);
	}
	[LinkName("DrawCylinderWiresEx")]
	private static extern void DrawCylinderWiresEx_Impl(in Vector3 startPos, in Vector3 endPos, float startRadius, float endRadius, int32 sides, in Color color);
	
	/// Draw a capsule with the center of its sphere caps at startPos and endPos
	[Inline]
	public static void DrawCapsule(Vector3 startPos, Vector3 endPos, float radius, int32 slices, int32 rings, Color color)
	{
		DrawCapsule_Impl(startPos, endPos, radius, slices, rings, color);
	}
	[LinkName("DrawCapsule")]
	private static extern void DrawCapsule_Impl(in Vector3 startPos, in Vector3 endPos, float radius, int32 slices, int32 rings, in Color color);
	
	/// Draw capsule wireframe with the center of its sphere caps at startPos and endPos
	[Inline]
	public static void DrawCapsuleWires(Vector3 startPos, Vector3 endPos, float radius, int32 slices, int32 rings, Color color)
	{
		DrawCapsuleWires_Impl(startPos, endPos, radius, slices, rings, color);
	}
	[LinkName("DrawCapsuleWires")]
	private static extern void DrawCapsuleWires_Impl(in Vector3 startPos, in Vector3 endPos, float radius, int32 slices, int32 rings, in Color color);
	
	/// Draw a plane XZ
	[Inline]
	public static void DrawPlane(Vector3 centerPos, Vector2 size, Color color)
	{
		DrawPlane_Impl(centerPos, size, color);
	}
	[LinkName("DrawPlane")]
	private static extern void DrawPlane_Impl(in Vector3 centerPos, in Vector2 size, in Color color);
	
	/// Draw a ray line
	[Inline]
	public static void DrawRay(Ray ray, Color color)
	{
		DrawRay_Impl(ray, color);
	}
	[LinkName("DrawRay")]
	private static extern void DrawRay_Impl(in Ray ray, in Color color);
	
	/// Load model from generated mesh (default material)
	[Inline]
	public static Model LoadModelFromMesh(Mesh mesh)
	{
		return LoadModelFromMesh_Impl(mesh);
	}
	[LinkName("LoadModelFromMesh")]
	private static extern Model LoadModelFromMesh_Impl(in Mesh mesh);
	
	/// Check if a model is valid (loaded in GPU, VAO/VBOs)
	[Inline]
	public static bool IsModelValid(Model model)
	{
		return IsModelValid_Impl(model);
	}
	[LinkName("IsModelValid")]
	private static extern bool IsModelValid_Impl(in Model model);
	
	/// Unload model (including meshes) from memory (RAM and/or VRAM)
	[Inline]
	public static void UnloadModel(Model model)
	{
		UnloadModel_Impl(model);
	}
	[LinkName("UnloadModel")]
	private static extern void UnloadModel_Impl(in Model model);
	
	/// Compute model bounding box limits (considers all meshes)
	[Inline]
	public static BoundingBox GetModelBoundingBox(Model model)
	{
		return GetModelBoundingBox_Impl(model);
	}
	[LinkName("GetModelBoundingBox")]
	private static extern BoundingBox GetModelBoundingBox_Impl(in Model model);
	
	/// Draw a model (with texture if set)
	[Inline]
	public static void DrawModel(Model model, Vector3 position, float scale, Color tint)
	{
		DrawModel_Impl(model, position, scale, tint);
	}
	[LinkName("DrawModel")]
	private static extern void DrawModel_Impl(in Model model, in Vector3 position, float scale, in Color tint);
	
	/// Draw a model with extended parameters
	[Inline]
	public static void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint)
	{
		DrawModelEx_Impl(model, position, rotationAxis, rotationAngle, scale, tint);
	}
	[LinkName("DrawModelEx")]
	private static extern void DrawModelEx_Impl(in Model model, in Vector3 position, in Vector3 rotationAxis, float rotationAngle, in Vector3 scale, in Color tint);
	
	/// Draw a model wires (with texture if set)
	[Inline]
	public static void DrawModelWires(Model model, Vector3 position, float scale, Color tint)
	{
		DrawModelWires_Impl(model, position, scale, tint);
	}
	[LinkName("DrawModelWires")]
	private static extern void DrawModelWires_Impl(in Model model, in Vector3 position, float scale, in Color tint);
	
	/// Draw a model wires (with texture if set) with extended parameters
	[Inline]
	public static void DrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint)
	{
		DrawModelWiresEx_Impl(model, position, rotationAxis, rotationAngle, scale, tint);
	}
	[LinkName("DrawModelWiresEx")]
	private static extern void DrawModelWiresEx_Impl(in Model model, in Vector3 position, in Vector3 rotationAxis, float rotationAngle, in Vector3 scale, in Color tint);
	
	/// Draw a model as points
	[Inline]
	public static void DrawModelPoints(Model model, Vector3 position, float scale, Color tint)
	{
		DrawModelPoints_Impl(model, position, scale, tint);
	}
	[LinkName("DrawModelPoints")]
	private static extern void DrawModelPoints_Impl(in Model model, in Vector3 position, float scale, in Color tint);
	
	/// Draw a model as points with extended parameters
	[Inline]
	public static void DrawModelPointsEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint)
	{
		DrawModelPointsEx_Impl(model, position, rotationAxis, rotationAngle, scale, tint);
	}
	[LinkName("DrawModelPointsEx")]
	private static extern void DrawModelPointsEx_Impl(in Model model, in Vector3 position, in Vector3 rotationAxis, float rotationAngle, in Vector3 scale, in Color tint);
	
	/// Draw bounding box (wires)
	[Inline]
	public static void DrawBoundingBox(BoundingBox @box, Color color)
	{
		DrawBoundingBox_Impl(@box, color);
	}
	[LinkName("DrawBoundingBox")]
	private static extern void DrawBoundingBox_Impl(in BoundingBox @box, in Color color);
	
	/// Draw a billboard texture
	[Inline]
	public static void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float scale, Color tint)
	{
		DrawBillboard_Impl(camera, texture, position, scale, tint);
	}
	[LinkName("DrawBillboard")]
	private static extern void DrawBillboard_Impl(in Camera camera, in Texture2D texture, in Vector3 position, float scale, in Color tint);
	
	/// Draw a billboard texture defined by source
	[Inline]
	public static void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint)
	{
		DrawBillboardRec_Impl(camera, texture, source, position, size, tint);
	}
	[LinkName("DrawBillboardRec")]
	private static extern void DrawBillboardRec_Impl(in Camera camera, in Texture2D texture, in Rectangle source, in Vector3 position, in Vector2 size, in Color tint);
	
	/// Draw a billboard texture defined by source and rotation
	[Inline]
	public static void DrawBillboardPro(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint)
	{
		DrawBillboardPro_Impl(camera, texture, source, position, up, size, origin, rotation, tint);
	}
	[LinkName("DrawBillboardPro")]
	private static extern void DrawBillboardPro_Impl(in Camera camera, in Texture2D texture, in Rectangle source, in Vector3 position, in Vector3 up, in Vector2 size, in Vector2 origin, float rotation, in Color tint);
	
	/// Update mesh vertex data in GPU for a specific buffer index
	[Inline]
	public static void UpdateMeshBuffer(Mesh mesh, int32 index, void *data, int32 dataSize, int32 offset)
	{
		UpdateMeshBuffer_Impl(mesh, index, data, dataSize, offset);
	}
	[LinkName("UpdateMeshBuffer")]
	private static extern void UpdateMeshBuffer_Impl(in Mesh mesh, int32 index, void *data, int32 dataSize, int32 offset);
	
	/// Unload mesh data from CPU and GPU
	[Inline]
	public static void UnloadMesh(Mesh mesh)
	{
		UnloadMesh_Impl(mesh);
	}
	[LinkName("UnloadMesh")]
	private static extern void UnloadMesh_Impl(in Mesh mesh);
	
	/// Draw a 3d mesh with material and transform
	[Inline]
	public static void DrawMesh(Mesh mesh, Material material, Matrix transform)
	{
		DrawMesh_Impl(mesh, material, transform);
	}
	[LinkName("DrawMesh")]
	private static extern void DrawMesh_Impl(in Mesh mesh, in Material material, in Matrix transform);
	
	/// Draw multiple mesh instances with material and different transforms
	[Inline]
	public static void DrawMeshInstanced(Mesh mesh, Material material, Matrix *transforms, int32 instances)
	{
		DrawMeshInstanced_Impl(mesh, material, transforms, instances);
	}
	[LinkName("DrawMeshInstanced")]
	private static extern void DrawMeshInstanced_Impl(in Mesh mesh, in Material material, Matrix *transforms, int32 instances);
	
	/// Compute mesh bounding box limits
	[Inline]
	public static BoundingBox GetMeshBoundingBox(Mesh mesh)
	{
		return GetMeshBoundingBox_Impl(mesh);
	}
	[LinkName("GetMeshBoundingBox")]
	private static extern BoundingBox GetMeshBoundingBox_Impl(in Mesh mesh);
	
	/// Export mesh data to file, returns true on success
	[Inline]
	public static bool ExportMesh(Mesh mesh, char8 *fileName)
	{
		return ExportMesh_Impl(mesh, fileName);
	}
	[LinkName("ExportMesh")]
	private static extern bool ExportMesh_Impl(in Mesh mesh, char8 *fileName);
	
	/// Export mesh as code file (.h) defining multiple arrays of vertex attributes
	[Inline]
	public static bool ExportMeshAsCode(Mesh mesh, char8 *fileName)
	{
		return ExportMeshAsCode_Impl(mesh, fileName);
	}
	[LinkName("ExportMeshAsCode")]
	private static extern bool ExportMeshAsCode_Impl(in Mesh mesh, char8 *fileName);
	
	/// Generate heightmap mesh from image data
	[Inline]
	public static Mesh GenMeshHeightmap(Image heightmap, Vector3 size)
	{
		return GenMeshHeightmap_Impl(heightmap, size);
	}
	[LinkName("GenMeshHeightmap")]
	private static extern Mesh GenMeshHeightmap_Impl(in Image heightmap, in Vector3 size);
	
	/// Generate cubes-based map mesh from image data
	[Inline]
	public static Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize)
	{
		return GenMeshCubicmap_Impl(cubicmap, cubeSize);
	}
	[LinkName("GenMeshCubicmap")]
	private static extern Mesh GenMeshCubicmap_Impl(in Image cubicmap, in Vector3 cubeSize);
	
	/// Check if a material is valid (shader assigned, map textures loaded in GPU)
	[Inline]
	public static bool IsMaterialValid(Material material)
	{
		return IsMaterialValid_Impl(material);
	}
	[LinkName("IsMaterialValid")]
	private static extern bool IsMaterialValid_Impl(in Material material);
	
	/// Unload material from GPU memory (VRAM)
	[Inline]
	public static void UnloadMaterial(Material material)
	{
		UnloadMaterial_Impl(material);
	}
	[LinkName("UnloadMaterial")]
	private static extern void UnloadMaterial_Impl(in Material material);
	
	/// Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
	[Inline]
	public static void SetMaterialTexture(Material *material, int32 mapType, Texture2D texture)
	{
		SetMaterialTexture_Impl(material, mapType, texture);
	}
	[LinkName("SetMaterialTexture")]
	private static extern void SetMaterialTexture_Impl(Material *material, int32 mapType, in Texture2D texture);
	
	/// Update model animation pose (CPU)
	[Inline]
	public static void UpdateModelAnimation(Model model, ModelAnimation anim, int32 frame)
	{
		UpdateModelAnimation_Impl(model, anim, frame);
	}
	[LinkName("UpdateModelAnimation")]
	private static extern void UpdateModelAnimation_Impl(in Model model, in ModelAnimation anim, int32 frame);
	
	/// Update model animation mesh bone matrices (GPU skinning)
	[Inline]
	public static void UpdateModelAnimationBones(Model model, ModelAnimation anim, int32 frame)
	{
		UpdateModelAnimationBones_Impl(model, anim, frame);
	}
	[LinkName("UpdateModelAnimationBones")]
	private static extern void UpdateModelAnimationBones_Impl(in Model model, in ModelAnimation anim, int32 frame);
	
	/// Unload animation data
	[Inline]
	public static void UnloadModelAnimation(ModelAnimation anim)
	{
		UnloadModelAnimation_Impl(anim);
	}
	[LinkName("UnloadModelAnimation")]
	private static extern void UnloadModelAnimation_Impl(in ModelAnimation anim);
	
	/// Check model animation skeleton match
	[Inline]
	public static bool IsModelAnimationValid(Model model, ModelAnimation anim)
	{
		return IsModelAnimationValid_Impl(model, anim);
	}
	[LinkName("IsModelAnimationValid")]
	private static extern bool IsModelAnimationValid_Impl(in Model model, in ModelAnimation anim);
	
	/// Check collision between two spheres
	[Inline]
	public static bool CheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2)
	{
		return CheckCollisionSpheres_Impl(center1, radius1, center2, radius2);
	}
	[LinkName("CheckCollisionSpheres")]
	private static extern bool CheckCollisionSpheres_Impl(in Vector3 center1, float radius1, in Vector3 center2, float radius2);
	
	/// Check collision between two bounding boxes
	[Inline]
	public static bool CheckCollisionBoxes(BoundingBox box1, BoundingBox box2)
	{
		return CheckCollisionBoxes_Impl(box1, box2);
	}
	[LinkName("CheckCollisionBoxes")]
	private static extern bool CheckCollisionBoxes_Impl(in BoundingBox box1, in BoundingBox box2);
	
	/// Check collision between box and sphere
	[Inline]
	public static bool CheckCollisionBoxSphere(BoundingBox @box, Vector3 center, float radius)
	{
		return CheckCollisionBoxSphere_Impl(@box, center, radius);
	}
	[LinkName("CheckCollisionBoxSphere")]
	private static extern bool CheckCollisionBoxSphere_Impl(in BoundingBox @box, in Vector3 center, float radius);
	
	/// Get collision info between ray and sphere
	[Inline]
	public static RayCollision GetRayCollisionSphere(Ray ray, Vector3 center, float radius)
	{
		return GetRayCollisionSphere_Impl(ray, center, radius);
	}
	[LinkName("GetRayCollisionSphere")]
	private static extern RayCollision GetRayCollisionSphere_Impl(in Ray ray, in Vector3 center, float radius);
	
	/// Get collision info between ray and box
	[Inline]
	public static RayCollision GetRayCollisionBox(Ray ray, BoundingBox @box)
	{
		return GetRayCollisionBox_Impl(ray, @box);
	}
	[LinkName("GetRayCollisionBox")]
	private static extern RayCollision GetRayCollisionBox_Impl(in Ray ray, in BoundingBox @box);
	
	/// Get collision info between ray and mesh
	[Inline]
	public static RayCollision GetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform)
	{
		return GetRayCollisionMesh_Impl(ray, mesh, transform);
	}
	[LinkName("GetRayCollisionMesh")]
	private static extern RayCollision GetRayCollisionMesh_Impl(in Ray ray, in Mesh mesh, in Matrix transform);
	
	/// Get collision info between ray and triangle
	[Inline]
	public static RayCollision GetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3)
	{
		return GetRayCollisionTriangle_Impl(ray, p1, p2, p3);
	}
	[LinkName("GetRayCollisionTriangle")]
	private static extern RayCollision GetRayCollisionTriangle_Impl(in Ray ray, in Vector3 p1, in Vector3 p2, in Vector3 p3);
	
	/// Get collision info between ray and quad
	[Inline]
	public static RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4)
	{
		return GetRayCollisionQuad_Impl(ray, p1, p2, p3, p4);
	}
	[LinkName("GetRayCollisionQuad")]
	private static extern RayCollision GetRayCollisionQuad_Impl(in Ray ray, in Vector3 p1, in Vector3 p2, in Vector3 p3, in Vector3 p4);
	
	/// Checks if wave data is valid (data loaded and parameters)
	[Inline]
	public static bool IsWaveValid(Wave wave)
	{
		return IsWaveValid_Impl(wave);
	}
	[LinkName("IsWaveValid")]
	private static extern bool IsWaveValid_Impl(in Wave wave);
	
	/// Load sound from wave data
	[Inline]
	public static Sound LoadSoundFromWave(Wave wave)
	{
		return LoadSoundFromWave_Impl(wave);
	}
	[LinkName("LoadSoundFromWave")]
	private static extern Sound LoadSoundFromWave_Impl(in Wave wave);
	
	/// Create a new sound that shares the same sample data as the source sound, does not own the sound data
	[Inline]
	public static Sound LoadSoundAlias(Sound source)
	{
		return LoadSoundAlias_Impl(source);
	}
	[LinkName("LoadSoundAlias")]
	private static extern Sound LoadSoundAlias_Impl(in Sound source);
	
	/// Checks if a sound is valid (data loaded and buffers initialized)
	[Inline]
	public static bool IsSoundValid(Sound sound)
	{
		return IsSoundValid_Impl(sound);
	}
	[LinkName("IsSoundValid")]
	private static extern bool IsSoundValid_Impl(in Sound sound);
	
	/// Update sound buffer with new data
	[Inline]
	public static void UpdateSound(Sound sound, void *data, int32 sampleCount)
	{
		UpdateSound_Impl(sound, data, sampleCount);
	}
	[LinkName("UpdateSound")]
	private static extern void UpdateSound_Impl(in Sound sound, void *data, int32 sampleCount);
	
	/// Unload wave data
	[Inline]
	public static void UnloadWave(Wave wave)
	{
		UnloadWave_Impl(wave);
	}
	[LinkName("UnloadWave")]
	private static extern void UnloadWave_Impl(in Wave wave);
	
	/// Unload sound
	[Inline]
	public static void UnloadSound(Sound sound)
	{
		UnloadSound_Impl(sound);
	}
	[LinkName("UnloadSound")]
	private static extern void UnloadSound_Impl(in Sound sound);
	
	/// Unload a sound alias (does not deallocate sample data)
	[Inline]
	public static void UnloadSoundAlias(Sound alias)
	{
		UnloadSoundAlias_Impl(alias);
	}
	[LinkName("UnloadSoundAlias")]
	private static extern void UnloadSoundAlias_Impl(in Sound alias);
	
	/// Export wave data to file, returns true on success
	[Inline]
	public static bool ExportWave(Wave wave, char8 *fileName)
	{
		return ExportWave_Impl(wave, fileName);
	}
	[LinkName("ExportWave")]
	private static extern bool ExportWave_Impl(in Wave wave, char8 *fileName);
	
	/// Export wave sample data to code (.h), returns true on success
	[Inline]
	public static bool ExportWaveAsCode(Wave wave, char8 *fileName)
	{
		return ExportWaveAsCode_Impl(wave, fileName);
	}
	[LinkName("ExportWaveAsCode")]
	private static extern bool ExportWaveAsCode_Impl(in Wave wave, char8 *fileName);
	
	/// Play a sound
	[Inline]
	public static void PlaySound(Sound sound)
	{
		PlaySound_Impl(sound);
	}
	[LinkName("PlaySound")]
	private static extern void PlaySound_Impl(in Sound sound);
	
	/// Stop playing a sound
	[Inline]
	public static void StopSound(Sound sound)
	{
		StopSound_Impl(sound);
	}
	[LinkName("StopSound")]
	private static extern void StopSound_Impl(in Sound sound);
	
	/// Pause a sound
	[Inline]
	public static void PauseSound(Sound sound)
	{
		PauseSound_Impl(sound);
	}
	[LinkName("PauseSound")]
	private static extern void PauseSound_Impl(in Sound sound);
	
	/// Resume a paused sound
	[Inline]
	public static void ResumeSound(Sound sound)
	{
		ResumeSound_Impl(sound);
	}
	[LinkName("ResumeSound")]
	private static extern void ResumeSound_Impl(in Sound sound);
	
	/// Check if a sound is currently playing
	[Inline]
	public static bool IsSoundPlaying(Sound sound)
	{
		return IsSoundPlaying_Impl(sound);
	}
	[LinkName("IsSoundPlaying")]
	private static extern bool IsSoundPlaying_Impl(in Sound sound);
	
	/// Set volume for a sound (1.0 is max level)
	[Inline]
	public static void SetSoundVolume(Sound sound, float volume)
	{
		SetSoundVolume_Impl(sound, volume);
	}
	[LinkName("SetSoundVolume")]
	private static extern void SetSoundVolume_Impl(in Sound sound, float volume);
	
	/// Set pitch for a sound (1.0 is base level)
	[Inline]
	public static void SetSoundPitch(Sound sound, float pitch)
	{
		SetSoundPitch_Impl(sound, pitch);
	}
	[LinkName("SetSoundPitch")]
	private static extern void SetSoundPitch_Impl(in Sound sound, float pitch);
	
	/// Set pan for a sound (0.5 is center)
	[Inline]
	public static void SetSoundPan(Sound sound, float pan)
	{
		SetSoundPan_Impl(sound, pan);
	}
	[LinkName("SetSoundPan")]
	private static extern void SetSoundPan_Impl(in Sound sound, float pan);
	
	/// Copy a wave to a new wave
	[Inline]
	public static Wave WaveCopy(Wave wave)
	{
		return WaveCopy_Impl(wave);
	}
	[LinkName("WaveCopy")]
	private static extern Wave WaveCopy_Impl(in Wave wave);
	
	/// Load samples data from wave as a 32bit float data array
	[Inline]
	public static float * LoadWaveSamples(Wave wave)
	{
		return LoadWaveSamples_Impl(wave);
	}
	[LinkName("LoadWaveSamples")]
	private static extern float * LoadWaveSamples_Impl(in Wave wave);
	
	/// Checks if a music stream is valid (context and buffers initialized)
	[Inline]
	public static bool IsMusicValid(Music music)
	{
		return IsMusicValid_Impl(music);
	}
	[LinkName("IsMusicValid")]
	private static extern bool IsMusicValid_Impl(in Music music);
	
	/// Unload music stream
	[Inline]
	public static void UnloadMusicStream(Music music)
	{
		UnloadMusicStream_Impl(music);
	}
	[LinkName("UnloadMusicStream")]
	private static extern void UnloadMusicStream_Impl(in Music music);
	
	/// Start music playing
	[Inline]
	public static void PlayMusicStream(Music music)
	{
		PlayMusicStream_Impl(music);
	}
	[LinkName("PlayMusicStream")]
	private static extern void PlayMusicStream_Impl(in Music music);
	
	/// Check if music is playing
	[Inline]
	public static bool IsMusicStreamPlaying(Music music)
	{
		return IsMusicStreamPlaying_Impl(music);
	}
	[LinkName("IsMusicStreamPlaying")]
	private static extern bool IsMusicStreamPlaying_Impl(in Music music);
	
	/// Updates buffers for music streaming
	[Inline]
	public static void UpdateMusicStream(Music music)
	{
		UpdateMusicStream_Impl(music);
	}
	[LinkName("UpdateMusicStream")]
	private static extern void UpdateMusicStream_Impl(in Music music);
	
	/// Stop music playing
	[Inline]
	public static void StopMusicStream(Music music)
	{
		StopMusicStream_Impl(music);
	}
	[LinkName("StopMusicStream")]
	private static extern void StopMusicStream_Impl(in Music music);
	
	/// Pause music playing
	[Inline]
	public static void PauseMusicStream(Music music)
	{
		PauseMusicStream_Impl(music);
	}
	[LinkName("PauseMusicStream")]
	private static extern void PauseMusicStream_Impl(in Music music);
	
	/// Resume playing paused music
	[Inline]
	public static void ResumeMusicStream(Music music)
	{
		ResumeMusicStream_Impl(music);
	}
	[LinkName("ResumeMusicStream")]
	private static extern void ResumeMusicStream_Impl(in Music music);
	
	/// Seek music to a position (in seconds)
	[Inline]
	public static void SeekMusicStream(Music music, float position)
	{
		SeekMusicStream_Impl(music, position);
	}
	[LinkName("SeekMusicStream")]
	private static extern void SeekMusicStream_Impl(in Music music, float position);
	
	/// Set volume for music (1.0 is max level)
	[Inline]
	public static void SetMusicVolume(Music music, float volume)
	{
		SetMusicVolume_Impl(music, volume);
	}
	[LinkName("SetMusicVolume")]
	private static extern void SetMusicVolume_Impl(in Music music, float volume);
	
	/// Set pitch for a music (1.0 is base level)
	[Inline]
	public static void SetMusicPitch(Music music, float pitch)
	{
		SetMusicPitch_Impl(music, pitch);
	}
	[LinkName("SetMusicPitch")]
	private static extern void SetMusicPitch_Impl(in Music music, float pitch);
	
	/// Set pan for a music (0.5 is center)
	[Inline]
	public static void SetMusicPan(Music music, float pan)
	{
		SetMusicPan_Impl(music, pan);
	}
	[LinkName("SetMusicPan")]
	private static extern void SetMusicPan_Impl(in Music music, float pan);
	
	/// Get music time length (in seconds)
	[Inline]
	public static float GetMusicTimeLength(Music music)
	{
		return GetMusicTimeLength_Impl(music);
	}
	[LinkName("GetMusicTimeLength")]
	private static extern float GetMusicTimeLength_Impl(in Music music);
	
	/// Get current music time played (in seconds)
	[Inline]
	public static float GetMusicTimePlayed(Music music)
	{
		return GetMusicTimePlayed_Impl(music);
	}
	[LinkName("GetMusicTimePlayed")]
	private static extern float GetMusicTimePlayed_Impl(in Music music);
	
	/// Checks if an audio stream is valid (buffers initialized)
	[Inline]
	public static bool IsAudioStreamValid(AudioStream stream)
	{
		return IsAudioStreamValid_Impl(stream);
	}
	[LinkName("IsAudioStreamValid")]
	private static extern bool IsAudioStreamValid_Impl(in AudioStream stream);
	
	/// Unload audio stream and free memory
	[Inline]
	public static void UnloadAudioStream(AudioStream stream)
	{
		UnloadAudioStream_Impl(stream);
	}
	[LinkName("UnloadAudioStream")]
	private static extern void UnloadAudioStream_Impl(in AudioStream stream);
	
	/// Update audio stream buffers with data
	[Inline]
	public static void UpdateAudioStream(AudioStream stream, void *data, int32 frameCount)
	{
		UpdateAudioStream_Impl(stream, data, frameCount);
	}
	[LinkName("UpdateAudioStream")]
	private static extern void UpdateAudioStream_Impl(in AudioStream stream, void *data, int32 frameCount);
	
	/// Check if any audio stream buffers requires refill
	[Inline]
	public static bool IsAudioStreamProcessed(AudioStream stream)
	{
		return IsAudioStreamProcessed_Impl(stream);
	}
	[LinkName("IsAudioStreamProcessed")]
	private static extern bool IsAudioStreamProcessed_Impl(in AudioStream stream);
	
	/// Play audio stream
	[Inline]
	public static void PlayAudioStream(AudioStream stream)
	{
		PlayAudioStream_Impl(stream);
	}
	[LinkName("PlayAudioStream")]
	private static extern void PlayAudioStream_Impl(in AudioStream stream);
	
	/// Pause audio stream
	[Inline]
	public static void PauseAudioStream(AudioStream stream)
	{
		PauseAudioStream_Impl(stream);
	}
	[LinkName("PauseAudioStream")]
	private static extern void PauseAudioStream_Impl(in AudioStream stream);
	
	/// Resume audio stream
	[Inline]
	public static void ResumeAudioStream(AudioStream stream)
	{
		ResumeAudioStream_Impl(stream);
	}
	[LinkName("ResumeAudioStream")]
	private static extern void ResumeAudioStream_Impl(in AudioStream stream);
	
	/// Check if audio stream is playing
	[Inline]
	public static bool IsAudioStreamPlaying(AudioStream stream)
	{
		return IsAudioStreamPlaying_Impl(stream);
	}
	[LinkName("IsAudioStreamPlaying")]
	private static extern bool IsAudioStreamPlaying_Impl(in AudioStream stream);
	
	/// Stop audio stream
	[Inline]
	public static void StopAudioStream(AudioStream stream)
	{
		StopAudioStream_Impl(stream);
	}
	[LinkName("StopAudioStream")]
	private static extern void StopAudioStream_Impl(in AudioStream stream);
	
	/// Set volume for audio stream (1.0 is max level)
	[Inline]
	public static void SetAudioStreamVolume(AudioStream stream, float volume)
	{
		SetAudioStreamVolume_Impl(stream, volume);
	}
	[LinkName("SetAudioStreamVolume")]
	private static extern void SetAudioStreamVolume_Impl(in AudioStream stream, float volume);
	
	/// Set pitch for audio stream (1.0 is base level)
	[Inline]
	public static void SetAudioStreamPitch(AudioStream stream, float pitch)
	{
		SetAudioStreamPitch_Impl(stream, pitch);
	}
	[LinkName("SetAudioStreamPitch")]
	private static extern void SetAudioStreamPitch_Impl(in AudioStream stream, float pitch);
	
	/// Set pan for audio stream (0.5 is centered)
	[Inline]
	public static void SetAudioStreamPan(AudioStream stream, float pan)
	{
		SetAudioStreamPan_Impl(stream, pan);
	}
	[LinkName("SetAudioStreamPan")]
	private static extern void SetAudioStreamPan_Impl(in AudioStream stream, float pan);
	
	/// Audio thread callback to request new data
	[Inline]
	public static void SetAudioStreamCallback(AudioStream stream, AudioCallback callback)
	{
		SetAudioStreamCallback_Impl(stream, callback);
	}
	[LinkName("SetAudioStreamCallback")]
	private static extern void SetAudioStreamCallback_Impl(in AudioStream stream, AudioCallback callback);
	
	/// Attach audio stream processor to stream, receives the samples as 'float'
	[Inline]
	public static void AttachAudioStreamProcessor(AudioStream stream, AudioCallback processor)
	{
		AttachAudioStreamProcessor_Impl(stream, processor);
	}
	[LinkName("AttachAudioStreamProcessor")]
	private static extern void AttachAudioStreamProcessor_Impl(in AudioStream stream, AudioCallback processor);
	
	/// Detach audio stream processor from stream
	[Inline]
	public static void DetachAudioStreamProcessor(AudioStream stream, AudioCallback processor)
	{
		DetachAudioStreamProcessor_Impl(stream, processor);
	}
	[LinkName("DetachAudioStreamProcessor")]
	private static extern void DetachAudioStreamProcessor_Impl(in AudioStream stream, AudioCallback processor);
	
#endif
	
	/// Logging: Redirect trace log messages
	public function void TraceLogCallback(int32 logLevel, char8 *text, void*args);
	
	/// FileIO: Load binary data
	public function char8 * LoadFileDataCallback(char8 *fileName, int32 *dataSize);
	
	/// FileIO: Save binary data
	public function bool SaveFileDataCallback(char8 *fileName, void *data, int32 dataSize);
	
	/// FileIO: Load text data
	public function char8 * LoadFileTextCallback(char8 *fileName);
	
	/// FileIO: Save text data
	public function bool SaveFileTextCallback(char8 *fileName, char8 *text);
	
	public function void AudioCallback(void *bufferData, int32 frames);
	
}
