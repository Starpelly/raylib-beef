using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Model
{
	/// Local transform matrix
	public Matrix transform;
	
	/// Number of meshes
	public int meshCount;
	
	/// Number of materials
	public int materialCount;
	
	/// Meshes array
	public Mesh * meshes;
	
	/// Materials array
	public Material * materials;
	
	/// Mesh material number
	public int * meshMaterial;
	
	/// Number of bones
	public int boneCount;
	
	/// Bones information (skeleton)
	public BoneInfo * bones;
	
	/// Bones base transformation (pose)
	public Transform * bindPose;
	
	public this(Matrix transform, int meshCount, int materialCount, Mesh * meshes, Material * materials, int * meshMaterial, int boneCount, BoneInfo * bones, Transform * bindPose)
	{
		this.transform = transform;
		this.meshCount = meshCount;
		this.materialCount = materialCount;
		this.meshes = meshes;
		this.materials = materials;
		this.meshMaterial = meshMaterial;
		this.boneCount = boneCount;
		this.bones = bones;
		this.bindPose = bindPose;
	}
}
