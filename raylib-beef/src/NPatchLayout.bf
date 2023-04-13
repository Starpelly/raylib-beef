using System;
using System.Interop;

namespace RaylibBeef;

/// N-patch layout
public enum NPatchLayout : c_int
{
    /// Npatch layout: 3x3 tiles
    NPATCH_NINE_PATCH = 0,
    /// Npatch layout: 1x3 tiles
    NPATCH_THREE_PATCH_VERTICAL = 1,
    /// Npatch layout: 3x1 tiles
    NPATCH_THREE_PATCH_HORIZONTAL = 2,
}
