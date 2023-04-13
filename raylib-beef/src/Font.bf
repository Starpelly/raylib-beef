using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Font
{
    /// Base size (default chars height)
    public int baseSize;
    
    /// Number of glyph characters
    public int glyphCount;
    
    /// Padding around the glyph characters
    public int glyphPadding;
    
    /// Texture atlas containing the glyphs
    public Texture2D texture;
    
    /// Rectangles in texture for the glyphs
    public Rectangle * recs;
    
    /// Glyphs info data
    public GlyphInfo * glyphs;
    
    public this(int baseSize, int glyphCount, int glyphPadding, Texture2D texture, Rectangle * recs, GlyphInfo * glyphs)
    {
        this.baseSize = baseSize;
        this.glyphCount = glyphCount;
        this.glyphPadding = glyphPadding;
        this.texture = texture;
        this.recs = recs;
        this.glyphs = glyphs;
    }
}
