using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct NPatchInfo
{
    /// Texture source rectangle
    public Rectangle source;
    
    /// Left border offset
    public int32 left;
    
    /// Top border offset
    public int32 top;
    
    /// Right border offset
    public int32 right;
    
    /// Bottom border offset
    public int32 bottom;
    
    /// Layout of the n-patch: 3x3, 1x3 or 3x1
    public int32 layout;
    
    public this(Rectangle source, int32 left, int32 top, int32 right, int32 bottom, int32 layout)
    {
        this.source = source;
        this.left = left;
        this.top = top;
        this.right = right;
        this.bottom = bottom;
        this.layout = layout;
    }
}
