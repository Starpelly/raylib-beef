using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct FilePathList
{
	/// Filepaths entries count
	public int32 count;
	
	/// Filepaths entries
	public void* paths;
	
	public this(int32 count, void* paths)
	{
		this.count = count;
		this.paths = paths;
	}
}
