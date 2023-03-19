using System;
using System.Interop;

namespace Raylib;

static
{
    [CallingConvention(.Cdecl), LinkName("InitWindow")]
    /// Initialize window and OpenGL context
    public static extern void InitWindow(int width, int height, char8 * title);
    
    [CallingConvention(.Cdecl), LinkName("WindowShouldClose")]
    /// Check if KEY_ESCAPE pressed or Close icon pressed
    public static extern bool WindowShouldClose();
    
    [CallingConvention(.Cdecl), LinkName("CloseWindow")]
    /// Close window and unload OpenGL context
    public static extern void CloseWindow();
    
    [CallingConvention(.Cdecl), LinkName("IsWindowReady")]
    /// Check if window has been initialized successfully
    public static extern bool IsWindowReady();
    
    [CallingConvention(.Cdecl), LinkName("IsWindowFullscreen")]
    /// Check if window is currently fullscreen
    public static extern bool IsWindowFullscreen();
    
    [CallingConvention(.Cdecl), LinkName("IsWindowHidden")]
    /// Check if window is currently hidden (only PLATFORM_DESKTOP)
    public static extern bool IsWindowHidden();
    
    [CallingConvention(.Cdecl), LinkName("IsWindowMinimized")]
    /// Check if window is currently minimized (only PLATFORM_DESKTOP)
    public static extern bool IsWindowMinimized();
    
    [CallingConvention(.Cdecl), LinkName("IsWindowMaximized")]
    /// Check if window is currently maximized (only PLATFORM_DESKTOP)
    public static extern bool IsWindowMaximized();
    
    [CallingConvention(.Cdecl), LinkName("IsWindowFocused")]
    /// Check if window is currently focused (only PLATFORM_DESKTOP)
    public static extern bool IsWindowFocused();
    
    [CallingConvention(.Cdecl), LinkName("IsWindowResized")]
    /// Check if window has been resized last frame
    public static extern bool IsWindowResized();
    
    [CallingConvention(.Cdecl), LinkName("IsWindowState")]
    /// Check if one specific window flag is enabled
    public static extern bool IsWindowState(int flag);
    
    [CallingConvention(.Cdecl), LinkName("SetWindowState")]
    /// Set window configuration state using flags (only PLATFORM_DESKTOP)
    public static extern void SetWindowState(int flags);
    
    [CallingConvention(.Cdecl), LinkName("ClearWindowState")]
    /// Clear window configuration state flags
    public static extern void ClearWindowState(int flags);
    
    [CallingConvention(.Cdecl), LinkName("ToggleFullscreen")]
    /// Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)
    public static extern void ToggleFullscreen();
    
    [CallingConvention(.Cdecl), LinkName("MaximizeWindow")]
    /// Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
    public static extern void MaximizeWindow();
    
    [CallingConvention(.Cdecl), LinkName("MinimizeWindow")]
    /// Set window state: minimized, if resizable (only PLATFORM_DESKTOP)
    public static extern void MinimizeWindow();
    
    [CallingConvention(.Cdecl), LinkName("RestoreWindow")]
    /// Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
    public static extern void RestoreWindow();
    
    [CallingConvention(.Cdecl), LinkName("SetWindowIcon")]
    /// Set icon for window (single image, RGBA 32bit, only PLATFORM_DESKTOP)
    public static extern void SetWindowIcon(Image image);
    
    [CallingConvention(.Cdecl), LinkName("SetWindowIcons")]
    /// Set icon for window (multiple images, RGBA 32bit, only PLATFORM_DESKTOP)
    public static extern void SetWindowIcons(Image * images, int count);
    
    [CallingConvention(.Cdecl), LinkName("SetWindowTitle")]
    /// Set title for window (only PLATFORM_DESKTOP)
    public static extern void SetWindowTitle(char8 * title);
    
    [CallingConvention(.Cdecl), LinkName("SetWindowPosition")]
    /// Set window position on screen (only PLATFORM_DESKTOP)
    public static extern void SetWindowPosition(int x, int y);
    
    [CallingConvention(.Cdecl), LinkName("SetWindowMonitor")]
    /// Set monitor for the current window (fullscreen mode)
    public static extern void SetWindowMonitor(int monitor);
    
    [CallingConvention(.Cdecl), LinkName("SetWindowMinSize")]
    /// Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
    public static extern void SetWindowMinSize(int width, int height);
    
    [CallingConvention(.Cdecl), LinkName("SetWindowSize")]
    /// Set window dimensions
    public static extern void SetWindowSize(int width, int height);
    
    [CallingConvention(.Cdecl), LinkName("SetWindowOpacity")]
    /// Set window opacity [0.0f..1.0f] (only PLATFORM_DESKTOP)
    public static extern void SetWindowOpacity(float opacity);
    
    [CallingConvention(.Cdecl), LinkName("GetWindowHandle")]
    /// Get native window handle
    public static extern void * GetWindowHandle();
    
    [CallingConvention(.Cdecl), LinkName("GetScreenWidth")]
    /// Get current screen width
    public static extern int GetScreenWidth();
    
    [CallingConvention(.Cdecl), LinkName("GetScreenHeight")]
    /// Get current screen height
    public static extern int GetScreenHeight();
    
    [CallingConvention(.Cdecl), LinkName("GetRenderWidth")]
    /// Get current render width (it considers HiDPI)
    public static extern int GetRenderWidth();
    
    [CallingConvention(.Cdecl), LinkName("GetRenderHeight")]
    /// Get current render height (it considers HiDPI)
    public static extern int GetRenderHeight();
    
    [CallingConvention(.Cdecl), LinkName("GetMonitorCount")]
    /// Get number of connected monitors
    public static extern int GetMonitorCount();
    
    [CallingConvention(.Cdecl), LinkName("GetCurrentMonitor")]
    /// Get current connected monitor
    public static extern int GetCurrentMonitor();
    
    [CallingConvention(.Cdecl), LinkName("GetMonitorPosition")]
    /// Get specified monitor position
    public static extern Vector2 GetMonitorPosition(int monitor);
    
    [CallingConvention(.Cdecl), LinkName("GetMonitorWidth")]
    /// Get specified monitor width (current video mode used by monitor)
    public static extern int GetMonitorWidth(int monitor);
    
    [CallingConvention(.Cdecl), LinkName("GetMonitorHeight")]
    /// Get specified monitor height (current video mode used by monitor)
    public static extern int GetMonitorHeight(int monitor);
    
    [CallingConvention(.Cdecl), LinkName("GetMonitorPhysicalWidth")]
    /// Get specified monitor physical width in millimetres
    public static extern int GetMonitorPhysicalWidth(int monitor);
    
    [CallingConvention(.Cdecl), LinkName("GetMonitorPhysicalHeight")]
    /// Get specified monitor physical height in millimetres
    public static extern int GetMonitorPhysicalHeight(int monitor);
    
    [CallingConvention(.Cdecl), LinkName("GetMonitorRefreshRate")]
    /// Get specified monitor refresh rate
    public static extern int GetMonitorRefreshRate(int monitor);
    
    [CallingConvention(.Cdecl), LinkName("GetWindowPosition")]
    /// Get window position XY on monitor
    public static extern Vector2 GetWindowPosition();
    
    [CallingConvention(.Cdecl), LinkName("GetWindowScaleDPI")]
    /// Get window scale DPI factor
    public static extern Vector2 GetWindowScaleDPI();
    
    [CallingConvention(.Cdecl), LinkName("GetMonitorName")]
    /// Get the human-readable, UTF-8 encoded name of the primary monitor
    public static extern char8 * GetMonitorName(int monitor);
    
    [CallingConvention(.Cdecl), LinkName("SetClipboardText")]
    /// Set clipboard text content
    public static extern void SetClipboardText(char8 * text);
    
    [CallingConvention(.Cdecl), LinkName("GetClipboardText")]
    /// Get clipboard text content
    public static extern char8 * GetClipboardText();
    
    [CallingConvention(.Cdecl), LinkName("EnableEventWaiting")]
    /// Enable waiting for events on EndDrawing(), no automatic event polling
    public static extern void EnableEventWaiting();
    
    [CallingConvention(.Cdecl), LinkName("DisableEventWaiting")]
    /// Disable waiting for events on EndDrawing(), automatic events polling
    public static extern void DisableEventWaiting();
    
    [CallingConvention(.Cdecl), LinkName("SwapScreenBuffer")]
    /// Swap back buffer with front buffer (screen drawing)
    public static extern void SwapScreenBuffer();
    
    [CallingConvention(.Cdecl), LinkName("PollInputEvents")]
    /// Register all input events
    public static extern void PollInputEvents();
    
    [CallingConvention(.Cdecl), LinkName("WaitTime")]
    /// Wait for some time (halt program execution)
    public static extern void WaitTime(double seconds);
    
    [CallingConvention(.Cdecl), LinkName("ShowCursor")]
    /// Shows cursor
    public static extern void ShowCursor();
    
    [CallingConvention(.Cdecl), LinkName("HideCursor")]
    /// Hides cursor
    public static extern void HideCursor();
    
    [CallingConvention(.Cdecl), LinkName("IsCursorHidden")]
    /// Check if cursor is not visible
    public static extern bool IsCursorHidden();
    
    [CallingConvention(.Cdecl), LinkName("EnableCursor")]
    /// Enables cursor (unlock cursor)
    public static extern void EnableCursor();
    
    [CallingConvention(.Cdecl), LinkName("DisableCursor")]
    /// Disables cursor (lock cursor)
    public static extern void DisableCursor();
    
    [CallingConvention(.Cdecl), LinkName("IsCursorOnScreen")]
    /// Check if cursor is on the screen
    public static extern bool IsCursorOnScreen();
    
    [CallingConvention(.Cdecl), LinkName("ClearBackground")]
    /// Set background color (framebuffer clear color)
    public static extern void ClearBackground(Color color);
    
    [CallingConvention(.Cdecl), LinkName("BeginDrawing")]
    /// Setup canvas (framebuffer) to start drawing
    public static extern void BeginDrawing();
    
    [CallingConvention(.Cdecl), LinkName("EndDrawing")]
    /// End canvas drawing and swap buffers (double buffering)
    public static extern void EndDrawing();
    
    [CallingConvention(.Cdecl), LinkName("BeginMode2D")]
    /// Begin 2D mode with custom camera (2D)
    public static extern void BeginMode2D(Camera2D camera);
    
    [CallingConvention(.Cdecl), LinkName("EndMode2D")]
    /// Ends 2D mode with custom camera
    public static extern void EndMode2D();
    
    [CallingConvention(.Cdecl), LinkName("BeginMode3D")]
    /// Begin 3D mode with custom camera (3D)
    public static extern void BeginMode3D(Camera3D camera);
    
    [CallingConvention(.Cdecl), LinkName("EndMode3D")]
    /// Ends 3D mode and returns to default 2D orthographic mode
    public static extern void EndMode3D();
    
    [CallingConvention(.Cdecl), LinkName("BeginTextureMode")]
    /// Begin drawing to render texture
    public static extern void BeginTextureMode(RenderTexture2D target);
    
    [CallingConvention(.Cdecl), LinkName("EndTextureMode")]
    /// Ends drawing to render texture
    public static extern void EndTextureMode();
    
    [CallingConvention(.Cdecl), LinkName("BeginShaderMode")]
    /// Begin custom shader drawing
    public static extern void BeginShaderMode(Shader shader);
    
    [CallingConvention(.Cdecl), LinkName("EndShaderMode")]
    /// End custom shader drawing (use default shader)
    public static extern void EndShaderMode();
    
    [CallingConvention(.Cdecl), LinkName("BeginBlendMode")]
    /// Begin blending mode (alpha, additive, multiplied, subtract, custom)
    public static extern void BeginBlendMode(int mode);
    
    [CallingConvention(.Cdecl), LinkName("EndBlendMode")]
    /// End blending mode (reset to default: alpha blending)
    public static extern void EndBlendMode();
    
    [CallingConvention(.Cdecl), LinkName("BeginScissorMode")]
    /// Begin scissor mode (define screen area for following drawing)
    public static extern void BeginScissorMode(int x, int y, int width, int height);
    
    [CallingConvention(.Cdecl), LinkName("EndScissorMode")]
    /// End scissor mode
    public static extern void EndScissorMode();
    
    [CallingConvention(.Cdecl), LinkName("BeginVrStereoMode")]
    /// Begin stereo rendering (requires VR simulator)
    public static extern void BeginVrStereoMode(VrStereoConfig config);
    
    [CallingConvention(.Cdecl), LinkName("EndVrStereoMode")]
    /// End stereo rendering (requires VR simulator)
    public static extern void EndVrStereoMode();
    
    [CallingConvention(.Cdecl), LinkName("LoadVrStereoConfig")]
    /// Load VR stereo config for VR simulator device parameters
    public static extern VrStereoConfig LoadVrStereoConfig(VrDeviceInfo device);
    
    [CallingConvention(.Cdecl), LinkName("UnloadVrStereoConfig")]
    /// Unload VR stereo config
    public static extern void UnloadVrStereoConfig(VrStereoConfig config);
    
    [CallingConvention(.Cdecl), LinkName("LoadShader")]
    /// Load shader from files and bind default locations
    public static extern Shader LoadShader(char8 * vsFileName, char8 * fsFileName);
    
    [CallingConvention(.Cdecl), LinkName("LoadShaderFromMemory")]
    /// Load shader from code strings and bind default locations
    public static extern Shader LoadShaderFromMemory(char8 * vsCode, char8 * fsCode);
    
    [CallingConvention(.Cdecl), LinkName("IsShaderReady")]
    /// Check if a shader is ready
    public static extern bool IsShaderReady(Shader shader);
    
    [CallingConvention(.Cdecl), LinkName("GetShaderLocation")]
    /// Get shader uniform location
    public static extern int GetShaderLocation(Shader shader, char8 * uniformName);
    
    [CallingConvention(.Cdecl), LinkName("GetShaderLocationAttrib")]
    /// Get shader attribute location
    public static extern int GetShaderLocationAttrib(Shader shader, char8 * attribName);
    
    [CallingConvention(.Cdecl), LinkName("SetShaderValue")]
    /// Set shader uniform value
    public static extern void SetShaderValue(Shader shader, int locIndex, void * value, int uniformType);
    
    [CallingConvention(.Cdecl), LinkName("SetShaderValueV")]
    /// Set shader uniform value vector
    public static extern void SetShaderValueV(Shader shader, int locIndex, void * value, int uniformType, int count);
    
    [CallingConvention(.Cdecl), LinkName("SetShaderValueMatrix")]
    /// Set shader uniform value (matrix 4x4)
    public static extern void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);
    
    [CallingConvention(.Cdecl), LinkName("SetShaderValueTexture")]
    /// Set shader uniform value for texture (sampler2d)
    public static extern void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture);
    
    [CallingConvention(.Cdecl), LinkName("UnloadShader")]
    /// Unload shader from GPU memory (VRAM)
    public static extern void UnloadShader(Shader shader);
    
    [CallingConvention(.Cdecl), LinkName("GetMouseRay")]
    /// Get a ray trace from mouse position
    public static extern Ray GetMouseRay(Vector2 mousePosition, Camera camera);
    
    [CallingConvention(.Cdecl), LinkName("GetCameraMatrix")]
    /// Get camera transform matrix (view matrix)
    public static extern Matrix GetCameraMatrix(Camera camera);
    
    [CallingConvention(.Cdecl), LinkName("GetCameraMatrix2D")]
    /// Get camera 2d transform matrix
    public static extern Matrix GetCameraMatrix2D(Camera2D camera);
    
    [CallingConvention(.Cdecl), LinkName("GetWorldToScreen")]
    /// Get the screen space position for a 3d world space position
    public static extern Vector2 GetWorldToScreen(Vector3 position, Camera camera);
    
    [CallingConvention(.Cdecl), LinkName("GetScreenToWorld2D")]
    /// Get the world space position for a 2d camera screen space position
    public static extern Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera);
    
    [CallingConvention(.Cdecl), LinkName("GetWorldToScreenEx")]
    /// Get size position for a 3d world space position
    public static extern Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int width, int height);
    
    [CallingConvention(.Cdecl), LinkName("GetWorldToScreen2D")]
    /// Get the screen space position for a 2d camera world space position
    public static extern Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera);
    
    [CallingConvention(.Cdecl), LinkName("SetTargetFPS")]
    /// Set target FPS (maximum)
    public static extern void SetTargetFPS(int fps);
    
    [CallingConvention(.Cdecl), LinkName("GetFPS")]
    /// Get current FPS
    public static extern int GetFPS();
    
    [CallingConvention(.Cdecl), LinkName("GetFrameTime")]
    /// Get time in seconds for last frame drawn (delta time)
    public static extern float GetFrameTime();
    
    [CallingConvention(.Cdecl), LinkName("GetTime")]
    /// Get elapsed time in seconds since InitWindow()
    public static extern double GetTime();
    
    [CallingConvention(.Cdecl), LinkName("GetRandomValue")]
    /// Get a random value between min and max (both included)
    public static extern int GetRandomValue(int min, int max);
    
    [CallingConvention(.Cdecl), LinkName("SetRandomSeed")]
    /// Set the seed for the random number generator
    public static extern void SetRandomSeed(int seed);
    
    [CallingConvention(.Cdecl), LinkName("TakeScreenshot")]
    /// Takes a screenshot of current screen (filename extension defines format)
    public static extern void TakeScreenshot(char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("SetConfigFlags")]
    /// Setup init configuration flags (view FLAGS)
    public static extern void SetConfigFlags(int flags);
    
    [CallingConvention(.Cdecl), LinkName("TraceLog")]
    /// Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
    public static extern void TraceLog(int logLevel, char8 * text);
    
    [CallingConvention(.Cdecl), LinkName("SetTraceLogLevel")]
    /// Set the current threshold (minimum) log level
    public static extern void SetTraceLogLevel(int logLevel);
    
    [CallingConvention(.Cdecl), LinkName("MemAlloc")]
    /// Internal memory allocator
    public static extern void * MemAlloc(int size);
    
    [CallingConvention(.Cdecl), LinkName("MemRealloc")]
    /// Internal memory reallocator
    public static extern void * MemRealloc(void * ptr, int size);
    
    [CallingConvention(.Cdecl), LinkName("MemFree")]
    /// Internal memory free
    public static extern void MemFree(void * ptr);
    
    [CallingConvention(.Cdecl), LinkName("OpenURL")]
    /// Open URL with default system browser (if available)
    public static extern void OpenURL(char8 * url);
    
    [CallingConvention(.Cdecl), LinkName("SetTraceLogCallback")]
    /// Set custom trace log
    public static extern void SetTraceLogCallback(TraceLogCallback callback);
    
    [CallingConvention(.Cdecl), LinkName("SetLoadFileDataCallback")]
    /// Set custom file binary data loader
    public static extern void SetLoadFileDataCallback(LoadFileDataCallback callback);
    
    [CallingConvention(.Cdecl), LinkName("SetSaveFileDataCallback")]
    /// Set custom file binary data saver
    public static extern void SetSaveFileDataCallback(SaveFileDataCallback callback);
    
    [CallingConvention(.Cdecl), LinkName("SetLoadFileTextCallback")]
    /// Set custom file text data loader
    public static extern void SetLoadFileTextCallback(LoadFileTextCallback callback);
    
    [CallingConvention(.Cdecl), LinkName("SetSaveFileTextCallback")]
    /// Set custom file text data saver
    public static extern void SetSaveFileTextCallback(SaveFileTextCallback callback);
    
    [CallingConvention(.Cdecl), LinkName("LoadFileData")]
    /// Load file data as byte array (read)
    public static extern char8 * LoadFileData(char8 * fileName, int * bytesRead);
    
    [CallingConvention(.Cdecl), LinkName("UnloadFileData")]
    /// Unload file data allocated by LoadFileData()
    public static extern void UnloadFileData(char8 * data);
    
    [CallingConvention(.Cdecl), LinkName("SaveFileData")]
    /// Save data to file from byte array (write), returns true on success
    public static extern bool SaveFileData(char8 * fileName, void * data, int bytesToWrite);
    
    [CallingConvention(.Cdecl), LinkName("ExportDataAsCode")]
    /// Export data to code (.h), returns true on success
    public static extern bool ExportDataAsCode(char8 * data, int size, char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("LoadFileText")]
    /// Load text data from file (read), returns a '\0' terminated string
    public static extern char8 * LoadFileText(char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("UnloadFileText")]
    /// Unload file text data allocated by LoadFileText()
    public static extern void UnloadFileText(char8 * text);
    
    [CallingConvention(.Cdecl), LinkName("SaveFileText")]
    /// Save text data to file (write), string must be '\0' terminated, returns true on success
    public static extern bool SaveFileText(char8 * fileName, char8 * text);
    
    [CallingConvention(.Cdecl), LinkName("FileExists")]
    /// Check if file exists
    public static extern bool FileExists(char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("DirectoryExists")]
    /// Check if a directory path exists
    public static extern bool DirectoryExists(char8 * dirPath);
    
    [CallingConvention(.Cdecl), LinkName("IsFileExtension")]
    /// Check file extension (including point: .png, .wav)
    public static extern bool IsFileExtension(char8 * fileName, char8 * ext);
    
    [CallingConvention(.Cdecl), LinkName("GetFileLength")]
    /// Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)
    public static extern int GetFileLength(char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("GetFileExtension")]
    /// Get pointer to extension for a filename string (includes dot: '.png')
    public static extern char8 * GetFileExtension(char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("GetFileName")]
    /// Get pointer to filename for a path string
    public static extern char8 * GetFileName(char8 * filePath);
    
    [CallingConvention(.Cdecl), LinkName("GetFileNameWithoutExt")]
    /// Get filename string without extension (uses static string)
    public static extern char8 * GetFileNameWithoutExt(char8 * filePath);
    
    [CallingConvention(.Cdecl), LinkName("GetDirectoryPath")]
    /// Get full path for a given fileName with path (uses static string)
    public static extern char8 * GetDirectoryPath(char8 * filePath);
    
    [CallingConvention(.Cdecl), LinkName("GetPrevDirectoryPath")]
    /// Get previous directory path for a given path (uses static string)
    public static extern char8 * GetPrevDirectoryPath(char8 * dirPath);
    
    [CallingConvention(.Cdecl), LinkName("GetWorkingDirectory")]
    /// Get current working directory (uses static string)
    public static extern char8 * GetWorkingDirectory();
    
    [CallingConvention(.Cdecl), LinkName("GetApplicationDirectory")]
    /// Get the directory if the running application (uses static string)
    public static extern char8 * GetApplicationDirectory();
    
    [CallingConvention(.Cdecl), LinkName("ChangeDirectory")]
    /// Change working directory, return true on success
    public static extern bool ChangeDirectory(char8 * dir);
    
    [CallingConvention(.Cdecl), LinkName("IsPathFile")]
    /// Check if a given path is a file or a directory
    public static extern bool IsPathFile(char8 * path);
    
    [CallingConvention(.Cdecl), LinkName("LoadDirectoryFiles")]
    /// Load directory filepaths
    public static extern FilePathList LoadDirectoryFiles(char8 * dirPath);
    
    [CallingConvention(.Cdecl), LinkName("LoadDirectoryFilesEx")]
    /// Load directory filepaths with extension filtering and recursive directory scan
    public static extern FilePathList LoadDirectoryFilesEx(char8 * basePath, char8 * filter, bool scanSubdirs);
    
    [CallingConvention(.Cdecl), LinkName("UnloadDirectoryFiles")]
    /// Unload filepaths
    public static extern void UnloadDirectoryFiles(FilePathList files);
    
    [CallingConvention(.Cdecl), LinkName("IsFileDropped")]
    /// Check if a file has been dropped into window
    public static extern bool IsFileDropped();
    
    [CallingConvention(.Cdecl), LinkName("LoadDroppedFiles")]
    /// Load dropped filepaths
    public static extern FilePathList LoadDroppedFiles();
    
    [CallingConvention(.Cdecl), LinkName("UnloadDroppedFiles")]
    /// Unload dropped filepaths
    public static extern void UnloadDroppedFiles(FilePathList files);
    
    [CallingConvention(.Cdecl), LinkName("GetFileModTime")]
    /// Get file modification time (last write time)
    public static extern int32 GetFileModTime(char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("CompressData")]
    /// Compress data (DEFLATE algorithm), memory must be MemFree()
    public static extern char8 * CompressData(char8 * data, int dataSize, int * compDataSize);
    
    [CallingConvention(.Cdecl), LinkName("DecompressData")]
    /// Decompress data (DEFLATE algorithm), memory must be MemFree()
    public static extern char8 * DecompressData(char8 * compData, int compDataSize, int * dataSize);
    
    [CallingConvention(.Cdecl), LinkName("EncodeDataBase64")]
    /// Encode data to Base64 string, memory must be MemFree()
    public static extern char8 * EncodeDataBase64(char8 * data, int dataSize, int * outputSize);
    
    [CallingConvention(.Cdecl), LinkName("DecodeDataBase64")]
    /// Decode Base64 string data, memory must be MemFree()
    public static extern char8 * DecodeDataBase64(char8 * data, int * outputSize);
    
    [CallingConvention(.Cdecl), LinkName("IsKeyPressed")]
    /// Check if a key has been pressed once
    public static extern bool IsKeyPressed(int key);
    
    [CallingConvention(.Cdecl), LinkName("IsKeyDown")]
    /// Check if a key is being pressed
    public static extern bool IsKeyDown(int key);
    
    [CallingConvention(.Cdecl), LinkName("IsKeyReleased")]
    /// Check if a key has been released once
    public static extern bool IsKeyReleased(int key);
    
    [CallingConvention(.Cdecl), LinkName("IsKeyUp")]
    /// Check if a key is NOT being pressed
    public static extern bool IsKeyUp(int key);
    
    [CallingConvention(.Cdecl), LinkName("SetExitKey")]
    /// Set a custom key to exit program (default is ESC)
    public static extern void SetExitKey(int key);
    
    [CallingConvention(.Cdecl), LinkName("GetKeyPressed")]
    /// Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
    public static extern int GetKeyPressed();
    
    [CallingConvention(.Cdecl), LinkName("GetCharPressed")]
    /// Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
    public static extern int GetCharPressed();
    
    [CallingConvention(.Cdecl), LinkName("IsGamepadAvailable")]
    /// Check if a gamepad is available
    public static extern bool IsGamepadAvailable(int gamepad);
    
    [CallingConvention(.Cdecl), LinkName("GetGamepadName")]
    /// Get gamepad internal name id
    public static extern char8 * GetGamepadName(int gamepad);
    
    [CallingConvention(.Cdecl), LinkName("IsGamepadButtonPressed")]
    /// Check if a gamepad button has been pressed once
    public static extern bool IsGamepadButtonPressed(int gamepad, int button);
    
    [CallingConvention(.Cdecl), LinkName("IsGamepadButtonDown")]
    /// Check if a gamepad button is being pressed
    public static extern bool IsGamepadButtonDown(int gamepad, int button);
    
    [CallingConvention(.Cdecl), LinkName("IsGamepadButtonReleased")]
    /// Check if a gamepad button has been released once
    public static extern bool IsGamepadButtonReleased(int gamepad, int button);
    
    [CallingConvention(.Cdecl), LinkName("IsGamepadButtonUp")]
    /// Check if a gamepad button is NOT being pressed
    public static extern bool IsGamepadButtonUp(int gamepad, int button);
    
    [CallingConvention(.Cdecl), LinkName("GetGamepadButtonPressed")]
    /// Get the last gamepad button pressed
    public static extern int GetGamepadButtonPressed();
    
    [CallingConvention(.Cdecl), LinkName("GetGamepadAxisCount")]
    /// Get gamepad axis count for a gamepad
    public static extern int GetGamepadAxisCount(int gamepad);
    
    [CallingConvention(.Cdecl), LinkName("GetGamepadAxisMovement")]
    /// Get axis movement value for a gamepad axis
    public static extern float GetGamepadAxisMovement(int gamepad, int axis);
    
    [CallingConvention(.Cdecl), LinkName("SetGamepadMappings")]
    /// Set internal gamepad mappings (SDL_GameControllerDB)
    public static extern int SetGamepadMappings(char8 * mappings);
    
    [CallingConvention(.Cdecl), LinkName("IsMouseButtonPressed")]
    /// Check if a mouse button has been pressed once
    public static extern bool IsMouseButtonPressed(int button);
    
    [CallingConvention(.Cdecl), LinkName("IsMouseButtonDown")]
    /// Check if a mouse button is being pressed
    public static extern bool IsMouseButtonDown(int button);
    
    [CallingConvention(.Cdecl), LinkName("IsMouseButtonReleased")]
    /// Check if a mouse button has been released once
    public static extern bool IsMouseButtonReleased(int button);
    
    [CallingConvention(.Cdecl), LinkName("IsMouseButtonUp")]
    /// Check if a mouse button is NOT being pressed
    public static extern bool IsMouseButtonUp(int button);
    
    [CallingConvention(.Cdecl), LinkName("GetMouseX")]
    /// Get mouse position X
    public static extern int GetMouseX();
    
    [CallingConvention(.Cdecl), LinkName("GetMouseY")]
    /// Get mouse position Y
    public static extern int GetMouseY();
    
    [CallingConvention(.Cdecl), LinkName("GetMousePosition")]
    /// Get mouse position XY
    public static extern Vector2 GetMousePosition();
    
    [CallingConvention(.Cdecl), LinkName("GetMouseDelta")]
    /// Get mouse delta between frames
    public static extern Vector2 GetMouseDelta();
    
    [CallingConvention(.Cdecl), LinkName("SetMousePosition")]
    /// Set mouse position XY
    public static extern void SetMousePosition(int x, int y);
    
    [CallingConvention(.Cdecl), LinkName("SetMouseOffset")]
    /// Set mouse offset
    public static extern void SetMouseOffset(int offsetX, int offsetY);
    
    [CallingConvention(.Cdecl), LinkName("SetMouseScale")]
    /// Set mouse scaling
    public static extern void SetMouseScale(float scaleX, float scaleY);
    
    [CallingConvention(.Cdecl), LinkName("GetMouseWheelMove")]
    /// Get mouse wheel movement for X or Y, whichever is larger
    public static extern float GetMouseWheelMove();
    
    [CallingConvention(.Cdecl), LinkName("GetMouseWheelMoveV")]
    /// Get mouse wheel movement for both X and Y
    public static extern Vector2 GetMouseWheelMoveV();
    
    [CallingConvention(.Cdecl), LinkName("SetMouseCursor")]
    /// Set mouse cursor
    public static extern void SetMouseCursor(int cursor);
    
    [CallingConvention(.Cdecl), LinkName("GetTouchX")]
    /// Get touch position X for touch point 0 (relative to screen size)
    public static extern int GetTouchX();
    
    [CallingConvention(.Cdecl), LinkName("GetTouchY")]
    /// Get touch position Y for touch point 0 (relative to screen size)
    public static extern int GetTouchY();
    
    [CallingConvention(.Cdecl), LinkName("GetTouchPosition")]
    /// Get touch position XY for a touch point index (relative to screen size)
    public static extern Vector2 GetTouchPosition(int index);
    
    [CallingConvention(.Cdecl), LinkName("GetTouchPointId")]
    /// Get touch point identifier for given index
    public static extern int GetTouchPointId(int index);
    
    [CallingConvention(.Cdecl), LinkName("GetTouchPointCount")]
    /// Get number of touch points
    public static extern int GetTouchPointCount();
    
    [CallingConvention(.Cdecl), LinkName("SetGesturesEnabled")]
    /// Enable a set of gestures using flags
    public static extern void SetGesturesEnabled(int flags);
    
    [CallingConvention(.Cdecl), LinkName("IsGestureDetected")]
    /// Check if a gesture have been detected
    public static extern bool IsGestureDetected(int gesture);
    
    [CallingConvention(.Cdecl), LinkName("GetGestureDetected")]
    /// Get latest detected gesture
    public static extern int GetGestureDetected();
    
    [CallingConvention(.Cdecl), LinkName("GetGestureHoldDuration")]
    /// Get gesture hold time in milliseconds
    public static extern float GetGestureHoldDuration();
    
    [CallingConvention(.Cdecl), LinkName("GetGestureDragVector")]
    /// Get gesture drag vector
    public static extern Vector2 GetGestureDragVector();
    
    [CallingConvention(.Cdecl), LinkName("GetGestureDragAngle")]
    /// Get gesture drag angle
    public static extern float GetGestureDragAngle();
    
    [CallingConvention(.Cdecl), LinkName("GetGesturePinchVector")]
    /// Get gesture pinch delta
    public static extern Vector2 GetGesturePinchVector();
    
    [CallingConvention(.Cdecl), LinkName("GetGesturePinchAngle")]
    /// Get gesture pinch angle
    public static extern float GetGesturePinchAngle();
    
    [CallingConvention(.Cdecl), LinkName("UpdateCamera")]
    /// Update camera position for selected mode
    public static extern void UpdateCamera(Camera * camera, int mode);
    
    [CallingConvention(.Cdecl), LinkName("UpdateCameraPro")]
    /// Update camera movement/rotation
    public static extern void UpdateCameraPro(Camera * camera, Vector3 movement, Vector3 rotation, float zoom);
    
    [CallingConvention(.Cdecl), LinkName("SetShapesTexture")]
    /// Set texture and rectangle to be used on shapes drawing
    public static extern void SetShapesTexture(Texture2D texture, Rectangle source);
    
    [CallingConvention(.Cdecl), LinkName("DrawPixel")]
    /// Draw a pixel
    public static extern void DrawPixel(int posX, int posY, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawPixelV")]
    /// Draw a pixel (Vector version)
    public static extern void DrawPixelV(Vector2 position, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawLine")]
    /// Draw a line
    public static extern void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawLineV")]
    /// Draw a line (Vector version)
    public static extern void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawLineEx")]
    /// Draw a line defining thickness
    public static extern void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawLineBezier")]
    /// Draw a line using cubic-bezier curves in-out
    public static extern void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawLineBezierQuad")]
    /// Draw line using quadratic bezier curves with a control point
    public static extern void DrawLineBezierQuad(Vector2 startPos, Vector2 endPos, Vector2 controlPos, float thick, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawLineBezierCubic")]
    /// Draw line using cubic bezier curves with 2 control points
    public static extern void DrawLineBezierCubic(Vector2 startPos, Vector2 endPos, Vector2 startControlPos, Vector2 endControlPos, float thick, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawLineStrip")]
    /// Draw lines sequence
    public static extern void DrawLineStrip(Vector2 * points, int pointCount, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCircle")]
    /// Draw a color-filled circle
    public static extern void DrawCircle(int centerX, int centerY, float radius, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCircleSector")]
    /// Draw a piece of a circle
    public static extern void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCircleSectorLines")]
    /// Draw circle sector outline
    public static extern void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCircleGradient")]
    /// Draw a gradient-filled circle
    public static extern void DrawCircleGradient(int centerX, int centerY, float radius, Color color1, Color color2);
    
    [CallingConvention(.Cdecl), LinkName("DrawCircleV")]
    /// Draw a color-filled circle (Vector version)
    public static extern void DrawCircleV(Vector2 center, float radius, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCircleLines")]
    /// Draw circle outline
    public static extern void DrawCircleLines(int centerX, int centerY, float radius, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawEllipse")]
    /// Draw ellipse
    public static extern void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawEllipseLines")]
    /// Draw ellipse outline
    public static extern void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawRing")]
    /// Draw ring
    public static extern void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawRingLines")]
    /// Draw ring outline
    public static extern void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawRectangle")]
    /// Draw a color-filled rectangle
    public static extern void DrawRectangle(int posX, int posY, int width, int height, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawRectangleV")]
    /// Draw a color-filled rectangle (Vector version)
    public static extern void DrawRectangleV(Vector2 position, Vector2 size, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawRectangleRec")]
    /// Draw a color-filled rectangle
    public static extern void DrawRectangleRec(Rectangle rec, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawRectanglePro")]
    /// Draw a color-filled rectangle with pro parameters
    public static extern void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawRectangleGradientV")]
    /// Draw a vertical-gradient-filled rectangle
    public static extern void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color color2);
    
    [CallingConvention(.Cdecl), LinkName("DrawRectangleGradientH")]
    /// Draw a horizontal-gradient-filled rectangle
    public static extern void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color color2);
    
    [CallingConvention(.Cdecl), LinkName("DrawRectangleGradientEx")]
    /// Draw a gradient-filled rectangle with custom vertex colors
    public static extern void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);
    
    [CallingConvention(.Cdecl), LinkName("DrawRectangleLines")]
    /// Draw rectangle outline
    public static extern void DrawRectangleLines(int posX, int posY, int width, int height, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawRectangleLinesEx")]
    /// Draw rectangle outline with extended parameters
    public static extern void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawRectangleRounded")]
    /// Draw rectangle with rounded edges
    public static extern void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawRectangleRoundedLines")]
    /// Draw rectangle with rounded edges outline
    public static extern void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, float lineThick, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawTriangle")]
    /// Draw a color-filled triangle (vertex in counter-clockwise order!)
    public static extern void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawTriangleLines")]
    /// Draw triangle outline (vertex in counter-clockwise order!)
    public static extern void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawTriangleFan")]
    /// Draw a triangle fan defined by points (first vertex is the center)
    public static extern void DrawTriangleFan(Vector2 * points, int pointCount, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawTriangleStrip")]
    /// Draw a triangle strip defined by points
    public static extern void DrawTriangleStrip(Vector2 * points, int pointCount, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawPoly")]
    /// Draw a regular polygon (Vector version)
    public static extern void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawPolyLines")]
    /// Draw a polygon outline of n sides
    public static extern void DrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawPolyLinesEx")]
    /// Draw a polygon outline of n sides with extended parameters
    public static extern void DrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float lineThick, Color color);
    
    [CallingConvention(.Cdecl), LinkName("CheckCollisionRecs")]
    /// Check collision between two rectangles
    public static extern bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);
    
    [CallingConvention(.Cdecl), LinkName("CheckCollisionCircles")]
    /// Check collision between two circles
    public static extern bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);
    
    [CallingConvention(.Cdecl), LinkName("CheckCollisionCircleRec")]
    /// Check collision between circle and rectangle
    public static extern bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec);
    
    [CallingConvention(.Cdecl), LinkName("CheckCollisionPointRec")]
    /// Check if point is inside rectangle
    public static extern bool CheckCollisionPointRec(Vector2 point, Rectangle rec);
    
    [CallingConvention(.Cdecl), LinkName("CheckCollisionPointCircle")]
    /// Check if point is inside circle
    public static extern bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);
    
    [CallingConvention(.Cdecl), LinkName("CheckCollisionPointTriangle")]
    /// Check if point is inside a triangle
    public static extern bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);
    
    [CallingConvention(.Cdecl), LinkName("CheckCollisionPointPoly")]
    /// Check if point is within a polygon described by array of vertices
    public static extern bool CheckCollisionPointPoly(Vector2 point, Vector2 * points, int pointCount);
    
    [CallingConvention(.Cdecl), LinkName("CheckCollisionLines")]
    /// Check the collision between two lines defined by two points each, returns collision point by reference
    public static extern bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 * collisionPoint);
    
    [CallingConvention(.Cdecl), LinkName("CheckCollisionPointLine")]
    /// Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
    public static extern bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int threshold);
    
    [CallingConvention(.Cdecl), LinkName("GetCollisionRec")]
    /// Get collision rectangle for two rectangles collision
    public static extern Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);
    
    [CallingConvention(.Cdecl), LinkName("LoadImage")]
    /// Load image from file into CPU memory (RAM)
    public static extern Image LoadImage(char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("LoadImageRaw")]
    /// Load image from RAW file data
    public static extern Image LoadImageRaw(char8 * fileName, int width, int height, int format, int headerSize);
    
    [CallingConvention(.Cdecl), LinkName("LoadImageAnim")]
    /// Load image sequence from file (frames appended to image.data)
    public static extern Image LoadImageAnim(char8 * fileName, int * frames);
    
    [CallingConvention(.Cdecl), LinkName("LoadImageFromMemory")]
    /// Load image from memory buffer, fileType refers to extension: i.e. '.png'
    public static extern Image LoadImageFromMemory(char8 * fileType, char8 * fileData, int dataSize);
    
    [CallingConvention(.Cdecl), LinkName("LoadImageFromTexture")]
    /// Load image from GPU texture data
    public static extern Image LoadImageFromTexture(Texture2D texture);
    
    [CallingConvention(.Cdecl), LinkName("LoadImageFromScreen")]
    /// Load image from screen buffer and (screenshot)
    public static extern Image LoadImageFromScreen();
    
    [CallingConvention(.Cdecl), LinkName("IsImageReady")]
    /// Check if an image is ready
    public static extern bool IsImageReady(Image image);
    
    [CallingConvention(.Cdecl), LinkName("UnloadImage")]
    /// Unload image from CPU memory (RAM)
    public static extern void UnloadImage(Image image);
    
    [CallingConvention(.Cdecl), LinkName("ExportImage")]
    /// Export image data to file, returns true on success
    public static extern bool ExportImage(Image image, char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("ExportImageAsCode")]
    /// Export image as code file defining an array of bytes, returns true on success
    public static extern bool ExportImageAsCode(Image image, char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("GenImageColor")]
    /// Generate image: plain color
    public static extern Image GenImageColor(int width, int height, Color color);
    
    [CallingConvention(.Cdecl), LinkName("GenImageGradientV")]
    /// Generate image: vertical gradient
    public static extern Image GenImageGradientV(int width, int height, Color top, Color bottom);
    
    [CallingConvention(.Cdecl), LinkName("GenImageGradientH")]
    /// Generate image: horizontal gradient
    public static extern Image GenImageGradientH(int width, int height, Color left, Color right);
    
    [CallingConvention(.Cdecl), LinkName("GenImageGradientRadial")]
    /// Generate image: radial gradient
    public static extern Image GenImageGradientRadial(int width, int height, float density, Color inner, Color outer);
    
    [CallingConvention(.Cdecl), LinkName("GenImageChecked")]
    /// Generate image: checked
    public static extern Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2);
    
    [CallingConvention(.Cdecl), LinkName("GenImageWhiteNoise")]
    /// Generate image: white noise
    public static extern Image GenImageWhiteNoise(int width, int height, float factor);
    
    [CallingConvention(.Cdecl), LinkName("GenImagePerlinNoise")]
    /// Generate image: perlin noise
    public static extern Image GenImagePerlinNoise(int width, int height, int offsetX, int offsetY, float scale);
    
    [CallingConvention(.Cdecl), LinkName("GenImageCellular")]
    /// Generate image: cellular algorithm, bigger tileSize means bigger cells
    public static extern Image GenImageCellular(int width, int height, int tileSize);
    
    [CallingConvention(.Cdecl), LinkName("GenImageText")]
    /// Generate image: grayscale image from text data
    public static extern Image GenImageText(int width, int height, char8 * text);
    
    [CallingConvention(.Cdecl), LinkName("ImageCopy")]
    /// Create an image duplicate (useful for transformations)
    public static extern Image ImageCopy(Image image);
    
    [CallingConvention(.Cdecl), LinkName("ImageFromImage")]
    /// Create an image from another image piece
    public static extern Image ImageFromImage(Image image, Rectangle rec);
    
    [CallingConvention(.Cdecl), LinkName("ImageText")]
    /// Create an image from text (default font)
    public static extern Image ImageText(char8 * text, int fontSize, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageTextEx")]
    /// Create an image from text (custom sprite font)
    public static extern Image ImageTextEx(Font font, char8 * text, float fontSize, float spacing, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("ImageFormat")]
    /// Convert image data to desired format
    public static extern void ImageFormat(Image * image, int newFormat);
    
    [CallingConvention(.Cdecl), LinkName("ImageToPOT")]
    /// Convert image to POT (power-of-two)
    public static extern void ImageToPOT(Image * image, Color fill);
    
    [CallingConvention(.Cdecl), LinkName("ImageCrop")]
    /// Crop an image to a defined rectangle
    public static extern void ImageCrop(Image * image, Rectangle crop);
    
    [CallingConvention(.Cdecl), LinkName("ImageAlphaCrop")]
    /// Crop image depending on alpha value
    public static extern void ImageAlphaCrop(Image * image, float threshold);
    
    [CallingConvention(.Cdecl), LinkName("ImageAlphaClear")]
    /// Clear alpha channel to desired color
    public static extern void ImageAlphaClear(Image * image, Color color, float threshold);
    
    [CallingConvention(.Cdecl), LinkName("ImageAlphaMask")]
    /// Apply alpha mask to image
    public static extern void ImageAlphaMask(Image * image, Image alphaMask);
    
    [CallingConvention(.Cdecl), LinkName("ImageAlphaPremultiply")]
    /// Premultiply alpha channel
    public static extern void ImageAlphaPremultiply(Image * image);
    
    [CallingConvention(.Cdecl), LinkName("ImageBlurGaussian")]
    /// Apply Gaussian blur using a box blur approximation
    public static extern void ImageBlurGaussian(Image * image, int blurSize);
    
    [CallingConvention(.Cdecl), LinkName("ImageResize")]
    /// Resize image (Bicubic scaling algorithm)
    public static extern void ImageResize(Image * image, int newWidth, int newHeight);
    
    [CallingConvention(.Cdecl), LinkName("ImageResizeNN")]
    /// Resize image (Nearest-Neighbor scaling algorithm)
    public static extern void ImageResizeNN(Image * image, int newWidth, int newHeight);
    
    [CallingConvention(.Cdecl), LinkName("ImageResizeCanvas")]
    /// Resize canvas and fill with color
    public static extern void ImageResizeCanvas(Image * image, int newWidth, int newHeight, int offsetX, int offsetY, Color fill);
    
    [CallingConvention(.Cdecl), LinkName("ImageMipmaps")]
    /// Compute all mipmap levels for a provided image
    public static extern void ImageMipmaps(Image * image);
    
    [CallingConvention(.Cdecl), LinkName("ImageDither")]
    /// Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
    public static extern void ImageDither(Image * image, int rBpp, int gBpp, int bBpp, int aBpp);
    
    [CallingConvention(.Cdecl), LinkName("ImageFlipVertical")]
    /// Flip image vertically
    public static extern void ImageFlipVertical(Image * image);
    
    [CallingConvention(.Cdecl), LinkName("ImageFlipHorizontal")]
    /// Flip image horizontally
    public static extern void ImageFlipHorizontal(Image * image);
    
    [CallingConvention(.Cdecl), LinkName("ImageRotateCW")]
    /// Rotate image clockwise 90deg
    public static extern void ImageRotateCW(Image * image);
    
    [CallingConvention(.Cdecl), LinkName("ImageRotateCCW")]
    /// Rotate image counter-clockwise 90deg
    public static extern void ImageRotateCCW(Image * image);
    
    [CallingConvention(.Cdecl), LinkName("ImageColorTint")]
    /// Modify image color: tint
    public static extern void ImageColorTint(Image * image, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageColorInvert")]
    /// Modify image color: invert
    public static extern void ImageColorInvert(Image * image);
    
    [CallingConvention(.Cdecl), LinkName("ImageColorGrayscale")]
    /// Modify image color: grayscale
    public static extern void ImageColorGrayscale(Image * image);
    
    [CallingConvention(.Cdecl), LinkName("ImageColorContrast")]
    /// Modify image color: contrast (-100 to 100)
    public static extern void ImageColorContrast(Image * image, float contrast);
    
    [CallingConvention(.Cdecl), LinkName("ImageColorBrightness")]
    /// Modify image color: brightness (-255 to 255)
    public static extern void ImageColorBrightness(Image * image, int brightness);
    
    [CallingConvention(.Cdecl), LinkName("ImageColorReplace")]
    /// Modify image color: replace color
    public static extern void ImageColorReplace(Image * image, Color color, Color replace);
    
    [CallingConvention(.Cdecl), LinkName("LoadImageColors")]
    /// Load color data from image as a Color array (RGBA - 32bit)
    public static extern Color * LoadImageColors(Image image);
    
    [CallingConvention(.Cdecl), LinkName("LoadImagePalette")]
    /// Load colors palette from image as a Color array (RGBA - 32bit)
    public static extern Color * LoadImagePalette(Image image, int maxPaletteSize, int * colorCount);
    
    [CallingConvention(.Cdecl), LinkName("UnloadImageColors")]
    /// Unload color data loaded with LoadImageColors()
    public static extern void UnloadImageColors(Color * colors);
    
    [CallingConvention(.Cdecl), LinkName("UnloadImagePalette")]
    /// Unload colors palette loaded with LoadImagePalette()
    public static extern void UnloadImagePalette(Color * colors);
    
    [CallingConvention(.Cdecl), LinkName("GetImageAlphaBorder")]
    /// Get image alpha border rectangle
    public static extern Rectangle GetImageAlphaBorder(Image image, float threshold);
    
    [CallingConvention(.Cdecl), LinkName("GetImageColor")]
    /// Get image pixel color at (x, y) position
    public static extern Color GetImageColor(Image image, int x, int y);
    
    [CallingConvention(.Cdecl), LinkName("ImageClearBackground")]
    /// Clear image background with given color
    public static extern void ImageClearBackground(Image * dst, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageDrawPixel")]
    /// Draw pixel within an image
    public static extern void ImageDrawPixel(Image * dst, int posX, int posY, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageDrawPixelV")]
    /// Draw pixel within an image (Vector version)
    public static extern void ImageDrawPixelV(Image * dst, Vector2 position, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageDrawLine")]
    /// Draw line within an image
    public static extern void ImageDrawLine(Image * dst, int startPosX, int startPosY, int endPosX, int endPosY, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageDrawLineV")]
    /// Draw line within an image (Vector version)
    public static extern void ImageDrawLineV(Image * dst, Vector2 start, Vector2 end, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageDrawCircle")]
    /// Draw a filled circle within an image
    public static extern void ImageDrawCircle(Image * dst, int centerX, int centerY, int radius, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageDrawCircleV")]
    /// Draw a filled circle within an image (Vector version)
    public static extern void ImageDrawCircleV(Image * dst, Vector2 center, int radius, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageDrawCircleLines")]
    /// Draw circle outline within an image
    public static extern void ImageDrawCircleLines(Image * dst, int centerX, int centerY, int radius, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageDrawCircleLinesV")]
    /// Draw circle outline within an image (Vector version)
    public static extern void ImageDrawCircleLinesV(Image * dst, Vector2 center, int radius, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageDrawRectangle")]
    /// Draw rectangle within an image
    public static extern void ImageDrawRectangle(Image * dst, int posX, int posY, int width, int height, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageDrawRectangleV")]
    /// Draw rectangle within an image (Vector version)
    public static extern void ImageDrawRectangleV(Image * dst, Vector2 position, Vector2 size, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageDrawRectangleRec")]
    /// Draw rectangle within an image
    public static extern void ImageDrawRectangleRec(Image * dst, Rectangle rec, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageDrawRectangleLines")]
    /// Draw rectangle lines within an image
    public static extern void ImageDrawRectangleLines(Image * dst, Rectangle rec, int thick, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageDraw")]
    /// Draw a source image within a destination image (tint applied to source)
    public static extern void ImageDraw(Image * dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("ImageDrawText")]
    /// Draw text (using default font) within an image (destination)
    public static extern void ImageDrawText(Image * dst, char8 * text, int posX, int posY, int fontSize, Color color);
    
    [CallingConvention(.Cdecl), LinkName("ImageDrawTextEx")]
    /// Draw text (custom sprite font) within an image (destination)
    public static extern void ImageDrawTextEx(Image * dst, Font font, char8 * text, Vector2 position, float fontSize, float spacing, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("LoadTexture")]
    /// Load texture from file into GPU memory (VRAM)
    public static extern Texture2D LoadTexture(char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("LoadTextureFromImage")]
    /// Load texture from image data
    public static extern Texture2D LoadTextureFromImage(Image image);
    
    [CallingConvention(.Cdecl), LinkName("LoadTextureCubemap")]
    /// Load cubemap from image, multiple image cubemap layouts supported
    public static extern TextureCubemap LoadTextureCubemap(Image image, int layout);
    
    [CallingConvention(.Cdecl), LinkName("LoadRenderTexture")]
    /// Load texture for rendering (framebuffer)
    public static extern RenderTexture2D LoadRenderTexture(int width, int height);
    
    [CallingConvention(.Cdecl), LinkName("IsTextureReady")]
    /// Check if a texture is ready
    public static extern bool IsTextureReady(Texture2D texture);
    
    [CallingConvention(.Cdecl), LinkName("UnloadTexture")]
    /// Unload texture from GPU memory (VRAM)
    public static extern void UnloadTexture(Texture2D texture);
    
    [CallingConvention(.Cdecl), LinkName("IsRenderTextureReady")]
    /// Check if a render texture is ready
    public static extern bool IsRenderTextureReady(RenderTexture2D target);
    
    [CallingConvention(.Cdecl), LinkName("UnloadRenderTexture")]
    /// Unload render texture from GPU memory (VRAM)
    public static extern void UnloadRenderTexture(RenderTexture2D target);
    
    [CallingConvention(.Cdecl), LinkName("UpdateTexture")]
    /// Update GPU texture with new data
    public static extern void UpdateTexture(Texture2D texture, void * pixels);
    
    [CallingConvention(.Cdecl), LinkName("UpdateTextureRec")]
    /// Update GPU texture rectangle with new data
    public static extern void UpdateTextureRec(Texture2D texture, Rectangle rec, void * pixels);
    
    [CallingConvention(.Cdecl), LinkName("GenTextureMipmaps")]
    /// Generate GPU mipmaps for a texture
    public static extern void GenTextureMipmaps(Texture2D * texture);
    
    [CallingConvention(.Cdecl), LinkName("SetTextureFilter")]
    /// Set texture scaling filter mode
    public static extern void SetTextureFilter(Texture2D texture, int filter);
    
    [CallingConvention(.Cdecl), LinkName("SetTextureWrap")]
    /// Set texture wrapping mode
    public static extern void SetTextureWrap(Texture2D texture, int wrap);
    
    [CallingConvention(.Cdecl), LinkName("DrawTexture")]
    /// Draw a Texture2D
    public static extern void DrawTexture(Texture2D texture, int posX, int posY, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("DrawTextureV")]
    /// Draw a Texture2D with position defined as Vector2
    public static extern void DrawTextureV(Texture2D texture, Vector2 position, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("DrawTextureEx")]
    /// Draw a Texture2D with extended parameters
    public static extern void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("DrawTextureRec")]
    /// Draw a part of a texture defined by a rectangle
    public static extern void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("DrawTexturePro")]
    /// Draw a part of a texture defined by a rectangle with 'pro' parameters
    public static extern void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("DrawTextureNPatch")]
    /// Draws a texture (or part of it) that stretches or shrinks nicely
    public static extern void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("Fade")]
    /// Get color with alpha applied, alpha goes from 0.0f to 1.0f
    public static extern Color Fade(Color color, float alpha);
    
    [CallingConvention(.Cdecl), LinkName("ColorToInt")]
    /// Get hexadecimal value for a Color
    public static extern int ColorToInt(Color color);
    
    [CallingConvention(.Cdecl), LinkName("ColorNormalize")]
    /// Get Color normalized as float [0..1]
    public static extern Vector4 ColorNormalize(Color color);
    
    [CallingConvention(.Cdecl), LinkName("ColorFromNormalized")]
    /// Get Color from normalized values [0..1]
    public static extern Color ColorFromNormalized(Vector4 normalized);
    
    [CallingConvention(.Cdecl), LinkName("ColorToHSV")]
    /// Get HSV values for a Color, hue [0..360], saturation/value [0..1]
    public static extern Vector3 ColorToHSV(Color color);
    
    [CallingConvention(.Cdecl), LinkName("ColorFromHSV")]
    /// Get a Color from HSV values, hue [0..360], saturation/value [0..1]
    public static extern Color ColorFromHSV(float hue, float saturation, float value);
    
    [CallingConvention(.Cdecl), LinkName("ColorTint")]
    /// Get color multiplied with another color
    public static extern Color ColorTint(Color color, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("ColorBrightness")]
    /// Get color with brightness correction, brightness factor goes from -1.0f to 1.0f
    public static extern Color ColorBrightness(Color color, float factor);
    
    [CallingConvention(.Cdecl), LinkName("ColorContrast")]
    /// Get color with contrast correction, contrast values between -1.0f and 1.0f
    public static extern Color ColorContrast(Color color, float contrast);
    
    [CallingConvention(.Cdecl), LinkName("ColorAlpha")]
    /// Get color with alpha applied, alpha goes from 0.0f to 1.0f
    public static extern Color ColorAlpha(Color color, float alpha);
    
    [CallingConvention(.Cdecl), LinkName("ColorAlphaBlend")]
    /// Get src alpha-blended into dst color with tint
    public static extern Color ColorAlphaBlend(Color dst, Color src, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("GetColor")]
    /// Get Color structure from hexadecimal value
    public static extern Color GetColor(int hexValue);
    
    [CallingConvention(.Cdecl), LinkName("GetPixelColor")]
    /// Get Color from a source pixel pointer of certain format
    public static extern Color GetPixelColor(void * srcPtr, int format);
    
    [CallingConvention(.Cdecl), LinkName("SetPixelColor")]
    /// Set color formatted into destination pixel pointer
    public static extern void SetPixelColor(void * dstPtr, Color color, int format);
    
    [CallingConvention(.Cdecl), LinkName("GetPixelDataSize")]
    /// Get pixel data size in bytes for certain format
    public static extern int GetPixelDataSize(int width, int height, int format);
    
    [CallingConvention(.Cdecl), LinkName("GetFontDefault")]
    /// Get the default Font
    public static extern Font GetFontDefault();
    
    [CallingConvention(.Cdecl), LinkName("LoadFont")]
    /// Load font from file into GPU memory (VRAM)
    public static extern Font LoadFont(char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("LoadFontEx")]
    /// Load font from file with extended parameters, use NULL for fontChars and 0 for glyphCount to load the default character set
    public static extern Font LoadFontEx(char8 * fileName, int fontSize, int * fontChars, int glyphCount);
    
    [CallingConvention(.Cdecl), LinkName("LoadFontFromImage")]
    /// Load font from Image (XNA style)
    public static extern Font LoadFontFromImage(Image image, Color key, int firstChar);
    
    [CallingConvention(.Cdecl), LinkName("LoadFontFromMemory")]
    /// Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
    public static extern Font LoadFontFromMemory(char8 * fileType, char8 * fileData, int dataSize, int fontSize, int * fontChars, int glyphCount);
    
    [CallingConvention(.Cdecl), LinkName("IsFontReady")]
    /// Check if a font is ready
    public static extern bool IsFontReady(Font font);
    
    [CallingConvention(.Cdecl), LinkName("LoadFontData")]
    /// Load font data for further use
    public static extern GlyphInfo * LoadFontData(char8 * fileData, int dataSize, int fontSize, int * fontChars, int glyphCount, int type);
    
    [CallingConvention(.Cdecl), LinkName("GenImageFontAtlas")]
    /// Generate image font atlas using chars info
    public static extern Image GenImageFontAtlas(GlyphInfo * chars, Rectangle ** recs, int glyphCount, int fontSize, int padding, int packMethod);
    
    [CallingConvention(.Cdecl), LinkName("UnloadFontData")]
    /// Unload font chars info data (RAM)
    public static extern void UnloadFontData(GlyphInfo * chars, int glyphCount);
    
    [CallingConvention(.Cdecl), LinkName("UnloadFont")]
    /// Unload font from GPU memory (VRAM)
    public static extern void UnloadFont(Font font);
    
    [CallingConvention(.Cdecl), LinkName("ExportFontAsCode")]
    /// Export font as code file, returns true on success
    public static extern bool ExportFontAsCode(Font font, char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("DrawFPS")]
    /// Draw current FPS
    public static extern void DrawFPS(int posX, int posY);
    
    [CallingConvention(.Cdecl), LinkName("DrawText")]
    /// Draw text (using default font)
    public static extern void DrawText(char8 * text, int posX, int posY, int fontSize, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawTextEx")]
    /// Draw text using font and additional parameters
    public static extern void DrawTextEx(Font font, char8 * text, Vector2 position, float fontSize, float spacing, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("DrawTextPro")]
    /// Draw text using Font and pro parameters (rotation)
    public static extern void DrawTextPro(Font font, char8 * text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("DrawTextCodepoint")]
    /// Draw one character (codepoint)
    public static extern void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("DrawTextCodepoints")]
    /// Draw multiple character (codepoint)
    public static extern void DrawTextCodepoints(Font font, int * codepoints, int count, Vector2 position, float fontSize, float spacing, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("MeasureText")]
    /// Measure string width for default font
    public static extern int MeasureText(char8 * text, int fontSize);
    
    [CallingConvention(.Cdecl), LinkName("MeasureTextEx")]
    /// Measure string size for Font
    public static extern Vector2 MeasureTextEx(Font font, char8 * text, float fontSize, float spacing);
    
    [CallingConvention(.Cdecl), LinkName("GetGlyphIndex")]
    /// Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
    public static extern int GetGlyphIndex(Font font, int codepoint);
    
    [CallingConvention(.Cdecl), LinkName("GetGlyphInfo")]
    /// Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
    public static extern GlyphInfo GetGlyphInfo(Font font, int codepoint);
    
    [CallingConvention(.Cdecl), LinkName("GetGlyphAtlasRec")]
    /// Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
    public static extern Rectangle GetGlyphAtlasRec(Font font, int codepoint);
    
    [CallingConvention(.Cdecl), LinkName("LoadUTF8")]
    /// Load UTF-8 text encoded from codepoints array
    public static extern char8 * LoadUTF8(int * codepoints, int length);
    
    [CallingConvention(.Cdecl), LinkName("UnloadUTF8")]
    /// Unload UTF-8 text encoded from codepoints array
    public static extern void UnloadUTF8(char8 * text);
    
    [CallingConvention(.Cdecl), LinkName("LoadCodepoints")]
    /// Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
    public static extern int * LoadCodepoints(char8 * text, int * count);
    
    [CallingConvention(.Cdecl), LinkName("UnloadCodepoints")]
    /// Unload codepoints data from memory
    public static extern void UnloadCodepoints(int * codepoints);
    
    [CallingConvention(.Cdecl), LinkName("GetCodepointCount")]
    /// Get total number of codepoints in a UTF-8 encoded string
    public static extern int GetCodepointCount(char8 * text);
    
    [CallingConvention(.Cdecl), LinkName("GetCodepoint")]
    /// Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
    public static extern int GetCodepoint(char8 * text, int * codepointSize);
    
    [CallingConvention(.Cdecl), LinkName("GetCodepointNext")]
    /// Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
    public static extern int GetCodepointNext(char8 * text, int * codepointSize);
    
    [CallingConvention(.Cdecl), LinkName("GetCodepointPrevious")]
    /// Get previous codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
    public static extern int GetCodepointPrevious(char8 * text, int * codepointSize);
    
    [CallingConvention(.Cdecl), LinkName("CodepointToUTF8")]
    /// Encode one codepoint into UTF-8 byte array (array length returned as parameter)
    public static extern char8 * CodepointToUTF8(int codepoint, int * utf8Size);
    
    [CallingConvention(.Cdecl), LinkName("TextCopy")]
    /// Copy one string to another, returns bytes copied
    public static extern int TextCopy(char8 * dst, char8 * src);
    
    [CallingConvention(.Cdecl), LinkName("TextIsEqual")]
    /// Check if two text string are equal
    public static extern bool TextIsEqual(char8 * text1, char8 * text2);
    
    [CallingConvention(.Cdecl), LinkName("TextLength")]
    /// Get text length, checks for '\0' ending
    public static extern int TextLength(char8 * text);
    
    [CallingConvention(.Cdecl), LinkName("TextFormat")]
    /// Text formatting with variables (sprintf() style)
    public static extern char8 * TextFormat(char8 * text);
    
    [CallingConvention(.Cdecl), LinkName("TextSubtext")]
    /// Get a piece of a text string
    public static extern char8 * TextSubtext(char8 * text, int position, int length);
    
    [CallingConvention(.Cdecl), LinkName("TextReplace")]
    /// Replace text string (WARNING: memory must be freed!)
    public static extern char8 * TextReplace(char8 * text, char8 * replace, char8 * by);
    
    [CallingConvention(.Cdecl), LinkName("TextInsert")]
    /// Insert text in a position (WARNING: memory must be freed!)
    public static extern char8 * TextInsert(char8 * text, char8 * insert, int position);
    
    [CallingConvention(.Cdecl), LinkName("TextJoin")]
    /// Join text strings with delimiter
    public static extern char8 * TextJoin(char8 ** textList, int count, char8 * delimiter);
    
    [CallingConvention(.Cdecl), LinkName("TextSplit")]
    /// Split text into multiple strings
    public static extern char8 ** TextSplit(char8 * text, char8 delimiter, int * count);
    
    [CallingConvention(.Cdecl), LinkName("TextAppend")]
    /// Append text at specific position and move cursor!
    public static extern void TextAppend(char8 * text, char8 * @append, int * position);
    
    [CallingConvention(.Cdecl), LinkName("TextFindIndex")]
    /// Find first text occurrence within a string
    public static extern int TextFindIndex(char8 * text, char8 * find);
    
    [CallingConvention(.Cdecl), LinkName("TextToUpper")]
    /// Get upper case version of provided string
    public static extern char8 * TextToUpper(char8 * text);
    
    [CallingConvention(.Cdecl), LinkName("TextToLower")]
    /// Get lower case version of provided string
    public static extern char8 * TextToLower(char8 * text);
    
    [CallingConvention(.Cdecl), LinkName("TextToPascal")]
    /// Get Pascal case notation version of provided string
    public static extern char8 * TextToPascal(char8 * text);
    
    [CallingConvention(.Cdecl), LinkName("TextToInteger")]
    /// Get integer value from text (negative values not supported)
    public static extern int TextToInteger(char8 * text);
    
    [CallingConvention(.Cdecl), LinkName("DrawLine3D")]
    /// Draw a line in 3D world space
    public static extern void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawPoint3D")]
    /// Draw a point in 3D space, actually a small line
    public static extern void DrawPoint3D(Vector3 position, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCircle3D")]
    /// Draw a circle in 3D world space
    public static extern void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawTriangle3D")]
    /// Draw a color-filled triangle (vertex in counter-clockwise order!)
    public static extern void DrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawTriangleStrip3D")]
    /// Draw a triangle strip defined by points
    public static extern void DrawTriangleStrip3D(Vector3 * points, int pointCount, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCube")]
    /// Draw cube
    public static extern void DrawCube(Vector3 position, float width, float height, float length, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCubeV")]
    /// Draw cube (Vector version)
    public static extern void DrawCubeV(Vector3 position, Vector3 size, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCubeWires")]
    /// Draw cube wires
    public static extern void DrawCubeWires(Vector3 position, float width, float height, float length, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCubeWiresV")]
    /// Draw cube wires (Vector version)
    public static extern void DrawCubeWiresV(Vector3 position, Vector3 size, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawSphere")]
    /// Draw sphere
    public static extern void DrawSphere(Vector3 centerPos, float radius, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawSphereEx")]
    /// Draw sphere with extended parameters
    public static extern void DrawSphereEx(Vector3 centerPos, float radius, int rings, int slices, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawSphereWires")]
    /// Draw sphere wires
    public static extern void DrawSphereWires(Vector3 centerPos, float radius, int rings, int slices, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCylinder")]
    /// Draw a cylinder/cone
    public static extern void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCylinderEx")]
    /// Draw a cylinder with base at startPos and top at endPos
    public static extern void DrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCylinderWires")]
    /// Draw a cylinder/cone wires
    public static extern void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCylinderWiresEx")]
    /// Draw a cylinder wires with base at startPos and top at endPos
    public static extern void DrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCapsule")]
    /// Draw a capsule with the center of its sphere caps at startPos and endPos
    public static extern void DrawCapsule(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawCapsuleWires")]
    /// Draw capsule wireframe with the center of its sphere caps at startPos and endPos
    public static extern void DrawCapsuleWires(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawPlane")]
    /// Draw a plane XZ
    public static extern void DrawPlane(Vector3 centerPos, Vector2 size, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawRay")]
    /// Draw a ray line
    public static extern void DrawRay(Ray ray, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawGrid")]
    /// Draw a grid (centered at (0, 0, 0))
    public static extern void DrawGrid(int slices, float spacing);
    
    [CallingConvention(.Cdecl), LinkName("LoadModel")]
    /// Load model from files (meshes and materials)
    public static extern Model LoadModel(char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("LoadModelFromMesh")]
    /// Load model from generated mesh (default material)
    public static extern Model LoadModelFromMesh(Mesh mesh);
    
    [CallingConvention(.Cdecl), LinkName("IsModelReady")]
    /// Check if a model is ready
    public static extern bool IsModelReady(Model model);
    
    [CallingConvention(.Cdecl), LinkName("UnloadModel")]
    /// Unload model (including meshes) from memory (RAM and/or VRAM)
    public static extern void UnloadModel(Model model);
    
    [CallingConvention(.Cdecl), LinkName("GetModelBoundingBox")]
    /// Compute model bounding box limits (considers all meshes)
    public static extern BoundingBox GetModelBoundingBox(Model model);
    
    [CallingConvention(.Cdecl), LinkName("DrawModel")]
    /// Draw a model (with texture if set)
    public static extern void DrawModel(Model model, Vector3 position, float scale, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("DrawModelEx")]
    /// Draw a model with extended parameters
    public static extern void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("DrawModelWires")]
    /// Draw a model wires (with texture if set)
    public static extern void DrawModelWires(Model model, Vector3 position, float scale, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("DrawModelWiresEx")]
    /// Draw a model wires (with texture if set) with extended parameters
    public static extern void DrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("DrawBoundingBox")]
    /// Draw bounding box (wires)
    public static extern void DrawBoundingBox(BoundingBox @box, Color color);
    
    [CallingConvention(.Cdecl), LinkName("DrawBillboard")]
    /// Draw a billboard texture
    public static extern void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float size, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("DrawBillboardRec")]
    /// Draw a billboard texture defined by source
    public static extern void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("DrawBillboardPro")]
    /// Draw a billboard texture defined by source and rotation
    public static extern void DrawBillboardPro(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint);
    
    [CallingConvention(.Cdecl), LinkName("UploadMesh")]
    /// Upload mesh vertex data in GPU and provide VAO/VBO ids
    public static extern void UploadMesh(Mesh * mesh, bool dynamic);
    
    [CallingConvention(.Cdecl), LinkName("UpdateMeshBuffer")]
    /// Update mesh vertex data in GPU for a specific buffer index
    public static extern void UpdateMeshBuffer(Mesh mesh, int index, void * data, int dataSize, int offset);
    
    [CallingConvention(.Cdecl), LinkName("UnloadMesh")]
    /// Unload mesh data from CPU and GPU
    public static extern void UnloadMesh(Mesh mesh);
    
    [CallingConvention(.Cdecl), LinkName("DrawMesh")]
    /// Draw a 3d mesh with material and transform
    public static extern void DrawMesh(Mesh mesh, Material material, Matrix transform);
    
    [CallingConvention(.Cdecl), LinkName("DrawMeshInstanced")]
    /// Draw multiple mesh instances with material and different transforms
    public static extern void DrawMeshInstanced(Mesh mesh, Material material, Matrix * transforms, int instances);
    
    [CallingConvention(.Cdecl), LinkName("ExportMesh")]
    /// Export mesh data to file, returns true on success
    public static extern bool ExportMesh(Mesh mesh, char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("GetMeshBoundingBox")]
    /// Compute mesh bounding box limits
    public static extern BoundingBox GetMeshBoundingBox(Mesh mesh);
    
    [CallingConvention(.Cdecl), LinkName("GenMeshTangents")]
    /// Compute mesh tangents
    public static extern void GenMeshTangents(Mesh * mesh);
    
    [CallingConvention(.Cdecl), LinkName("GenMeshPoly")]
    /// Generate polygonal mesh
    public static extern Mesh GenMeshPoly(int sides, float radius);
    
    [CallingConvention(.Cdecl), LinkName("GenMeshPlane")]
    /// Generate plane mesh (with subdivisions)
    public static extern Mesh GenMeshPlane(float width, float length, int resX, int resZ);
    
    [CallingConvention(.Cdecl), LinkName("GenMeshCube")]
    /// Generate cuboid mesh
    public static extern Mesh GenMeshCube(float width, float height, float length);
    
    [CallingConvention(.Cdecl), LinkName("GenMeshSphere")]
    /// Generate sphere mesh (standard sphere)
    public static extern Mesh GenMeshSphere(float radius, int rings, int slices);
    
    [CallingConvention(.Cdecl), LinkName("GenMeshHemiSphere")]
    /// Generate half-sphere mesh (no bottom cap)
    public static extern Mesh GenMeshHemiSphere(float radius, int rings, int slices);
    
    [CallingConvention(.Cdecl), LinkName("GenMeshCylinder")]
    /// Generate cylinder mesh
    public static extern Mesh GenMeshCylinder(float radius, float height, int slices);
    
    [CallingConvention(.Cdecl), LinkName("GenMeshCone")]
    /// Generate cone/pyramid mesh
    public static extern Mesh GenMeshCone(float radius, float height, int slices);
    
    [CallingConvention(.Cdecl), LinkName("GenMeshTorus")]
    /// Generate torus mesh
    public static extern Mesh GenMeshTorus(float radius, float size, int radSeg, int sides);
    
    [CallingConvention(.Cdecl), LinkName("GenMeshKnot")]
    /// Generate trefoil knot mesh
    public static extern Mesh GenMeshKnot(float radius, float size, int radSeg, int sides);
    
    [CallingConvention(.Cdecl), LinkName("GenMeshHeightmap")]
    /// Generate heightmap mesh from image data
    public static extern Mesh GenMeshHeightmap(Image heightmap, Vector3 size);
    
    [CallingConvention(.Cdecl), LinkName("GenMeshCubicmap")]
    /// Generate cubes-based map mesh from image data
    public static extern Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize);
    
    [CallingConvention(.Cdecl), LinkName("LoadMaterials")]
    /// Load materials from model file
    public static extern Material * LoadMaterials(char8 * fileName, int * materialCount);
    
    [CallingConvention(.Cdecl), LinkName("LoadMaterialDefault")]
    /// Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
    public static extern Material LoadMaterialDefault();
    
    [CallingConvention(.Cdecl), LinkName("IsMaterialReady")]
    /// Check if a material is ready
    public static extern bool IsMaterialReady(Material material);
    
    [CallingConvention(.Cdecl), LinkName("UnloadMaterial")]
    /// Unload material from GPU memory (VRAM)
    public static extern void UnloadMaterial(Material material);
    
    [CallingConvention(.Cdecl), LinkName("SetMaterialTexture")]
    /// Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
    public static extern void SetMaterialTexture(Material * material, int mapType, Texture2D texture);
    
    [CallingConvention(.Cdecl), LinkName("SetModelMeshMaterial")]
    /// Set material for a mesh
    public static extern void SetModelMeshMaterial(Model * model, int meshId, int materialId);
    
    [CallingConvention(.Cdecl), LinkName("LoadModelAnimations")]
    /// Load model animations from file
    public static extern ModelAnimation * LoadModelAnimations(char8 * fileName, int * animCount);
    
    [CallingConvention(.Cdecl), LinkName("UpdateModelAnimation")]
    /// Update model animation pose
    public static extern void UpdateModelAnimation(Model model, ModelAnimation anim, int frame);
    
    [CallingConvention(.Cdecl), LinkName("UnloadModelAnimation")]
    /// Unload animation data
    public static extern void UnloadModelAnimation(ModelAnimation anim);
    
    [CallingConvention(.Cdecl), LinkName("UnloadModelAnimations")]
    /// Unload animation array data
    public static extern void UnloadModelAnimations(ModelAnimation * animations, int count);
    
    [CallingConvention(.Cdecl), LinkName("IsModelAnimationValid")]
    /// Check model animation skeleton match
    public static extern bool IsModelAnimationValid(Model model, ModelAnimation anim);
    
    [CallingConvention(.Cdecl), LinkName("CheckCollisionSpheres")]
    /// Check collision between two spheres
    public static extern bool CheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2);
    
    [CallingConvention(.Cdecl), LinkName("CheckCollisionBoxes")]
    /// Check collision between two bounding boxes
    public static extern bool CheckCollisionBoxes(BoundingBox box1, BoundingBox box2);
    
    [CallingConvention(.Cdecl), LinkName("CheckCollisionBoxSphere")]
    /// Check collision between box and sphere
    public static extern bool CheckCollisionBoxSphere(BoundingBox @box, Vector3 center, float radius);
    
    [CallingConvention(.Cdecl), LinkName("GetRayCollisionSphere")]
    /// Get collision info between ray and sphere
    public static extern RayCollision GetRayCollisionSphere(Ray ray, Vector3 center, float radius);
    
    [CallingConvention(.Cdecl), LinkName("GetRayCollisionBox")]
    /// Get collision info between ray and box
    public static extern RayCollision GetRayCollisionBox(Ray ray, BoundingBox @box);
    
    [CallingConvention(.Cdecl), LinkName("GetRayCollisionMesh")]
    /// Get collision info between ray and mesh
    public static extern RayCollision GetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform);
    
    [CallingConvention(.Cdecl), LinkName("GetRayCollisionTriangle")]
    /// Get collision info between ray and triangle
    public static extern RayCollision GetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3);
    
    [CallingConvention(.Cdecl), LinkName("GetRayCollisionQuad")]
    /// Get collision info between ray and quad
    public static extern RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4);
    
    [CallingConvention(.Cdecl), LinkName("InitAudioDevice")]
    /// Initialize audio device and context
    public static extern void InitAudioDevice();
    
    [CallingConvention(.Cdecl), LinkName("CloseAudioDevice")]
    /// Close the audio device and context
    public static extern void CloseAudioDevice();
    
    [CallingConvention(.Cdecl), LinkName("IsAudioDeviceReady")]
    /// Check if audio device has been initialized successfully
    public static extern bool IsAudioDeviceReady();
    
    [CallingConvention(.Cdecl), LinkName("SetMasterVolume")]
    /// Set master volume (listener)
    public static extern void SetMasterVolume(float volume);
    
    [CallingConvention(.Cdecl), LinkName("LoadWave")]
    /// Load wave data from file
    public static extern Wave LoadWave(char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("LoadWaveFromMemory")]
    /// Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
    public static extern Wave LoadWaveFromMemory(char8 * fileType, char8 * fileData, int dataSize);
    
    [CallingConvention(.Cdecl), LinkName("IsWaveReady")]
    /// Checks if wave data is ready
    public static extern bool IsWaveReady(Wave wave);
    
    [CallingConvention(.Cdecl), LinkName("LoadSound")]
    /// Load sound from file
    public static extern Sound LoadSound(char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("LoadSoundFromWave")]
    /// Load sound from wave data
    public static extern Sound LoadSoundFromWave(Wave wave);
    
    [CallingConvention(.Cdecl), LinkName("IsSoundReady")]
    /// Checks if a sound is ready
    public static extern bool IsSoundReady(Sound sound);
    
    [CallingConvention(.Cdecl), LinkName("UpdateSound")]
    /// Update sound buffer with new data
    public static extern void UpdateSound(Sound sound, void * data, int sampleCount);
    
    [CallingConvention(.Cdecl), LinkName("UnloadWave")]
    /// Unload wave data
    public static extern void UnloadWave(Wave wave);
    
    [CallingConvention(.Cdecl), LinkName("UnloadSound")]
    /// Unload sound
    public static extern void UnloadSound(Sound sound);
    
    [CallingConvention(.Cdecl), LinkName("ExportWave")]
    /// Export wave data to file, returns true on success
    public static extern bool ExportWave(Wave wave, char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("ExportWaveAsCode")]
    /// Export wave sample data to code (.h), returns true on success
    public static extern bool ExportWaveAsCode(Wave wave, char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("PlaySound")]
    /// Play a sound
    public static extern void PlaySound(Sound sound);
    
    [CallingConvention(.Cdecl), LinkName("StopSound")]
    /// Stop playing a sound
    public static extern void StopSound(Sound sound);
    
    [CallingConvention(.Cdecl), LinkName("PauseSound")]
    /// Pause a sound
    public static extern void PauseSound(Sound sound);
    
    [CallingConvention(.Cdecl), LinkName("ResumeSound")]
    /// Resume a paused sound
    public static extern void ResumeSound(Sound sound);
    
    [CallingConvention(.Cdecl), LinkName("IsSoundPlaying")]
    /// Check if a sound is currently playing
    public static extern bool IsSoundPlaying(Sound sound);
    
    [CallingConvention(.Cdecl), LinkName("SetSoundVolume")]
    /// Set volume for a sound (1.0 is max level)
    public static extern void SetSoundVolume(Sound sound, float volume);
    
    [CallingConvention(.Cdecl), LinkName("SetSoundPitch")]
    /// Set pitch for a sound (1.0 is base level)
    public static extern void SetSoundPitch(Sound sound, float pitch);
    
    [CallingConvention(.Cdecl), LinkName("SetSoundPan")]
    /// Set pan for a sound (0.5 is center)
    public static extern void SetSoundPan(Sound sound, float pan);
    
    [CallingConvention(.Cdecl), LinkName("WaveCopy")]
    /// Copy a wave to a new wave
    public static extern Wave WaveCopy(Wave wave);
    
    [CallingConvention(.Cdecl), LinkName("WaveCrop")]
    /// Crop a wave to defined samples range
    public static extern void WaveCrop(Wave * wave, int initSample, int finalSample);
    
    [CallingConvention(.Cdecl), LinkName("WaveFormat")]
    /// Convert wave data to desired format
    public static extern void WaveFormat(Wave * wave, int sampleRate, int sampleSize, int channels);
    
    [CallingConvention(.Cdecl), LinkName("LoadWaveSamples")]
    /// Load samples data from wave as a 32bit float data array
    public static extern float * LoadWaveSamples(Wave wave);
    
    [CallingConvention(.Cdecl), LinkName("UnloadWaveSamples")]
    /// Unload samples data loaded with LoadWaveSamples()
    public static extern void UnloadWaveSamples(float * samples);
    
    [CallingConvention(.Cdecl), LinkName("LoadMusicStream")]
    /// Load music stream from file
    public static extern Music LoadMusicStream(char8 * fileName);
    
    [CallingConvention(.Cdecl), LinkName("LoadMusicStreamFromMemory")]
    /// Load music stream from data
    public static extern Music LoadMusicStreamFromMemory(char8 * fileType, char8 * data, int dataSize);
    
    [CallingConvention(.Cdecl), LinkName("IsMusicReady")]
    /// Checks if a music stream is ready
    public static extern bool IsMusicReady(Music music);
    
    [CallingConvention(.Cdecl), LinkName("UnloadMusicStream")]
    /// Unload music stream
    public static extern void UnloadMusicStream(Music music);
    
    [CallingConvention(.Cdecl), LinkName("PlayMusicStream")]
    /// Start music playing
    public static extern void PlayMusicStream(Music music);
    
    [CallingConvention(.Cdecl), LinkName("IsMusicStreamPlaying")]
    /// Check if music is playing
    public static extern bool IsMusicStreamPlaying(Music music);
    
    [CallingConvention(.Cdecl), LinkName("UpdateMusicStream")]
    /// Updates buffers for music streaming
    public static extern void UpdateMusicStream(Music music);
    
    [CallingConvention(.Cdecl), LinkName("StopMusicStream")]
    /// Stop music playing
    public static extern void StopMusicStream(Music music);
    
    [CallingConvention(.Cdecl), LinkName("PauseMusicStream")]
    /// Pause music playing
    public static extern void PauseMusicStream(Music music);
    
    [CallingConvention(.Cdecl), LinkName("ResumeMusicStream")]
    /// Resume playing paused music
    public static extern void ResumeMusicStream(Music music);
    
    [CallingConvention(.Cdecl), LinkName("SeekMusicStream")]
    /// Seek music to a position (in seconds)
    public static extern void SeekMusicStream(Music music, float position);
    
    [CallingConvention(.Cdecl), LinkName("SetMusicVolume")]
    /// Set volume for music (1.0 is max level)
    public static extern void SetMusicVolume(Music music, float volume);
    
    [CallingConvention(.Cdecl), LinkName("SetMusicPitch")]
    /// Set pitch for a music (1.0 is base level)
    public static extern void SetMusicPitch(Music music, float pitch);
    
    [CallingConvention(.Cdecl), LinkName("SetMusicPan")]
    /// Set pan for a music (0.5 is center)
    public static extern void SetMusicPan(Music music, float pan);
    
    [CallingConvention(.Cdecl), LinkName("GetMusicTimeLength")]
    /// Get music time length (in seconds)
    public static extern float GetMusicTimeLength(Music music);
    
    [CallingConvention(.Cdecl), LinkName("GetMusicTimePlayed")]
    /// Get current music time played (in seconds)
    public static extern float GetMusicTimePlayed(Music music);
    
    [CallingConvention(.Cdecl), LinkName("LoadAudioStream")]
    /// Load audio stream (to stream raw audio pcm data)
    public static extern AudioStream LoadAudioStream(int sampleRate, int sampleSize, int channels);
    
    [CallingConvention(.Cdecl), LinkName("IsAudioStreamReady")]
    /// Checks if an audio stream is ready
    public static extern bool IsAudioStreamReady(AudioStream stream);
    
    [CallingConvention(.Cdecl), LinkName("UnloadAudioStream")]
    /// Unload audio stream and free memory
    public static extern void UnloadAudioStream(AudioStream stream);
    
    [CallingConvention(.Cdecl), LinkName("UpdateAudioStream")]
    /// Update audio stream buffers with data
    public static extern void UpdateAudioStream(AudioStream stream, void * data, int frameCount);
    
    [CallingConvention(.Cdecl), LinkName("IsAudioStreamProcessed")]
    /// Check if any audio stream buffers requires refill
    public static extern bool IsAudioStreamProcessed(AudioStream stream);
    
    [CallingConvention(.Cdecl), LinkName("PlayAudioStream")]
    /// Play audio stream
    public static extern void PlayAudioStream(AudioStream stream);
    
    [CallingConvention(.Cdecl), LinkName("PauseAudioStream")]
    /// Pause audio stream
    public static extern void PauseAudioStream(AudioStream stream);
    
    [CallingConvention(.Cdecl), LinkName("ResumeAudioStream")]
    /// Resume audio stream
    public static extern void ResumeAudioStream(AudioStream stream);
    
    [CallingConvention(.Cdecl), LinkName("IsAudioStreamPlaying")]
    /// Check if audio stream is playing
    public static extern bool IsAudioStreamPlaying(AudioStream stream);
    
    [CallingConvention(.Cdecl), LinkName("StopAudioStream")]
    /// Stop audio stream
    public static extern void StopAudioStream(AudioStream stream);
    
    [CallingConvention(.Cdecl), LinkName("SetAudioStreamVolume")]
    /// Set volume for audio stream (1.0 is max level)
    public static extern void SetAudioStreamVolume(AudioStream stream, float volume);
    
    [CallingConvention(.Cdecl), LinkName("SetAudioStreamPitch")]
    /// Set pitch for audio stream (1.0 is base level)
    public static extern void SetAudioStreamPitch(AudioStream stream, float pitch);
    
    [CallingConvention(.Cdecl), LinkName("SetAudioStreamPan")]
    /// Set pan for audio stream (0.5 is centered)
    public static extern void SetAudioStreamPan(AudioStream stream, float pan);
    
    [CallingConvention(.Cdecl), LinkName("SetAudioStreamBufferSizeDefault")]
    /// Default size for new audio streams
    public static extern void SetAudioStreamBufferSizeDefault(int size);
    
    [CallingConvention(.Cdecl), LinkName("SetAudioStreamCallback")]
    /// Audio thread callback to request new data
    public static extern void SetAudioStreamCallback(AudioStream stream, AudioCallback callback);
    
    [CallingConvention(.Cdecl), LinkName("AttachAudioStreamProcessor")]
    /// Attach audio stream processor to stream
    public static extern void AttachAudioStreamProcessor(AudioStream stream, AudioCallback processor);
    
    [CallingConvention(.Cdecl), LinkName("DetachAudioStreamProcessor")]
    /// Detach audio stream processor from stream
    public static extern void DetachAudioStreamProcessor(AudioStream stream, AudioCallback processor);
    
    [CallingConvention(.Cdecl), LinkName("AttachAudioMixedProcessor")]
    /// Attach audio stream processor to the entire audio pipeline
    public static extern void AttachAudioMixedProcessor(AudioCallback processor);
    
    [CallingConvention(.Cdecl), LinkName("DetachAudioMixedProcessor")]
    /// Detach audio stream processor from the entire audio pipeline
    public static extern void DetachAudioMixedProcessor(AudioCallback processor);
    
}
