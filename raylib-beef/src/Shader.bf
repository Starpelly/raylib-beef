using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Shader
{
	/// Shader program id
	public uint32 id;
	
	/// Shader locations array (RL_MAX_SHADER_LOCATIONS)
	public int * locs;
	
	public this(uint32 id, int * locs)
	{
		this.id = id;
		this.locs = locs;
	}
}
