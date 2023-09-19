using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Shader
{
	/// Shader program id
	public int32 id;
	
	/// Shader locations array (RL_MAX_SHADER_LOCATIONS)
	public int32 * locs;
	
	public this(int32 id, int32 * locs)
	{
		this.id = id;
		this.locs = locs;
	}
}
