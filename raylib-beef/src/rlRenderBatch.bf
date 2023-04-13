using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct rlRenderBatch
{
    /// Number of vertex buffers (multi-buffering support)
    public int bufferCount;
    
    /// Current buffer tracking in case of multi-buffering
    public int currentBuffer;
    
    /// Dynamic buffer(s) for vertex data
    public rlVertexBuffer * vertexBuffer;
    
    /// Draw calls array, depends on textureId
    public rlDrawCall * draws;
    
    /// Draw calls counter
    public int drawCounter;
    
    /// Current depth value for next draw
    public float currentDepth;
    
    public this(int bufferCount, int currentBuffer, rlVertexBuffer * vertexBuffer, rlDrawCall * draws, int drawCounter, float currentDepth)
    {
        this.bufferCount = bufferCount;
        this.currentBuffer = currentBuffer;
        this.vertexBuffer = vertexBuffer;
        this.draws = draws;
        this.drawCounter = drawCounter;
        this.currentDepth = currentDepth;
    }
}
