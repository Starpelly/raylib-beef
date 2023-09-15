using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct ModelAnimation
{
	/// Number of bones
	public int boneCount;
	
	/// Number of animation frames
	public int frameCount;
	
	/// Bones information (skeleton)
	public BoneInfo * bones;
	
	/// Poses array by frame
	public Transform ** framePoses;
	
	public this(int boneCount, int frameCount, BoneInfo * bones, Transform ** framePoses)
	{
		this.boneCount = boneCount;
		this.frameCount = frameCount;
		this.bones = bones;
		this.framePoses = framePoses;
	}
}
