using System;
using System.Interop;

namespace RaylibBeef;

public static class Raylib
{
	public const int32 RAYLIB_VERSION_MAJOR = 5;
	
	public const int32 RAYLIB_VERSION_MINOR = 0;
	
	public const int32 RAYLIB_VERSION_PATCH = 0;
	
	public const char8* RAYLIB_VERSION = "5.0";
	
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
	public static extern void InitWindow(int32 width, int32 height, char8 * title);
	
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
	
	/// Check if window is currently hidden (only PLATFORM_DESKTOP)
	[CLink]
	public static extern bool IsWindowHidden();
	
	/// Check if window is currently minimized (only PLATFORM_DESKTOP)
	[CLink]
	public static extern bool IsWindowMinimized();
	
	/// Check if window is currently maximized (only PLATFORM_DESKTOP)
	[CLink]
	public static extern bool IsWindowMaximized();
	
	/// Check if window is currently focused (only PLATFORM_DESKTOP)
	[CLink]
	public static extern bool IsWindowFocused();
	
	/// Check if window has been resized last frame
	[CLink]
	public static extern bool IsWindowResized();
	
	/// Check if one specific window flag is enabled
	[CLink]
	public static extern bool IsWindowState(int32 flag);
	
	/// Set window configuration state using flags (only PLATFORM_DESKTOP)
	[CLink]
	public static extern void SetWindowState(int32 flags);
	
	/// Clear window configuration state flags
	[CLink]
	public static extern void ClearWindowState(int32 flags);
	
	/// Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)
	[CLink]
	public static extern void ToggleFullscreen();
	
	/// Toggle window state: borderless windowed (only PLATFORM_DESKTOP)
	[CLink]
	public static extern void ToggleBorderlessWindowed();
	
	/// Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
	[CLink]
	public static extern void MaximizeWindow();
	
	/// Set window state: minimized, if resizable (only PLATFORM_DESKTOP)
	[CLink]
	public static extern void MinimizeWindow();
	
	/// Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
	[CLink]
	public static extern void RestoreWindow();
	
	/// Set icon for window (single image, RGBA 32bit, only PLATFORM_DESKTOP)
	[CLink]
	public static extern void SetWindowIcon(Image image);
	
	/// Set icon for window (multiple images, RGBA 32bit, only PLATFORM_DESKTOP)
	[CLink]
	public static extern void SetWindowIcons(Image * images, int32 count);
	
	/// Set title for window (only PLATFORM_DESKTOP and PLATFORM_WEB)
	[CLink]
	public static extern void SetWindowTitle(char8 * title);
	
	/// Set window position on screen (only PLATFORM_DESKTOP)
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
	
	/// Set window opacity [0.0f..1.0f] (only PLATFORM_DESKTOP)
	[CLink]
	public static extern void SetWindowOpacity(float opacity);
	
	/// Set window focused (only PLATFORM_DESKTOP)
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
	
	/// Get current connected monitor
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
	public static extern void SetClipboardText(char8 * text);
	
	/// Get clipboard text content
	[CLink]
	public static extern char8 * GetClipboardText();
	
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
	
	/// Set background color (framebuffer clear color)
	[CLink]
	public static extern void ClearBackground(Color color);
	
	/// Setup canvas (framebuffer) to start drawing
	[CLink]
	public static extern void BeginDrawing();
	
	/// End canvas drawing and swap buffers (double buffering)
	[CLink]
	public static extern void EndDrawing();
	
	/// Begin 2D mode with custom camera (2D)
	[CLink]
	public static extern void BeginMode2D(Camera2D camera);
	
	/// Ends 2D mode with custom camera
	[CLink]
	public static extern void EndMode2D();
	
	/// Begin 3D mode with custom camera (3D)
	[CLink]
	public static extern void BeginMode3D(Camera3D camera);
	
	/// Ends 3D mode and returns to default 2D orthographic mode
	[CLink]
	public static extern void EndMode3D();
	
	/// Begin drawing to render texture
	[CLink]
	public static extern void BeginTextureMode(RenderTexture2D target);
	
	/// Ends drawing to render texture
	[CLink]
	public static extern void EndTextureMode();
	
	/// Begin custom shader drawing
	[CLink]
	public static extern void BeginShaderMode(Shader shader);
	
	/// End custom shader drawing (use default shader)
	[CLink]
	public static extern void EndShaderMode();
	
	/// Begin blending mode (alpha, additive, multiplied, subtract, custom)
	[CLink]
	public static extern void BeginBlendMode(int32 mode);
	
	/// End blending mode (reset to default: alpha blending)
	[CLink]
	public static extern void EndBlendMode();
	
	/// Begin scissor mode (define screen area for following drawing)
	[CLink]
	public static extern void BeginScissorMode(int32 x, int32 y, int32 width, int32 height);
	
	/// End scissor mode
	[CLink]
	public static extern void EndScissorMode();
	
	/// Begin stereo rendering (requires VR simulator)
	[CLink]
	public static extern void BeginVrStereoMode(VrStereoConfig config);
	
	/// End stereo rendering (requires VR simulator)
	[CLink]
	public static extern void EndVrStereoMode();
	
	/// Load VR stereo config for VR simulator device parameters
	[CLink]
	public static extern VrStereoConfig LoadVrStereoConfig(VrDeviceInfo device);
	
	/// Unload VR stereo config
	[CLink]
	public static extern void UnloadVrStereoConfig(VrStereoConfig config);
	
	/// Load shader from files and bind default locations
	[CLink]
	public static extern Shader LoadShader(char8 * vsFileName, char8 * fsFileName);
	
	/// Load shader from code strings and bind default locations
	[CLink]
	public static extern Shader LoadShaderFromMemory(char8 * vsCode, char8 * fsCode);
	
	/// Check if a shader is ready
	[CLink]
	public static extern bool IsShaderReady(Shader shader);
	
	/// Get shader uniform location
	[CLink]
	public static extern int32 GetShaderLocation(Shader shader, char8 * uniformName);
	
	/// Get shader attribute location
	[CLink]
	public static extern int32 GetShaderLocationAttrib(Shader shader, char8 * attribName);
	
