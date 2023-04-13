using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct BoneInfo
{
    /// Bone name
    public char8[32] name;
    
    /// Bone parent
    public int32 parent;
    
    public this(char8[32] name, int32 parent)
    {
        this.name = name;
        this.parent = parent;
    }
}
