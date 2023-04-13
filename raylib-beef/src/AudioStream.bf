using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct AudioStream
{
    /// Frequency (samples per second)
    public int32 sampleRate;
    
    /// Bit depth (bits per sample): 8, 16, 32 (24 not supported)
    public int32 sampleSize;
    
    /// Number of channels (1-mono, 2-stereo, ...)
    public int32 channels;
    
    public this(int32 sampleRate, int32 sampleSize, int32 channels)
    {
        this.sampleRate = sampleRate;
        this.sampleSize = sampleSize;
        this.channels = channels;
    }
}
