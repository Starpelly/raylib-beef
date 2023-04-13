using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct rlDrawCall
{
    /// Drawing mode: LINES, TRIANGLES, QUADS
    public int mode;
    
    /// Number of vertex of the draw
    public int vertexCount;
    
    /// Number of vertex required for index alignment (LINES, TRIANGLES)
    public int vertexAlignment;
    
    /// Texture id to be used on the draw -> Use to create new draw call if changes
    public int textureId;
    
    public this(int mode, int vertexCount, int vertexAlignment, int textureId)
    {
        this.mode = mode;
        this.vertexCount = vertexCount;
        this.vertexAlignment = vertexAlignment;
        this.textureId = textureId;
    }
}
