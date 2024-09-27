using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Font type, defines generation method
public enum FontType : c_int
{
	/// Default font generation, anti-aliased
	case FONT_DEFAULT = 0;
	/// Bitmap font generation, no anti-aliasing
	case FONT_BITMAP = 1;
	/// SDF font generation, requires external shader
	case FONT_SDF = 2;
	
	public static operator int32 (FontType self) => (int32)self;
}
