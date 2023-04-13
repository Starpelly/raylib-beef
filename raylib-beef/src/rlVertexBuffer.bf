using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct rlVertexBuffer
{
    /// Number of elements in the buffer (QUADS)
    public int elementCount;
    
    /// Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
    public float * vertices;
    
    /// Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
    public float * texcoords;
    
    /// Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
    public char8 * colors;
    
    /// Vertex indices (in case vertex data comes indexed) (6 indices per quad)
    public int * indices;
    
    /// OpenGL Vertex Array Object id
    public int vaoId;
    
    /// OpenGL Vertex Buffer Objects id (4 types of vertex data)
    public int[4] vboId;
    
    public this(int elementCount, float * vertices, float * texcoords, char8 * colors, int * indices, int vaoId, int[4] vboId)
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
