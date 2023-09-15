using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct FilePathList
{
	/// Filepaths max entries
	public uint32 capacity;
	
	/// Filepaths entries count
	public uint32 count;
	
	/// Filepaths entries
	public char8 ** paths;
	
	public this(uint32 capacity, uint32 count, char8 ** paths)
	{
		this.capacity = capacity;
		this.count = count;
		this.paths = paths;
	}
}
