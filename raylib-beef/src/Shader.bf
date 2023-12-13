using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Shader
{
	/// Shader program id
	public int32 id;
	
	/// Shader locations array (RL_MAX_SHADER_LOCATIONS)
	public void* locs;
	
	public this(int32 id, void* locs)
	{
		this.id = id;
		this.locs = locs;
	}
}
