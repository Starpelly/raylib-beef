using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Font type, defines generation method
public enum FontType : c_int
{
	/// Default font generation, anti-aliased
	FONT_DEFAULT = 0,
	/// Bitmap font generation, no anti-aliasing
	FONT_BITMAP = 1,
	/// SDF font generation, requires external shader
	FONT_SDF = 2,
}
