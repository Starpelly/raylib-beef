using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct ModelAnimation
{
	/// Number of bones
	public int32 boneCount;
	
	/// Number of animation frames
	public int32 frameCount;
	
	/// Bones information (skeleton)
	public BoneInfo * bones;
	
	/// Poses array by frame
	public void* framePoses;
	
	/// Animation name
	public char8[32] name;
	
	public this(int32 boneCount, int32 frameCount, BoneInfo * bones, void* framePoses, char8[32] name)
	{
		this.boneCount = boneCount;
		this.frameCount = frameCount;
		this.bones = bones;
		this.framePoses = framePoses;
		this.name = name;
	}
}
