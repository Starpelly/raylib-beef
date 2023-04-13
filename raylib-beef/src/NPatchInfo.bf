using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct NPatchInfo
{
    /// Texture source rectangle
    public Rectangle source;
    
    /// Left border offset
    public int left;
    
    /// Top border offset
    public int top;
    
    /// Right border offset
    public int right;
    
    /// Bottom border offset
    public int bottom;
    
    /// Layout of the n-patch: 3x3, 1x3 or 3x1
    public int layout;
    
    public this(Rectangle source, int left, int top, int right, int bottom, int layout)
    {
        this.source = source;
        this.left = left;
        this.top = top;
        this.right = right;
        this.bottom = bottom;
        this.layout = layout;
    }
}
