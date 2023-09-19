using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Sound
{
	/// Audio stream
	public AudioStream stream;
	
	/// Total number of frames (considering channels)
	public int32 frameCount;
	
	public this(AudioStream stream, int32 frameCount)
	{
		this.stream = stream;
		this.frameCount = frameCount;
	}
}