	/// Set shader uniform value
	[CLink]
	public static extern void SetShaderValue(Shader shader, int32 locIndex, void * value, int32 uniformType);
	
	/// Set shader uniform value vector
	[CLink]
	public static extern void SetShaderValueV(Shader shader, int32 locIndex, void * value, int32 uniformType, int32 count);
	
	/// Set shader uniform value (matrix 4x4)
	[CLink]
	public static extern void SetShaderValueMatrix(Shader shader, int32 locIndex, Matrix mat);
	
	/// Set shader uniform value for texture (sampler2d)
	[CLink]
	public static extern void SetShaderValueTexture(Shader shader, int32 locIndex, Texture2D texture);
	
	/// Unload shader from GPU memory (VRAM)
	[CLink]
	public static extern void UnloadShader(Shader shader);
	
	/// Get a ray trace from mouse position
	[CLink]
	public static extern Ray GetMouseRay(Vector2 mousePosition, Camera camera);
	
	/// Get camera transform matrix (view matrix)
	[CLink]
	public static extern Matrix GetCameraMatrix(Camera camera);
	
	/// Get camera 2d transform matrix
	[CLink]
	public static extern Matrix GetCameraMatrix2D(Camera2D camera);
	
	/// Get the screen space position for a 3d world space position
	[CLink]
	public static extern Vector2 GetWorldToScreen(Vector3 position, Camera camera);
	
