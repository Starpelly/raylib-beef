using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct ModelSkeleton
{
	/// Number of bones
	public int32 boneCount;
	
	/// Bones information (skeleton)
	public BoneInfo * bones;
	
	/// Bones base transformation (Transform[])
	public ModelAnimPose bindPose;
	
	public this(int32 boneCount, BoneInfo * bones, ModelAnimPose bindPose)
	{
		this.boneCount = boneCount;
		this.bones = bones;
		this.bindPose = bindPose;
	}
}
