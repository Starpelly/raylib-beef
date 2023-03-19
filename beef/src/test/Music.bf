using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct Music
{
    /// Audio stream
    public AudioStream stream;
    
    /// Total number of frames (considering channels)
    public int frameCount;
    
    /// Music looping enable
    public bool looping;
    
    /// Type of music context (audio filetype)
    public int ctxType;
    
    /// Audio context data, depends on type
    public void * ctxData;
    
    public this(AudioStream stream, int frameCount, bool looping, int ctxType, void * ctxData)
    {
        this.stream = stream;
        this.frameCount = frameCount;
        this.looping = looping;
        this.ctxType = ctxType;
        this.ctxData = ctxData;
    }
}
