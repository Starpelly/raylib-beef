using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct Wave
{
    /// Total number of frames (considering channels)
    public int frameCount;
    
    /// Frequency (samples per second)
    public int sampleRate;
    
    /// Bit depth (bits per sample): 8, 16, 32 (24 not supported)
    public int sampleSize;
    
    /// Number of channels (1-mono, 2-stereo, ...)
    public int channels;
    
    /// Buffer data pointer
    public void * data;
    
    public this(int frameCount, int sampleRate, int sampleSize, int channels, void * data)
    {
        this.frameCount = frameCount;
        this.sampleRate = sampleRate;
        this.sampleSize = sampleSize;
        this.channels = channels;
        this.data = data;
    }
}
