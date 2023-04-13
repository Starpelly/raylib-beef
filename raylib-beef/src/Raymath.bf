using System;
using System.Interop;

namespace RaylibBeef;

public static class Raymath
{
    public const float PI = 3.141592653589793f;
    
    public const float EPSILON = 1E-06f;
    
    public const float DEG2RAD = (PI/180.0f);
    
    public const float RAD2DEG = (180.0f/PI);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Clamp")]
    public static extern float Clamp(float value, float min, float max);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Lerp")]
    public static extern float Lerp(float start, float end, float amount);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Normalize")]
    public static extern float Normalize(float value, float start, float end);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Remap")]
    public static extern float Remap(float value, float inputStart, float inputEnd, float outputStart, float outputEnd);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Wrap")]
    public static extern float Wrap(float value, float min, float max);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("FloatEquals")]
    public static extern int FloatEquals(float x, float y);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Zero")]
    public static extern Vector2 Vector2Zero();
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2One")]
    public static extern Vector2 Vector2One();
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Add")]
    public static extern Vector2 Vector2Add(Vector2 v1, Vector2 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2AddValue")]
    public static extern Vector2 Vector2AddValue(Vector2 v, float add);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Subtract")]
    public static extern Vector2 Vector2Subtract(Vector2 v1, Vector2 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2SubtractValue")]
    public static extern Vector2 Vector2SubtractValue(Vector2 v, float sub);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Length")]
    public static extern float Vector2Length(Vector2 v);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2LengthSqr")]
    public static extern float Vector2LengthSqr(Vector2 v);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2DotProduct")]
    public static extern float Vector2DotProduct(Vector2 v1, Vector2 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Distance")]
    public static extern float Vector2Distance(Vector2 v1, Vector2 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2DistanceSqr")]
    public static extern float Vector2DistanceSqr(Vector2 v1, Vector2 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Angle")]
    public static extern float Vector2Angle(Vector2 v1, Vector2 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2LineAngle")]
    public static extern float Vector2LineAngle(Vector2 start, Vector2 end);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Scale")]
    public static extern Vector2 Vector2Scale(Vector2 v, float scale);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Multiply")]
    public static extern Vector2 Vector2Multiply(Vector2 v1, Vector2 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Negate")]
    public static extern Vector2 Vector2Negate(Vector2 v);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Divide")]
    public static extern Vector2 Vector2Divide(Vector2 v1, Vector2 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Normalize")]
    public static extern Vector2 Vector2Normalize(Vector2 v);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Transform")]
    public static extern Vector2 Vector2Transform(Vector2 v, Matrix mat);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Lerp")]
    public static extern Vector2 Vector2Lerp(Vector2 v1, Vector2 v2, float amount);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Reflect")]
    public static extern Vector2 Vector2Reflect(Vector2 v, Vector2 normal);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Rotate")]
    public static extern Vector2 Vector2Rotate(Vector2 v, float angle);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2MoveTowards")]
    public static extern Vector2 Vector2MoveTowards(Vector2 v, Vector2 target, float maxDistance);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Invert")]
    public static extern Vector2 Vector2Invert(Vector2 v);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Clamp")]
    public static extern Vector2 Vector2Clamp(Vector2 v, Vector2 min, Vector2 max);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2ClampValue")]
    public static extern Vector2 Vector2ClampValue(Vector2 v, float min, float max);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector2Equals")]
    public static extern int Vector2Equals(Vector2 p, Vector2 q);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Zero")]
    public static extern Vector3 Vector3Zero();
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3One")]
    public static extern Vector3 Vector3One();
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Add")]
    public static extern Vector3 Vector3Add(Vector3 v1, Vector3 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3AddValue")]
    public static extern Vector3 Vector3AddValue(Vector3 v, float add);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Subtract")]
    public static extern Vector3 Vector3Subtract(Vector3 v1, Vector3 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3SubtractValue")]
    public static extern Vector3 Vector3SubtractValue(Vector3 v, float sub);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Scale")]
    public static extern Vector3 Vector3Scale(Vector3 v, float scalar);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Multiply")]
    public static extern Vector3 Vector3Multiply(Vector3 v1, Vector3 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3CrossProduct")]
    public static extern Vector3 Vector3CrossProduct(Vector3 v1, Vector3 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Perpendicular")]
    public static extern Vector3 Vector3Perpendicular(Vector3 v);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Length")]
    public static extern float Vector3Length(Vector3 v);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3LengthSqr")]
    public static extern float Vector3LengthSqr(Vector3 v);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3DotProduct")]
    public static extern float Vector3DotProduct(Vector3 v1, Vector3 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Distance")]
    public static extern float Vector3Distance(Vector3 v1, Vector3 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3DistanceSqr")]
    public static extern float Vector3DistanceSqr(Vector3 v1, Vector3 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Angle")]
    public static extern float Vector3Angle(Vector3 v1, Vector3 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Negate")]
    public static extern Vector3 Vector3Negate(Vector3 v);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Divide")]
    public static extern Vector3 Vector3Divide(Vector3 v1, Vector3 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Normalize")]
    public static extern Vector3 Vector3Normalize(Vector3 v);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3OrthoNormalize")]
    public static extern void Vector3OrthoNormalize(Vector3 * v1, Vector3 * v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Transform")]
    public static extern Vector3 Vector3Transform(Vector3 v, Matrix mat);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3RotateByQuaternion")]
    public static extern Vector3 Vector3RotateByQuaternion(Vector3 v, Quaternion q);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3RotateByAxisAngle")]
    public static extern Vector3 Vector3RotateByAxisAngle(Vector3 v, Vector3 axis, float angle);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Lerp")]
    public static extern Vector3 Vector3Lerp(Vector3 v1, Vector3 v2, float amount);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Reflect")]
    public static extern Vector3 Vector3Reflect(Vector3 v, Vector3 normal);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Min")]
    public static extern Vector3 Vector3Min(Vector3 v1, Vector3 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Max")]
    public static extern Vector3 Vector3Max(Vector3 v1, Vector3 v2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Barycenter")]
    public static extern Vector3 Vector3Barycenter(Vector3 p, Vector3 a, Vector3 b, Vector3 c);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Unproject")]
    public static extern Vector3 Vector3Unproject(Vector3 source, Matrix projection, Matrix view);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3ToFloatV")]
    public static extern float3 Vector3ToFloatV(Vector3 v);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Invert")]
    public static extern Vector3 Vector3Invert(Vector3 v);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Clamp")]
    public static extern Vector3 Vector3Clamp(Vector3 v, Vector3 min, Vector3 max);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3ClampValue")]
    public static extern Vector3 Vector3ClampValue(Vector3 v, float min, float max);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Equals")]
    public static extern int Vector3Equals(Vector3 p, Vector3 q);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("Vector3Refract")]
    public static extern Vector3 Vector3Refract(Vector3 v, Vector3 n, float r);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixDeterminant")]
    public static extern float MatrixDeterminant(Matrix mat);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixTrace")]
    public static extern float MatrixTrace(Matrix mat);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixTranspose")]
    public static extern Matrix MatrixTranspose(Matrix mat);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixInvert")]
    public static extern Matrix MatrixInvert(Matrix mat);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixIdentity")]
    public static extern Matrix MatrixIdentity();
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixAdd")]
    public static extern Matrix MatrixAdd(Matrix left, Matrix right);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixSubtract")]
    public static extern Matrix MatrixSubtract(Matrix left, Matrix right);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixMultiply")]
    public static extern Matrix MatrixMultiply(Matrix left, Matrix right);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixTranslate")]
    public static extern Matrix MatrixTranslate(float x, float y, float z);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixRotate")]
    public static extern Matrix MatrixRotate(Vector3 axis, float angle);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixRotateX")]
    public static extern Matrix MatrixRotateX(float angle);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixRotateY")]
    public static extern Matrix MatrixRotateY(float angle);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixRotateZ")]
    public static extern Matrix MatrixRotateZ(float angle);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixRotateXYZ")]
    public static extern Matrix MatrixRotateXYZ(Vector3 angle);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixRotateZYX")]
    public static extern Matrix MatrixRotateZYX(Vector3 angle);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixScale")]
    public static extern Matrix MatrixScale(float x, float y, float z);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixFrustum")]
    public static extern Matrix MatrixFrustum(double left, double right, double bottom, double top, double near, double far);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixPerspective")]
    public static extern Matrix MatrixPerspective(double fovy, double aspect, double near, double far);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixOrtho")]
    public static extern Matrix MatrixOrtho(double left, double right, double bottom, double top, double near, double far);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixLookAt")]
    public static extern Matrix MatrixLookAt(Vector3 eye, Vector3 target, Vector3 up);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("MatrixToFloatV")]
    public static extern float16 MatrixToFloatV(Matrix mat);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionAdd")]
    public static extern Quaternion QuaternionAdd(Quaternion q1, Quaternion q2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionAddValue")]
    public static extern Quaternion QuaternionAddValue(Quaternion q, float add);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionSubtract")]
    public static extern Quaternion QuaternionSubtract(Quaternion q1, Quaternion q2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionSubtractValue")]
    public static extern Quaternion QuaternionSubtractValue(Quaternion q, float sub);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionIdentity")]
    public static extern Quaternion QuaternionIdentity();
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionLength")]
    public static extern float QuaternionLength(Quaternion q);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionNormalize")]
    public static extern Quaternion QuaternionNormalize(Quaternion q);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionInvert")]
    public static extern Quaternion QuaternionInvert(Quaternion q);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionMultiply")]
    public static extern Quaternion QuaternionMultiply(Quaternion q1, Quaternion q2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionScale")]
    public static extern Quaternion QuaternionScale(Quaternion q, float mul);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionDivide")]
    public static extern Quaternion QuaternionDivide(Quaternion q1, Quaternion q2);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionLerp")]
    public static extern Quaternion QuaternionLerp(Quaternion q1, Quaternion q2, float amount);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionNlerp")]
    public static extern Quaternion QuaternionNlerp(Quaternion q1, Quaternion q2, float amount);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionSlerp")]
    public static extern Quaternion QuaternionSlerp(Quaternion q1, Quaternion q2, float amount);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionFromVector3ToVector3")]
    public static extern Quaternion QuaternionFromVector3ToVector3(Vector3 from, Vector3 to);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionFromMatrix")]
    public static extern Quaternion QuaternionFromMatrix(Matrix mat);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionToMatrix")]
    public static extern Matrix QuaternionToMatrix(Quaternion q);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionFromAxisAngle")]
    public static extern Quaternion QuaternionFromAxisAngle(Vector3 axis, float angle);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionToAxisAngle")]
    public static extern void QuaternionToAxisAngle(Quaternion q, Vector3 * outAxis, float * outAngle);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionFromEuler")]
    public static extern Quaternion QuaternionFromEuler(float pitch, float yaw, float roll);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionToEuler")]
    public static extern Vector3 QuaternionToEuler(Quaternion q);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionTransform")]
    public static extern Quaternion QuaternionTransform(Quaternion q, Matrix mat);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("QuaternionEquals")]
    public static extern int QuaternionEquals(Quaternion p, Quaternion q);
    
    
}
