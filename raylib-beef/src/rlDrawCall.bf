using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct rlDrawCall
{
	/// Drawing mode: LINES, TRIANGLES, QUADS
	public int32 mode;
	
	/// Number of vertex of the draw
	public int32 vertexCount;
	
	/// Number of vertex required for index alignment (LINES, TRIANGLES)
	public int32 vertexAlignment;
	
	/// Texture id to be used on the draw -> Use to create new draw call if changes
	public int32 textureId;
	
	public this(int32 mode, int32 vertexCount, int32 vertexAlignment, int32 textureId)
	{
		this.mode = mode;
		this.vertexCount = vertexCount;
		this.vertexAlignment = vertexAlignment;
		this.textureId = textureId;
	}
}
