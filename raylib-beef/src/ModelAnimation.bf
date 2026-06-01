using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct ModelAnimation
{
	/// Animation name
	public char8[32] name;
	
	/// Number of bones (per pose)
	public int32 boneCount;
	
	/// Number of animation key frames
	public int32 keyframeCount;
	
	/// Animation sequence keyframe poses [keyframe][pose]
	public void* keyframePoses;
	
	public this(char8[32] name, int32 boneCount, int32 keyframeCount, void* keyframePoses)
	{
		this.name = name;
		this.boneCount = boneCount;
		this.keyframeCount = keyframeCount;
		this.keyframePoses = keyframePoses;
	}
}
