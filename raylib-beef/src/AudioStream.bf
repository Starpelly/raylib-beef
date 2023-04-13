using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct AudioStream
{
    /// Frequency (samples per second)
    public int sampleRate;
    
    /// Bit depth (bits per sample): 8, 16, 32 (24 not supported)
    public int sampleSize;
    
    /// Number of channels (1-mono, 2-stereo, ...)
    public int channels;
    
    public this(int sampleRate, int sampleSize, int channels)
    {
        this.sampleRate = sampleRate;
        this.sampleSize = sampleSize;
        this.channels = channels;
    }
}