	/// Get the world space position for a 2d camera screen space position
	[CLink]
	public static extern Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera);
	
	/// Get size position for a 3d world space position
	[CLink]
	public static extern Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int32 width, int32 height);
	
	/// Get the screen space position for a 2d camera world space position
	[CLink]
	public static extern Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera);
	
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
	public static extern void UnloadRandomSequence(int32 * sequence);
	
	/// Takes a screenshot of current screen (filename extension defines format)
	[CLink]
	public static extern void TakeScreenshot(char8 * fileName);
	
	/// Setup init configuration flags (view FLAGS)
	[CLink]
	public static extern void SetConfigFlags(int32 flags);
	
	/// Open URL with default system browser (if available)
	[CLink]
	public static extern void OpenURL(char8 * url);
	
	/// Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
	[CLink]
	public static extern void TraceLog(int32 logLevel, char8 * text);
	
	/// Set the current threshold (minimum) log level
	[CLink]
	public static extern void SetTraceLogLevel(int32 logLevel);
	
	/// Internal memory allocator
	[CLink]
	public static extern void * MemAlloc(int32 size);
	
	/// Internal memory reallocator
	[CLink]
	public static extern void * MemRealloc(void * ptr, int32 size);
	
	/// Internal memory free
	[CLink]
	public static extern void MemFree(void * ptr);
	
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
	public static extern char8 * LoadFileData(char8 * fileName, int32 * dataSize);
	
	/// Unload file data allocated by LoadFileData()
	[CLink]
	public static extern void UnloadFileData(char8 * data);
	
	/// Save data to file from byte array (write), returns true on success
	[CLink]
	public static extern bool SaveFileData(char8 * fileName, void * data, int32 dataSize);
	
	/// Export data to code (.h), returns true on success
	[CLink]
	public static extern bool ExportDataAsCode(char8 * data, int32 dataSize, char8 * fileName);
	
	/// Load text data from file (read), returns a '\0' terminated string
	[CLink]
	public static extern char8 * LoadFileText(char8 * fileName);
	
	/// Unload file text data allocated by LoadFileText()
	[CLink]
	public static extern void UnloadFileText(char8 * text);
	
	/// Save text data to file (write), string must be '\0' terminated, returns true on success
	[CLink]
	public static extern bool SaveFileText(char8 * fileName, char8 * text);
	
	/// Check if file exists
	[CLink]
	public static extern bool FileExists(char8 * fileName);
	
	/// Check if a directory path exists
	[CLink]
	public static extern bool DirectoryExists(char8 * dirPath);
	
	/// Check file extension (including point: .png, .wav)
	[CLink]
	public static extern bool IsFileExtension(char8 * fileName, char8 * ext);
	
	/// Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)
	[CLink]
	public static extern int32 GetFileLength(char8 * fileName);
	
	/// Get pointer to extension for a filename string (includes dot: '.png')
	[CLink]
	public static extern char8 * GetFileExtension(char8 * fileName);
	
	/// Get pointer to filename for a path string
	[CLink]
	public static extern char8 * GetFileName(char8 * filePath);
	
	/// Get filename string without extension (uses static string)
	[CLink]
	public static extern char8 * GetFileNameWithoutExt(char8 * filePath);
	
	/// Get full path for a given fileName with path (uses static string)
	[CLink]
	public static extern char8 * GetDirectoryPath(char8 * filePath);
	
	/// Get previous directory path for a given path (uses static string)
	[CLink]
	public static extern char8 * GetPrevDirectoryPath(char8 * dirPath);
	
	/// Get current working directory (uses static string)
	[CLink]
	public static extern char8 * GetWorkingDirectory();
	
	/// Get the directory of the running application (uses static string)
	[CLink]
	public static extern char8 * GetApplicationDirectory();
	
	/// Change working directory, return true on success
	[CLink]
	public static extern bool ChangeDirectory(char8 * dir);
	
	/// Check if a given path is a file or a directory
	[CLink]
	public static extern bool IsPathFile(char8 * path);
	
	/// Load directory filepaths
	[CLink]
	public static extern FilePathList LoadDirectoryFiles(char8 * dirPath);
	
	/// Load directory filepaths with extension filtering and recursive directory scan
	[CLink]
	public static extern FilePathList LoadDirectoryFilesEx(char8 * basePath, char8 * filter, bool scanSubdirs);
	
	/// Unload filepaths
	[CLink]
	public static extern void UnloadDirectoryFiles(FilePathList files);
	
	/// Check if a file has been dropped into window
	[CLink]
	public static extern bool IsFileDropped();
	
	/// Load dropped filepaths
	[CLink]
	public static extern FilePathList LoadDroppedFiles();
	
	/// Unload dropped filepaths
	[CLink]
	public static extern void UnloadDroppedFiles(FilePathList files);
	
	/// Get file modification time (last write time)
	[CLink]
	public static extern int32 GetFileModTime(char8 * fileName);
	
	/// Compress data (DEFLATE algorithm), memory must be MemFree()
	[CLink]
	public static extern char8 * CompressData(char8 * data, int32 dataSize, int32 * compDataSize);
	
	/// Decompress data (DEFLATE algorithm), memory must be MemFree()
	[CLink]
	public static extern char8 * DecompressData(char8 * compData, int32 compDataSize, int32 * dataSize);
	
	/// Encode data to Base64 string, memory must be MemFree()
	[CLink]
	public static extern char8 * EncodeDataBase64(char8 * data, int32 dataSize, int32 * outputSize);
	
	/// Decode Base64 string data, memory must be MemFree()
	[CLink]
	public static extern char8 * DecodeDataBase64(char8 * data, int32 * outputSize);
	
	/// Load automation events list from file, NULL for empty list, capacity = MAX_AUTOMATION_EVENTS
	[CLink]
	public static extern AutomationEventList LoadAutomationEventList(char8 * fileName);
	
	/// Unload automation events list from file
	[CLink]
	public static extern void UnloadAutomationEventList(AutomationEventList * list);
	
	/// Export automation events list as text file
	[CLink]
	public static extern bool ExportAutomationEventList(AutomationEventList list, char8 * fileName);
	
	/// Set automation event list to record to
	[CLink]
	public static extern void SetAutomationEventList(AutomationEventList * list);
	
	/// Set automation event internal base frame to start recording
	[CLink]
	public static extern void SetAutomationEventBaseFrame(int32 frame);
	
	/// Start recording automation events (AutomationEventList must be set)
	[CLink]
	public static extern void StartAutomationEventRecording();
	
	/// Stop recording automation events
	[CLink]
	public static extern void StopAutomationEventRecording();
	
	/// Play a recorded automation event
	[CLink]
	public static extern void PlayAutomationEvent(AutomationEvent event);
	
	/// Check if a key has been pressed once
	[CLink]
	public static extern bool IsKeyPressed(int32 key);
	
	/// Check if a key has been pressed again (Only PLATFORM_DESKTOP)
	[CLink]
	public static extern bool IsKeyPressedRepeat(int32 key);
	
	/// Check if a key is being pressed
	[CLink]
	public static extern bool IsKeyDown(int32 key);
	
	/// Check if a key has been released once
	[CLink]
	public static extern bool IsKeyReleased(int32 key);
	
	/// Check if a key is NOT being pressed
	[CLink]
	public static extern bool IsKeyUp(int32 key);
	
	/// Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
	[CLink]
	public static extern int32 GetKeyPressed();
	
	/// Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
	[CLink]
	public static extern int32 GetCharPressed();
	
	/// Set a custom key to exit program (default is ESC)
	[CLink]
	public static extern void SetExitKey(int32 key);
	
	/// Check if a gamepad is available
	[CLink]
	public static extern bool IsGamepadAvailable(int32 gamepad);
	
	/// Get gamepad internal name id
	[CLink]
	public static extern char8 * GetGamepadName(int32 gamepad);
	
	/// Check if a gamepad button has been pressed once
	[CLink]
	public static extern bool IsGamepadButtonPressed(int32 gamepad, int32 button);
	
	/// Check if a gamepad button is being pressed
	[CLink]
	public static extern bool IsGamepadButtonDown(int32 gamepad, int32 button);
	
	/// Check if a gamepad button has been released once
	[CLink]
	public static extern bool IsGamepadButtonReleased(int32 gamepad, int32 button);
	
	/// Check if a gamepad button is NOT being pressed
	[CLink]
	public static extern bool IsGamepadButtonUp(int32 gamepad, int32 button);
	
	/// Get the last gamepad button pressed
	[CLink]
	public static extern int32 GetGamepadButtonPressed();
	
	/// Get gamepad axis count for a gamepad
	[CLink]
	public static extern int32 GetGamepadAxisCount(int32 gamepad);
	
	/// Get axis movement value for a gamepad axis
	[CLink]
	public static extern float GetGamepadAxisMovement(int32 gamepad, int32 axis);
	
	/// Set internal gamepad mappings (SDL_GameControllerDB)
	[CLink]
	public static extern int32 SetGamepadMappings(char8 * mappings);
	
	/// Check if a mouse button has been pressed once
	[CLink]
	public static extern bool IsMouseButtonPressed(int32 button);
	
	/// Check if a mouse button is being pressed
	[CLink]
	public static extern bool IsMouseButtonDown(int32 button);
	
	/// Check if a mouse button has been released once
	[CLink]
	public static extern bool IsMouseButtonReleased(int32 button);
	
	/// Check if a mouse button is NOT being pressed
	[CLink]
	public static extern bool IsMouseButtonUp(int32 button);
	
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
	
	/// Check if a gesture have been detected
	[CLink]
	public static extern bool IsGestureDetected(int32 gesture);
	
	/// Get latest detected gesture
	[CLink]
	public static extern int32 GetGestureDetected();
	
	/// Get gesture hold time in milliseconds
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
	public static extern void UpdateCamera(Camera * camera, int32 mode);
	
	/// Update camera movement/rotation
	[CLink]
	public static extern void UpdateCameraPro(Camera * camera, Vector3 movement, Vector3 rotation, float zoom);
	
	/// Set texture and rectangle to be used on shapes drawing
	[CLink]
	public static extern void SetShapesTexture(Texture2D texture, Rectangle source);
	
	/// Draw a pixel
	[CLink]
	public static extern void DrawPixel(int32 posX, int32 posY, Color color);
	
	/// Draw a pixel (Vector version)
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
	public static extern void DrawLineStrip(Vector2 * points, int32 pointCount, Color color);
	
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
	public static extern void DrawCircleGradient(int32 centerX, int32 centerY, float radius, Color color1, Color color2);
	
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
	public static extern void DrawRectangleGradientV(int32 posX, int32 posY, int32 width, int32 height, Color color1, Color color2);
	
	/// Draw a horizontal-gradient-filled rectangle
	[CLink]
	public static extern void DrawRectangleGradientH(int32 posX, int32 posY, int32 width, int32 height, Color color1, Color color2);
	
	/// Draw a gradient-filled rectangle with custom vertex colors
	[CLink]
	public static extern void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);
	
	/// Draw rectangle outline
	[CLink]
	public static extern void DrawRectangleLines(int32 posX, int32 posY, int32 width, int32 height, Color color);
	
	/// Draw rectangle outline with extended parameters
	[CLink]
	public static extern void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color);
	
	/// Draw rectangle with rounded edges
	[CLink]
	public static extern void DrawRectangleRounded(Rectangle rec, float roundness, int32 segments, Color color);
	
	/// Draw rectangle with rounded edges outline
	[CLink]
	public static extern void DrawRectangleRoundedLines(Rectangle rec, float roundness, int32 segments, float lineThick, Color color);
	
	/// Draw a color-filled triangle (vertex in counter-clockwise order!)
	[CLink]
	public static extern void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);
	
	/// Draw triangle outline (vertex in counter-clockwise order!)
	[CLink]
	public static extern void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);
	
	/// Draw a triangle fan defined by points (first vertex is the center)
	[CLink]
	public static extern void DrawTriangleFan(Vector2 * points, int32 pointCount, Color color);
	
	/// Draw a triangle strip defined by points
	[CLink]
	public static extern void DrawTriangleStrip(Vector2 * points, int32 pointCount, Color color);
	
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
	public static extern void DrawSplineLinear(Vector2 * points, int32 pointCount, float thick, Color color);
	
	/// Draw spline: B-Spline, minimum 4 points
	[CLink]
	public static extern void DrawSplineBasis(Vector2 * points, int32 pointCount, float thick, Color color);
	
	/// Draw spline: Catmull-Rom, minimum 4 points
	[CLink]
	public static extern void DrawSplineCatmullRom(Vector2 * points, int32 pointCount, float thick, Color color);
	
	/// Draw spline: Quadratic Bezier, minimum 3 points (1 control point): [p1, c2, p3, c4...]
	[CLink]
	public static extern void DrawSplineBezierQuadratic(Vector2 * points, int32 pointCount, float thick, Color color);
	
	/// Draw spline: Cubic Bezier, minimum 4 points (2 control points): [p1, c2, c3, p4, c5, c6...]
	[CLink]
	public static extern void DrawSplineBezierCubic(Vector2 * points, int32 pointCount, float thick, Color color);
	
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
	
	/// Check if point is inside rectangle
	[CLink]
	public static extern bool CheckCollisionPointRec(Vector2 point, Rectangle rec);
	
	/// Check if point is inside circle
	[CLink]
	public static extern bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);
	
	/// Check if point is inside a triangle
	[CLink]
	public static extern bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);
	
	/// Check if point is within a polygon described by array of vertices
	[CLink]
	public static extern bool CheckCollisionPointPoly(Vector2 point, Vector2 * points, int32 pointCount);
	
	/// Check the collision between two lines defined by two points each, returns collision point by reference
	[CLink]
	public static extern bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 * collisionPoint);
	
	/// Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
	[CLink]
	public static extern bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int32 threshold);
	
	/// Get collision rectangle for two rectangles collision
	[CLink]
	public static extern Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);
	
	/// Load image from file into CPU memory (RAM)
	[CLink]
	public static extern Image LoadImage(char8 * fileName);
	
	/// Load image from RAW file data
	[CLink]
	public static extern Image LoadImageRaw(char8 * fileName, int32 width, int32 height, int32 format, int32 headerSize);
	
	/// Load image from SVG file data or string with specified size
	[CLink]
	public static extern Image LoadImageSvg(char8 * fileNameOrString, int32 width, int32 height);
	
	/// Load image sequence from file (frames appended to image.data)
	[CLink]
	public static extern Image LoadImageAnim(char8 * fileName, int32 * frames);
	
	/// Load image from memory buffer, fileType refers to extension: i.e. '.png'
	[CLink]
	public static extern Image LoadImageFromMemory(char8 * fileType, char8 * fileData, int32 dataSize);
	
	/// Load image from GPU texture data
	[CLink]
	public static extern Image LoadImageFromTexture(Texture2D texture);
	
	/// Load image from screen buffer and (screenshot)
	[CLink]
	public static extern Image LoadImageFromScreen();
	
	/// Check if an image is ready
	[CLink]
	public static extern bool IsImageReady(Image image);
	
	/// Unload image from CPU memory (RAM)
	[CLink]
	public static extern void UnloadImage(Image image);
	
	/// Export image data to file, returns true on success
	[CLink]
	public static extern bool ExportImage(Image image, char8 * fileName);
	
	/// Export image to memory buffer
	[CLink]
	public static extern char8 * ExportImageToMemory(Image image, char8 * fileType, int32 * fileSize);
	
	/// Export image as code file defining an array of bytes, returns true on success
	[CLink]
	public static extern bool ExportImageAsCode(Image image, char8 * fileName);
	
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
	public static extern Image GenImageText(int32 width, int32 height, char8 * text);
	
	/// Create an image duplicate (useful for transformations)
	[CLink]
	public static extern Image ImageCopy(Image image);
	
	/// Create an image from another image piece
	[CLink]
	public static extern Image ImageFromImage(Image image, Rectangle rec);
	
	/// Create an image from text (default font)
	[CLink]
	public static extern Image ImageText(char8 * text, int32 fontSize, Color color);
	
	/// Create an image from text (custom sprite font)
	[CLink]
	public static extern Image ImageTextEx(Font font, char8 * text, float fontSize, float spacing, Color tint);
	
	/// Convert image data to desired format
	[CLink]
	public static extern void ImageFormat(Image * image, int32 newFormat);
	
	/// Convert image to POT (power-of-two)
	[CLink]
	public static extern void ImageToPOT(Image * image, Color fill);
	
	/// Crop an image to a defined rectangle
	[CLink]
	public static extern void ImageCrop(Image * image, Rectangle crop);
	
	/// Crop image depending on alpha value
	[CLink]
	public static extern void ImageAlphaCrop(Image * image, float threshold);
	
	/// Clear alpha channel to desired color
	[CLink]
	public static extern void ImageAlphaClear(Image * image, Color color, float threshold);
	
	/// Apply alpha mask to image
	[CLink]
	public static extern void ImageAlphaMask(Image * image, Image alphaMask);
	
	/// Premultiply alpha channel
	[CLink]
	public static extern void ImageAlphaPremultiply(Image * image);
	
	/// Apply Gaussian blur using a box blur approximation
	[CLink]
	public static extern void ImageBlurGaussian(Image * image, int32 blurSize);
	
	/// Resize image (Bicubic scaling algorithm)
	[CLink]
	public static extern void ImageResize(Image * image, int32 newWidth, int32 newHeight);
	
	/// Resize image (Nearest-Neighbor scaling algorithm)
	[CLink]
	public static extern void ImageResizeNN(Image * image, int32 newWidth, int32 newHeight);
	
	/// Resize canvas and fill with color
	[CLink]
	public static extern void ImageResizeCanvas(Image * image, int32 newWidth, int32 newHeight, int32 offsetX, int32 offsetY, Color fill);
	
	/// Compute all mipmap levels for a provided image
	[CLink]
	public static extern void ImageMipmaps(Image * image);
	
	/// Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
	[CLink]
	public static extern void ImageDither(Image * image, int32 rBpp, int32 gBpp, int32 bBpp, int32 aBpp);
	
	/// Flip image vertically
	[CLink]
	public static extern void ImageFlipVertical(Image * image);
	
	/// Flip image horizontally
	[CLink]
	public static extern void ImageFlipHorizontal(Image * image);
	
	/// Rotate image by input angle in degrees (-359 to 359)
	[CLink]
	public static extern void ImageRotate(Image * image, int32 degrees);
	
	/// Rotate image clockwise 90deg
	[CLink]
	public static extern void ImageRotateCW(Image * image);
	
	/// Rotate image counter-clockwise 90deg
	[CLink]
	public static extern void ImageRotateCCW(Image * image);
	
	/// Modify image color: tint
	[CLink]
	public static extern void ImageColorTint(Image * image, Color color);
	
	/// Modify image color: invert
	[CLink]
	public static extern void ImageColorInvert(Image * image);
	
	/// Modify image color: grayscale
	[CLink]
	public static extern void ImageColorGrayscale(Image * image);
	
	/// Modify image color: contrast (-100 to 100)
	[CLink]
	public static extern void ImageColorContrast(Image * image, float contrast);
	
	/// Modify image color: brightness (-255 to 255)
	[CLink]
	public static extern void ImageColorBrightness(Image * image, int32 brightness);
	
	/// Modify image color: replace color
	[CLink]
	public static extern void ImageColorReplace(Image * image, Color color, Color replace);
	
	/// Load color data from image as a Color array (RGBA - 32bit)
	[CLink]
	public static extern Color * LoadImageColors(Image image);
	
	/// Load colors palette from image as a Color array (RGBA - 32bit)
	[CLink]
	public static extern Color * LoadImagePalette(Image image, int32 maxPaletteSize, int32 * colorCount);
	
	/// Unload color data loaded with LoadImageColors()
	[CLink]
	public static extern void UnloadImageColors(Color * colors);
	
	/// Unload colors palette loaded with LoadImagePalette()
	[CLink]
	public static extern void UnloadImagePalette(Color * colors);
	
	/// Get image alpha border rectangle
	[CLink]
	public static extern Rectangle GetImageAlphaBorder(Image image, float threshold);
	
	/// Get image pixel color at (x, y) position
	[CLink]
	public static extern Color GetImageColor(Image image, int32 x, int32 y);
	
	/// Clear image background with given color
	[CLink]
	public static extern void ImageClearBackground(Image * dst, Color color);
	
	/// Draw pixel within an image
	[CLink]
	public static extern void ImageDrawPixel(Image * dst, int32 posX, int32 posY, Color color);
	
	/// Draw pixel within an image (Vector version)
	[CLink]
	public static extern void ImageDrawPixelV(Image * dst, Vector2 position, Color color);
	
	/// Draw line within an image
	[CLink]
	public static extern void ImageDrawLine(Image * dst, int32 startPosX, int32 startPosY, int32 endPosX, int32 endPosY, Color color);
	
	/// Draw line within an image (Vector version)
	[CLink]
	public static extern void ImageDrawLineV(Image * dst, Vector2 start, Vector2 end, Color color);
	
	/// Draw a filled circle within an image
	[CLink]
	public static extern void ImageDrawCircle(Image * dst, int32 centerX, int32 centerY, int32 radius, Color color);
	
	/// Draw a filled circle within an image (Vector version)
	[CLink]
	public static extern void ImageDrawCircleV(Image * dst, Vector2 center, int32 radius, Color color);
	
	/// Draw circle outline within an image
	[CLink]
	public static extern void ImageDrawCircleLines(Image * dst, int32 centerX, int32 centerY, int32 radius, Color color);
	
	/// Draw circle outline within an image (Vector version)
	[CLink]
	public static extern void ImageDrawCircleLinesV(Image * dst, Vector2 center, int32 radius, Color color);
	
	/// Draw rectangle within an image
	[CLink]
	public static extern void ImageDrawRectangle(Image * dst, int32 posX, int32 posY, int32 width, int32 height, Color color);
	
	/// Draw rectangle within an image (Vector version)
	[CLink]
	public static extern void ImageDrawRectangleV(Image * dst, Vector2 position, Vector2 size, Color color);
	
	/// Draw rectangle within an image
	[CLink]
	public static extern void ImageDrawRectangleRec(Image * dst, Rectangle rec, Color color);
	
	/// Draw rectangle lines within an image
	[CLink]
	public static extern void ImageDrawRectangleLines(Image * dst, Rectangle rec, int32 thick, Color color);
	
	/// Draw a source image within a destination image (tint applied to source)
	[CLink]
	public static extern void ImageDraw(Image * dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint);
	
	/// Draw text (using default font) within an image (destination)
	[CLink]
	public static extern void ImageDrawText(Image * dst, char8 * text, int32 posX, int32 posY, int32 fontSize, Color color);
	
	/// Draw text (custom sprite font) within an image (destination)
	[CLink]
	public static extern void ImageDrawTextEx(Image * dst, Font font, char8 * text, Vector2 position, float fontSize, float spacing, Color tint);
	
	/// Load texture from file into GPU memory (VRAM)
	[CLink]
	public static extern Texture2D LoadTexture(char8 * fileName);
	
	/// Load texture from image data
	[CLink]
	public static extern Texture2D LoadTextureFromImage(Image image);
	
	/// Load cubemap from image, multiple image cubemap layouts supported
	[CLink]
	public static extern TextureCubemap LoadTextureCubemap(Image image, int32 layout);
	
	/// Load texture for rendering (framebuffer)
	[CLink]
	public static extern RenderTexture2D LoadRenderTexture(int32 width, int32 height);
	
	/// Check if a texture is ready
	[CLink]
	public static extern bool IsTextureReady(Texture2D texture);
	
	/// Unload texture from GPU memory (VRAM)
	[CLink]
	public static extern void UnloadTexture(Texture2D texture);
	
	/// Check if a render texture is ready
	[CLink]
	public static extern bool IsRenderTextureReady(RenderTexture2D target);
	
	/// Unload render texture from GPU memory (VRAM)
	[CLink]
	public static extern void UnloadRenderTexture(RenderTexture2D target);
	
	/// Update GPU texture with new data
	[CLink]
	public static extern void UpdateTexture(Texture2D texture, void * pixels);
	
	/// Update GPU texture rectangle with new data
	[CLink]
	public static extern void UpdateTextureRec(Texture2D texture, Rectangle rec, void * pixels);
	
	/// Generate GPU mipmaps for a texture
	[CLink]
	public static extern void GenTextureMipmaps(Texture2D * texture);
	
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
	
	/// Get color with alpha applied, alpha goes from 0.0f to 1.0f
	[CLink]
	public static extern Color Fade(Color color, float alpha);
	
	/// Get hexadecimal value for a Color
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
	
	/// Get a Color from HSV values, hue [0..360], saturation/value [0..1]
	[CLink]
	public static extern Color ColorFromHSV(float hue, float saturation, float value);
	
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
	
	/// Get Color structure from hexadecimal value
	[CLink]
	public static extern Color GetColor(int32 hexValue);
	
	/// Get Color from a source pixel pointer of certain format
	[CLink]
	public static extern Color GetPixelColor(void * srcPtr, int32 format);
	
	/// Set color formatted into destination pixel pointer
	[CLink]
	public static extern void SetPixelColor(void * dstPtr, Color color, int32 format);
	
	/// Get pixel data size in bytes for certain format
	[CLink]
	public static extern int32 GetPixelDataSize(int32 width, int32 height, int32 format);
	
	/// Get the default Font
	[CLink]
	public static extern Font GetFontDefault();
	
	/// Load font from file into GPU memory (VRAM)
	[CLink]
	public static extern Font LoadFont(char8 * fileName);
	
	/// Load font from file with extended parameters, use NULL for codepoints and 0 for codepointCount to load the default character setFont
	[CLink]
	public static extern Font LoadFontEx(char8 * fileName, int32 fontSize, int32 * codepoints, int32 codepointCount);
	
	/// Load font from Image (XNA style)
	[CLink]
	public static extern Font LoadFontFromImage(Image image, Color key, int32 firstChar);
	
	/// Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
	[CLink]
	public static extern Font LoadFontFromMemory(char8 * fileType, char8 * fileData, int32 dataSize, int32 fontSize, int32 * codepoints, int32 codepointCount);
	
	/// Check if a font is ready
	[CLink]
	public static extern bool IsFontReady(Font font);
	
	/// Load font data for further use
	[CLink]
	public static extern GlyphInfo * LoadFontData(char8 * fileData, int32 dataSize, int32 fontSize, int32 * codepoints, int32 codepointCount, int32 type);
	
	/// Generate image font atlas using chars info
	[CLink]
	public static extern Image GenImageFontAtlas(GlyphInfo * glyphs, Rectangle ** glyphRecs, int32 glyphCount, int32 fontSize, int32 padding, int32 packMethod);
	
	/// Unload font chars info data (RAM)
	[CLink]
	public static extern void UnloadFontData(GlyphInfo * glyphs, int32 glyphCount);
	
	/// Unload font from GPU memory (VRAM)
	[CLink]
	public static extern void UnloadFont(Font font);
	
	/// Export font as code file, returns true on success
	[CLink]
	public static extern bool ExportFontAsCode(Font font, char8 * fileName);
	
	/// Draw current FPS
	[CLink]
	public static extern void DrawFPS(int32 posX, int32 posY);
	
	/// Draw text (using default font)
	[CLink]
	public static extern void DrawText(char8 * text, int32 posX, int32 posY, int32 fontSize, Color color);
	
	/// Draw text using font and additional parameters
	[CLink]
	public static extern void DrawTextEx(Font font, char8 * text, Vector2 position, float fontSize, float spacing, Color tint);
	
	/// Draw text using Font and pro parameters (rotation)
	[CLink]
	public static extern void DrawTextPro(Font font, char8 * text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint);
	
	/// Draw one character (codepoint)
	[CLink]
	public static extern void DrawTextCodepoint(Font font, int32 codepoint, Vector2 position, float fontSize, Color tint);
	
	/// Draw multiple character (codepoint)
	[CLink]
	public static extern void DrawTextCodepoints(Font font, int32 * codepoints, int32 codepointCount, Vector2 position, float fontSize, float spacing, Color tint);
	
	/// Set vertical line spacing when drawing with line-breaks
	[CLink]
	public static extern void SetTextLineSpacing(int32 spacing);
	
	/// Measure string width for default font
	[CLink]
	public static extern int32 MeasureText(char8 * text, int32 fontSize);
	
	/// Measure string size for Font
	[CLink]
	public static extern Vector2 MeasureTextEx(Font font, char8 * text, float fontSize, float spacing);
	
	/// Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
	[CLink]
	public static extern int32 GetGlyphIndex(Font font, int32 codepoint);
	
	/// Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
	[CLink]
	public static extern GlyphInfo GetGlyphInfo(Font font, int32 codepoint);
	
	/// Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
	[CLink]
	public static extern Rectangle GetGlyphAtlasRec(Font font, int32 codepoint);
	
	/// Load UTF-8 text encoded from codepoints array
	[CLink]
	public static extern char8 * LoadUTF8(int32 * codepoints, int32 length);
	
	/// Unload UTF-8 text encoded from codepoints array
	[CLink]
	public static extern void UnloadUTF8(char8 * text);
	
	/// Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
	[CLink]
	public static extern int32 * LoadCodepoints(char8 * text, int32 * count);
	
	/// Unload codepoints data from memory
	[CLink]
	public static extern void UnloadCodepoints(int32 * codepoints);
	
	/// Get total number of codepoints in a UTF-8 encoded string
	[CLink]
	public static extern int32 GetCodepointCount(char8 * text);
	
	/// Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
	[CLink]
	public static extern int32 GetCodepoint(char8 * text, int32 * codepointSize);
	
	/// Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
	[CLink]
	public static extern int32 GetCodepointNext(char8 * text, int32 * codepointSize);
	
	/// Get previous codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
	[CLink]
	public static extern int32 GetCodepointPrevious(char8 * text, int32 * codepointSize);
	
	/// Encode one codepoint into UTF-8 byte array (array length returned as parameter)
	[CLink]
	public static extern char8 * CodepointToUTF8(int32 codepoint, int32 * utf8Size);
	
	/// Copy one string to another, returns bytes copied
	[CLink]
	public static extern int32 TextCopy(char8 * dst, char8 * src);
	
	/// Check if two text string are equal
	[CLink]
	public static extern bool TextIsEqual(char8 * text1, char8 * text2);
	
	/// Get text length, checks for '\0' ending
	[CLink]
	public static extern int32 TextLength(char8 * text);
	
	/// Text formatting with variables (sprintf() style)
	[CLink]
	public static extern char8 * TextFormat(char8 * text);
	
	/// Get a piece of a text string
	[CLink]
	public static extern char8 * TextSubtext(char8 * text, int32 position, int32 length);
	
	/// Replace text string (WARNING: memory must be freed!)
	[CLink]
	public static extern char8 * TextReplace(char8 * text, char8 * replace, char8 * by);
	
	/// Insert text in a position (WARNING: memory must be freed!)
	[CLink]
	public static extern char8 * TextInsert(char8 * text, char8 * insert, int32 position);
	
	/// Join text strings with delimiter
	[CLink]
	public static extern char8 * TextJoin(char8 ** textList, int32 count, char8 * delimiter);
	
	/// Split text into multiple strings
	[CLink]
	public static extern char8 ** TextSplit(char8 * text, char8 delimiter, int32 * count);
	
	/// Append text at specific position and move cursor!
	[CLink]
	public static extern void TextAppend(char8 * text, char8 * @append, int32 * position);
	
	/// Find first text occurrence within a string
	[CLink]
	public static extern int32 TextFindIndex(char8 * text, char8 * find);
	
	/// Get upper case version of provided string
	[CLink]
	public static extern char8 * TextToUpper(char8 * text);
	
	/// Get lower case version of provided string
	[CLink]
	public static extern char8 * TextToLower(char8 * text);
	
	/// Get Pascal case notation version of provided string
	[CLink]
	public static extern char8 * TextToPascal(char8 * text);
	
	/// Get integer value from text (negative values not supported)
	[CLink]
	public static extern int32 TextToInteger(char8 * text);
	
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
	public static extern void DrawTriangleStrip3D(Vector3 * points, int32 pointCount, Color color);
	
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
	
	/// Draw a grid (centered at (0, 0, 0))
	[CLink]
	public static extern void DrawGrid(int32 slices, float spacing);
	
	/// Load model from files (meshes and materials)
	[CLink]
	public static extern Model LoadModel(char8 * fileName);
	
	/// Load model from generated mesh (default material)
	[CLink]
	public static extern Model LoadModelFromMesh(Mesh mesh);
	
	/// Check if a model is ready
	[CLink]
	public static extern bool IsModelReady(Model model);
	
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
	
	/// Draw bounding box (wires)
	[CLink]
	public static extern void DrawBoundingBox(BoundingBox @box, Color color);
	
	/// Draw a billboard texture
	[CLink]
	public static extern void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float size, Color tint);
	
	/// Draw a billboard texture defined by source
	[CLink]
	public static extern void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint);
	
	/// Draw a billboard texture defined by source and rotation
	[CLink]
	public static extern void DrawBillboardPro(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint);
	
	/// Upload mesh vertex data in GPU and provide VAO/VBO ids
	[CLink]
	public static extern void UploadMesh(Mesh * mesh, bool dynamic);
	
	/// Update mesh vertex data in GPU for a specific buffer index
	[CLink]
	public static extern void UpdateMeshBuffer(Mesh mesh, int32 index, void * data, int32 dataSize, int32 offset);
	
	/// Unload mesh data from CPU and GPU
	[CLink]
	public static extern void UnloadMesh(Mesh mesh);
	
	/// Draw a 3d mesh with material and transform
	[CLink]
	public static extern void DrawMesh(Mesh mesh, Material material, Matrix transform);
	
	/// Draw multiple mesh instances with material and different transforms
	[CLink]
	public static extern void DrawMeshInstanced(Mesh mesh, Material material, Matrix * transforms, int32 instances);
	
	/// Export mesh data to file, returns true on success
	[CLink]
	public static extern bool ExportMesh(Mesh mesh, char8 * fileName);
	
	/// Compute mesh bounding box limits
	[CLink]
	public static extern BoundingBox GetMeshBoundingBox(Mesh mesh);
	
	/// Compute mesh tangents
	[CLink]
	public static extern void GenMeshTangents(Mesh * mesh);
	
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
	
	/// Generate heightmap mesh from image data
	[CLink]
	public static extern Mesh GenMeshHeightmap(Image heightmap, Vector3 size);
	
	/// Generate cubes-based map mesh from image data
	[CLink]
	public static extern Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize);
	
	/// Load materials from model file
	[CLink]
	public static extern Material * LoadMaterials(char8 * fileName, int32 * materialCount);
	
	/// Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
	[CLink]
	public static extern Material LoadMaterialDefault();
	
	/// Check if a material is ready
	[CLink]
	public static extern bool IsMaterialReady(Material material);
	
	/// Unload material from GPU memory (VRAM)
	[CLink]
	public static extern void UnloadMaterial(Material material);
	
	/// Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
	[CLink]
	public static extern void SetMaterialTexture(Material * material, int32 mapType, Texture2D texture);
	
	/// Set material for a mesh
	[CLink]
	public static extern void SetModelMeshMaterial(Model * model, int32 meshId, int32 materialId);
	
	/// Load model animations from file
	[CLink]
	public static extern ModelAnimation * LoadModelAnimations(char8 * fileName, int32 * animCount);
	
	/// Update model animation pose
	[CLink]
	public static extern void UpdateModelAnimation(Model model, ModelAnimation anim, int32 frame);
	
	/// Unload animation data
	[CLink]
	public static extern void UnloadModelAnimation(ModelAnimation anim);
	
	/// Unload animation array data
	[CLink]
	public static extern void UnloadModelAnimations(ModelAnimation * animations, int32 animCount);
	
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
	public static extern Wave LoadWave(char8 * fileName);
	
	/// Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
	[CLink]
	public static extern Wave LoadWaveFromMemory(char8 * fileType, char8 * fileData, int32 dataSize);
	
	/// Checks if wave data is ready
	[CLink]
	public static extern bool IsWaveReady(Wave wave);
	
	/// Load sound from file
	[CLink]
	public static extern Sound LoadSound(char8 * fileName);
	
	/// Load sound from wave data
	[CLink]
	public static extern Sound LoadSoundFromWave(Wave wave);
	
	/// Create a new sound that shares the same sample data as the source sound, does not own the sound data
	[CLink]
	public static extern Sound LoadSoundAlias(Sound source);
	
	/// Checks if a sound is ready
	[CLink]
	public static extern bool IsSoundReady(Sound sound);
	
	/// Update sound buffer with new data
	[CLink]
	public static extern void UpdateSound(Sound sound, void * data, int32 sampleCount);
	
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
	public static extern bool ExportWave(Wave wave, char8 * fileName);
	
	/// Export wave sample data to code (.h), returns true on success
	[CLink]
	public static extern bool ExportWaveAsCode(Wave wave, char8 * fileName);
	
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
	
	/// Crop a wave to defined samples range
	[CLink]
	public static extern void WaveCrop(Wave * wave, int32 initSample, int32 finalSample);
	
	/// Convert wave data to desired format
	[CLink]
	public static extern void WaveFormat(Wave * wave, int32 sampleRate, int32 sampleSize, int32 channels);
	
	/// Load samples data from wave as a 32bit float data array
	[CLink]
	public static extern float * LoadWaveSamples(Wave wave);
	
	/// Unload samples data loaded with LoadWaveSamples()
	[CLink]
	public static extern void UnloadWaveSamples(float * samples);
	
	/// Load music stream from file
	[CLink]
	public static extern Music LoadMusicStream(char8 * fileName);
	
	/// Load music stream from data
	[CLink]
	public static extern Music LoadMusicStreamFromMemory(char8 * fileType, char8 * data, int32 dataSize);
	
	/// Checks if a music stream is ready
	[CLink]
	public static extern bool IsMusicReady(Music music);
	
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
	
	/// Load audio stream (to stream raw audio pcm data)
	[CLink]
	public static extern AudioStream LoadAudioStream(int32 sampleRate, int32 sampleSize, int32 channels);
	
	/// Checks if an audio stream is ready
	[CLink]
	public static extern bool IsAudioStreamReady(AudioStream stream);
	
	/// Unload audio stream and free memory
	[CLink]
	public static extern void UnloadAudioStream(AudioStream stream);
	
	/// Update audio stream buffers with data
	[CLink]
	public static extern void UpdateAudioStream(AudioStream stream, void * data, int32 frameCount);
	
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
	
	/// Default size for new audio streams
	[CLink]
	public static extern void SetAudioStreamBufferSizeDefault(int32 size);
	
	/// Audio thread callback to request new data
	[CLink]
	public static extern void SetAudioStreamCallback(AudioStream stream, AudioCallback callback);
	
	/// Attach audio stream processor to stream, receives the samples as <float>s
	[CLink]
	public static extern void AttachAudioStreamProcessor(AudioStream stream, AudioCallback processor);
	
	/// Detach audio stream processor from stream
	[CLink]
	public static extern void DetachAudioStreamProcessor(AudioStream stream, AudioCallback processor);
	
	/// Attach audio stream processor to the entire audio pipeline, receives the samples as <float>s
	[CLink]
	public static extern void AttachAudioMixedProcessor(AudioCallback processor);
	
	/// Detach audio stream processor from the entire audio pipeline
	[CLink]
	public static extern void DetachAudioMixedProcessor(AudioCallback processor);
	
	
	/// Logging: Redirect trace log messages
	public function void TraceLogCallback(int32 logLevel, char8 * text, void* args);
	
	/// FileIO: Load binary data
	public function char8 * LoadFileDataCallback(char8 * fileName, int32 * dataSize);
	
	/// FileIO: Save binary data
	public function bool SaveFileDataCallback(char8 * fileName, void * data, int32 dataSize);
	
	/// FileIO: Load text data
	public function char8 * LoadFileTextCallback(char8 * fileName);
	
	/// FileIO: Save text data
	public function bool SaveFileTextCallback(char8 * fileName, char8 * text);
	
	public function void AudioCallback(void * bufferData, int32 frames);
	
}
