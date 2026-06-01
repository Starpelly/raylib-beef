using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct Model
{
	/// Local transform matrix
	public Matrix transform;
	
	/// Number of meshes
	public int32 meshCount;
	
	/// Number of materials
	public int32 materialCount;
	
	/// Meshes array
	public Mesh * meshes;
	
	/// Materials array
	public Material * materials;
	
	/// Mesh material number
	public void* meshMaterial;
	
	/// Skeleton for animation
	public ModelSkeleton skeleton;
	
	/// Current animation pose (Transform[])
	public ModelAnimPose currentPose;
	
	/// Bones animated transformation matrices
	public Matrix * boneMatrices;
	
	public this(Matrix transform, int32 meshCount, int32 materialCount, Mesh * meshes, Material * materials, void* meshMaterial, ModelSkeleton skeleton, ModelAnimPose currentPose, Matrix * boneMatrices)
	{
		this.transform = transform;
		this.meshCount = meshCount;
		this.materialCount = materialCount;
		this.meshes = meshes;
		this.materials = materials;
		this.meshMaterial = meshMaterial;
		this.skeleton = skeleton;
		this.currentPose = currentPose;
		this.boneMatrices = boneMatrices;
	}
}
