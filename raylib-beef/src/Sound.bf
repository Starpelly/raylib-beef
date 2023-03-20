using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct Sound
{
    /// Audio stream
    public AudioStream stream;
    
    /// Total number of frames (considering channels)
    public int frameCount;
    
    public this(AudioStream stream, int frameCount)
    {
        this.stream = stream;
        this.frameCount = frameCount;
    }
}
