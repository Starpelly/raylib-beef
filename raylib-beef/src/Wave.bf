using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Wave
{
	/// Total number of frames (considering channels)
	public uint32 frameCount;
	
	/// Frequency (samples per second)
	public uint32 sampleRate;
	
	/// Bit depth (bits per sample): 8, 16, 32 (24 not supported)
	public uint32 sampleSize;
	
	/// Number of channels (1-mono, 2-stereo, ...)
	public uint32 channels;
	
	/// Buffer data pointer
	public void * data;
	
	public this(uint32 frameCount, uint32 sampleRate, uint32 sampleSize, uint32 channels, void * data)
	{
		this.frameCount = frameCount;
		this.sampleRate = sampleRate;
		this.sampleSize = sampleSize;
		this.channels = channels;
		this.data = data;
	}
}
