using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct rlRenderBatch
{
    /// Number of vertex buffers (multi-buffering support)
    public int32 bufferCount;
    
    /// Current buffer tracking in case of multi-buffering
    public int32 currentBuffer;
    
    /// Dynamic buffer(s) for vertex data
    public rlVertexBuffer * vertexBuffer;
    
    /// Draw calls array, depends on textureId
    public rlDrawCall * draws;
    
    /// Draw calls counter
    public int32 drawCounter;
    
    /// Current depth value for next draw
    public float currentDepth;
    
    public this(int32 bufferCount, int32 currentBuffer, rlVertexBuffer * vertexBuffer, rlDrawCall * draws, int32 drawCounter, float currentDepth)
    {
        this.bufferCount = bufferCount;
        this.currentBuffer = currentBuffer;
        this.vertexBuffer = vertexBuffer;
        this.draws = draws;
        this.drawCounter = drawCounter;
        this.currentDepth = currentDepth;
    }
}
