using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct AudioStream
{
    /// Pointer to internal data used by the audio system
    public rAudioBuffer * buffer;
    
    /// Pointer to internal data processor, useful for audio effects
    public rAudioProcessor * processor;
    
    /// Frequency (samples per second)
    public int sampleRate;
    
    /// Bit depth (bits per sample): 8, 16, 32 (24 not supported)
    public int sampleSize;
    
    /// Number of channels (1-mono, 2-stereo, ...)
    public int channels;
    
    public this(rAudioBuffer * buffer, rAudioProcessor * processor, int sampleRate, int sampleSize, int channels)
    {
        this.buffer = buffer;
        this.processor = processor;
        this.sampleRate = sampleRate;
        this.sampleSize = sampleSize;
        this.channels = channels;
    }
}
