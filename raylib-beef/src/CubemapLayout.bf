using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Cubemap layouts
public enum CubemapLayout : c_int
{
	/// Automatically detect layout type
	case CUBEMAP_LAYOUT_AUTO_DETECT = 0;
	/// Layout is defined by a vertical line with faces
	case CUBEMAP_LAYOUT_LINE_VERTICAL = 1;
	/// Layout is defined by a horizontal line with faces
	case CUBEMAP_LAYOUT_LINE_HORIZONTAL = 2;
	/// Layout is defined by a 3x4 cross with cubemap faces
	case CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR = 3;
	/// Layout is defined by a 4x3 cross with cubemap faces
	case CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE = 4;
	
	public static operator int32 (CubemapLayout self) => (int32)self;
}
