using System;
using System.Interop;

namespace RaylibBeef;

typealias RenderTexture2D = RenderTexture;

[CRepr]
public struct RenderTexture
{
	/// OpenGL framebuffer object id
	public uint32 id;
	
	/// Color buffer attachment texture
	public Texture texture;
	
	/// Depth buffer attachment texture
	public Texture depth;
	
	public this(uint32 id, Texture texture, Texture depth)
	{
		this.id = id;
		this.texture = texture;
		this.depth = depth;
	}
}
