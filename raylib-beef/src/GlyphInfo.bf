using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct GlyphInfo
{
    /// Character value (Unicode)
    public int value;
    
    /// Character offset X when drawing
    public int offsetX;
    
    /// Character offset Y when drawing
    public int offsetY;
    
    /// Character advance position X
    public int advanceX;
    
    /// Character image data
    public Image image;
    
    public this(int value, int offsetX, int offsetY, int advanceX, Image image)
    {
        this.value = value;
        this.offsetX = offsetX;
        this.offsetY = offsetY;
        this.advanceX = advanceX;
        this.image = image;
    }
}
