using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct VrStereoConfig
{
    /// VR projection matrices (per eye)
    public Matrix[2] projection;
    
    /// VR view offset matrices (per eye)
    public Matrix[2] viewOffset;
    
    /// VR left lens center
    public float[2] leftLensCenter;
    
    /// VR right lens center
    public float[2] rightLensCenter;
    
    /// VR left screen center
    public float[2] leftScreenCenter;
    
    /// VR right screen center
    public float[2] rightScreenCenter;
    
    /// VR distortion scale
    public float[2] scale;
    
    /// VR distortion scale in
    public float[2] scaleIn;
    
    public this(Matrix[2] projection, Matrix[2] viewOffset, float[2] leftLensCenter, float[2] rightLensCenter, float[2] leftScreenCenter, float[2] rightScreenCenter, float[2] scale, float[2] scaleIn)
    {
        this.projection = projection;
        this.viewOffset = viewOffset;
        this.leftLensCenter = leftLensCenter;
        this.rightLensCenter = rightLensCenter;
        this.leftScreenCenter = leftScreenCenter;
        this.rightScreenCenter = rightScreenCenter;
        this.scale = scale;
        this.scaleIn = scaleIn;
    }
}
