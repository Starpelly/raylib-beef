using System;
using System.Interop;

namespace Raylib;

[CRepr]
public struct FilePathList
{
    /// Filepaths max entries
    public int capacity;
    
    /// Filepaths entries count
    public int count;
    
    /// Filepaths entries
    public char8 ** paths;
    
    public this(int capacity, int count, char8 ** paths)
    {
        this.capacity = capacity;
        this.count = count;
        this.paths = paths;
    }
}
