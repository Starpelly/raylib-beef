using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct rlVertexBuffer
{
    /// Number of elements in the buffer (QUADS)
    public int32 elementCount;
    
    /// Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
    public float * vertices;
    
    /// Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
    public float * texcoords;
    
    /// Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
    public char8 * colors;
    
    /// Vertex indices (in case vertex data comes indexed) (6 indices per quad)
    public int32 * indices;
    
    /// OpenGL Vertex Array Object id
    public int32 vaoId;
    
    /// OpenGL Vertex Buffer Objects id (4 types of vertex data)
    public int32[4] vboId;
    
    public this(int32 elementCount, float * vertices, float * texcoords, char8 * colors, int32 * indices, int32 vaoId, int32[4] vboId)
    {
        this.elementCount = elementCount;
        this.vertices = vertices;
        this.texcoords = texcoords;
        this.colors = colors;
        this.indices = indices;
        this.vaoId = vaoId;
        this.vboId = vboId;
    }
}
