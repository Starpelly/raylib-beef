using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct AudioStream
{
	/// Pointer to internal data used by the audio system
	public void* buffer;
	
	/// Pointer to internal data processor, useful for audio effects
	public void* processor;
	
	/// Frequency (samples per second)
	public int32 sampleRate;
	
	/// Bit depth (bits per sample): 8, 16, 32 (24 not supported)
	public int32 sampleSize;
	
	/// Number of channels (1-mono, 2-stereo, ...)
	public int32 channels;
	
	public this(void* buffer, void* processor, int32 sampleRate, int32 sampleSize, int32 channels)
	{
		this.buffer = buffer;
		this.processor = processor;
		this.sampleRate = sampleRate;
		this.sampleSize = sampleSize;
		this.channels = channels;
	}
}
