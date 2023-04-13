using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Font
{
    /// Base size (default chars height)
    public int32 baseSize;
    
    /// Number of glyph characters
    public int32 glyphCount;
    
    /// Padding around the glyph characters
    public int32 glyphPadding;
    
    /// Texture atlas containing the glyphs
    public Texture2D texture;
    
    /// Rectangles in texture for the glyphs
    public Rectangle * recs;
    
    /// Glyphs info data
    public GlyphInfo * glyphs;
    
    public this(int32 baseSize, int32 glyphCount, int32 glyphPadding, Texture2D texture, Rectangle * recs, GlyphInfo * glyphs)
    {
        this.baseSize = baseSize;
        this.glyphCount = glyphCount;
        this.glyphPadding = glyphPadding;
        this.texture = texture;
        this.recs = recs;
        this.glyphs = glyphs;
    }
}
