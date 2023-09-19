using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Music
{
	/// Audio stream
	public AudioStream stream;
	
	/// Total number of frames (considering channels)
	public int32 frameCount;
	
	/// Music looping enable
	public bool looping;
	
	/// Type of music context (audio filetype)
	public int32 ctxType;
	
	/// Audio context data, depends on type
	public void * ctxData;
	
	public this(AudioStream stream, int32 frameCount, bool looping, int32 ctxType, void * ctxData)
	{
		this.stream = stream;
		this.frameCount = frameCount;
		this.looping = looping;
		this.ctxType = ctxType;
		this.ctxData = ctxData;
	}
}
