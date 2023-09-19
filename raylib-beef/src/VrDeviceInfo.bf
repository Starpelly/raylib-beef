using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct VrDeviceInfo
{
	/// Horizontal resolution in pixels
	public int32 hResolution;
	
	/// Vertical resolution in pixels
	public int32 vResolution;
	
	/// Horizontal size in meters
	public float hScreenSize;
	
	/// Vertical size in meters
	public float vScreenSize;
	
	/// Screen center in meters
	public float vScreenCenter;
	
	/// Distance between eye and display in meters
	public float eyeToScreenDistance;
	
	/// Lens separation distance in meters
	public float lensSeparationDistance;
	
	/// IPD (distance between pupils) in meters
	public float interpupillaryDistance;
	
	/// Lens distortion constant parameters
	public float[4] lensDistortionValues;
	
	/// Chromatic aberration correction parameters
	public float[4] chromaAbCorrection;
	
	public this(int32 hResolution, int32 vResolution, float hScreenSize, float vScreenSize, float vScreenCenter, float eyeToScreenDistance, float lensSeparationDistance, float interpupillaryDistance, float[4] lensDistortionValues, float[4] chromaAbCorrection)
	{
		this.hResolution = hResolution;
		this.vResolution = vResolution;
		this.hScreenSize = hScreenSize;
		this.vScreenSize = vScreenSize;
		this.vScreenCenter = vScreenCenter;
		this.eyeToScreenDistance = eyeToScreenDistance;
		this.lensSeparationDistance = lensSeparationDistance;
		this.interpupillaryDistance = interpupillaryDistance;
		this.lensDistortionValues = lensDistortionValues;
		this.chromaAbCorrection = chromaAbCorrection;
	}
}
