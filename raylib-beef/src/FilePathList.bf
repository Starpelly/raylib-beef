using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct FilePathList
{
	/// Filepaths max entries
	public int32 capacity;
	
	/// Filepaths entries count
	public int32 count;
	
	/// Filepaths entries
	public void* paths;
	
	public this(int32 capacity, int32 count, void* paths)
	{
		this.capacity = capacity;
		this.count = count;
		this.paths = paths;
	}
}
