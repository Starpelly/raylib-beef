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
	public void* vertices;
	
	/// Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
	public void* texcoords;
	
	/// Vertex texture second coordinates (UV - 2 components per vertex) (shader-location = 5)
	public void* texcoords2;
	
	/// Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
	public void* normals;
	
	/// Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)
	public void* tangents;
	
	/// Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
	public void* colors;
	
	/// Vertex indices (in case vertex data comes indexed)
	public void* indices;
	
	/// Animated vertex positions (after bones transformations)
	public void* animVertices;
	
	/// Animated normals (after bones transformations)
	public void* animNormals;
	
	/// Vertex bone ids, max 255 bone ids, up to 4 bones influence by vertex (skinning)
	public void* boneIds;
	
	/// Vertex bone weight, up to 4 bones influence by vertex (skinning)
	public void* boneWeights;
	
	/// OpenGL Vertex Array Object id
	public int32 vaoId;
	
	/// OpenGL Vertex Buffer Objects id (default vertex data)
	public void* vboId;
	
	public this(int32 vertexCount, int32 triangleCount, void* vertices, void* texcoords, void* texcoords2, void* normals, void* tangents, void* colors, void* indices, void* animVertices, void* animNormals, void* boneIds, void* boneWeights, int32 vaoId, void* vboId)
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
