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
	public uint32 sampleRate;
	
	/// Bit depth (bits per sample): 8, 16, 32 (24 not supported)
	public uint32 sampleSize;
	
	/// Number of channels (1-mono, 2-stereo, ...)
	public uint32 channels;
	
	public this(void* buffer, void* processor, uint32 sampleRate, uint32 sampleSize, uint32 channels)
	{
		this.buffer = buffer;
		this.processor = processor;
		this.sampleRate = sampleRate;
		this.sampleSize = sampleSize;
		this.channels = channels;
	}
}
