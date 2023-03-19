using System;
using System.Interop;

namespace Raylib;

static
{
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
