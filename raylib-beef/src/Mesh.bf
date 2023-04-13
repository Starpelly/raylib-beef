using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Mesh
{
    /// Number of vertices stored in arrays
    public int32 vertexCount;
    
    /// Number of triangles stored (indexed or not)
    public int32 triangleCount;
    
    /// Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
    public float * vertices;
    
    /// Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
    public float * texcoords;
    
    /// Vertex texture second coordinates (UV - 2 components per vertex) (shader-location = 5)
    public float * texcoords2;
    
    /// Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
    public float * normals;
    
    /// Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)
    public float * tangents;
    
    /// Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
    public char8 * colors;
    
    /// Vertex indices (in case vertex data comes indexed)
    public uint16 * indices;
    
    /// Animated vertex positions (after bones transformations)
    public float * animVertices;
    
    /// Animated normals (after bones transformations)
    public float * animNormals;
    
    /// Vertex bone ids, max 255 bone ids, up to 4 bones influence by vertex (skinning)
    public char8 * boneIds;
    
    /// Vertex bone weight, up to 4 bones influence by vertex (skinning)
    public float * boneWeights;
    
    /// OpenGL Vertex Array Object id
    public int32 vaoId;
    
    /// OpenGL Vertex Buffer Objects id (default vertex data)
    public int32 * vboId;
    
    public this(int32 vertexCount, int32 triangleCount, float * vertices, float * texcoords, float * texcoords2, float * normals, float * tangents, char8 * colors, uint16 * indices, float * animVertices, float * animNormals, char8 * boneIds, float * boneWeights, int32 vaoId, int32 * vboId)
    {
        this.vertexCount = vertexCount;
        this.triangleCount = triangleCount;
        this.vertices = vertices;
        this.texcoords = texcoords;
        this.texcoords2 = texcoords2;
        this.normals = normals;
        this.tangents = tangents;
        this.colors = colors;
        this.indices = indices;
        this.animVertices = animVertices;
        this.animNormals = animNormals;
        this.boneIds = boneIds;
        this.boneWeights = boneWeights;
        this.vaoId = vaoId;
        this.vboId = vboId;
    }
}
