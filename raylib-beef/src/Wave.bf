using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Wave
{
	/// Total number of frames (considering channels)
	public int32 frameCount;
	
	/// Frequency (samples per second)
	public int32 sampleRate;
	
	/// Bit depth (bits per sample): 8, 16, 32 (24 not supported)
	public int32 sampleSize;
	
	/// Number of channels (1-mono, 2-stereo, ...)
	public int32 channels;
	
	/// Buffer data pointer
	public void * data;
	
	public this(int32 frameCount, int32 sampleRate, int32 sampleSize, int32 channels, void * data)
	{
		this.frameCount = frameCount;
		this.sampleRate = sampleRate;
		this.sampleSize = sampleSize;
		this.channels = channels;
		this.data = data;
	}
}
