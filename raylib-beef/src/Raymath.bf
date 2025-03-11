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
	[CLink]
	public static extern float Clamp(float value, float min, float max);
	
	/// 
	[CLink]
	public static extern float Lerp(float start, float end, float amount);
	
	/// 
	[CLink]
	public static extern float Normalize(float value, float start, float end);
	
	/// 
	[CLink]
	public static extern float Remap(float value, float inputStart, float inputEnd, float outputStart, float outputEnd);
	
	/// 
	[CLink]
	public static extern float Wrap(float value, float min, float max);
	
	/// 
	[CLink]
	public static extern int32 FloatEquals(float x, float y);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Zero();
	
	/// 
	[CLink]
	public static extern Vector2 Vector2One();
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Zero();
	
	/// 
	[CLink]
	public static extern Vector3 Vector3One();
	
	/// 
	[CLink]
	public static extern float Vector3Length(Vector3 v);
	
	/// 
	[CLink]
	public static extern float Vector3LengthSqr(Vector3 v);
	
	/// 
	[CLink]
	public static extern void Vector3OrthoNormalize(Vector3 *v1, Vector3 *v2);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4Zero();
	
	/// 
	[CLink]
	public static extern Vector4 Vector4One();
	
	/// 
	[CLink]
	public static extern Matrix MatrixIdentity();
	
	/// 
	[CLink]
	public static extern Matrix MatrixTranslate(float x, float y, float z);
	
	/// 
	[CLink]
	public static extern Matrix MatrixRotateX(float angle);
	
	/// 
	[CLink]
	public static extern Matrix MatrixRotateY(float angle);
	
	/// 
	[CLink]
	public static extern Matrix MatrixRotateZ(float angle);
	
	/// 
	[CLink]
	public static extern Matrix MatrixScale(float x, float y, float z);
	
	/// 
	[CLink]
	public static extern Matrix MatrixFrustum(double left, double right, double bottom, double top, double nearPlane, double farPlane);
	
	/// 
	[CLink]
	public static extern Matrix MatrixPerspective(double fovY, double aspect, double nearPlane, double farPlane);
	
	/// 
	[CLink]
	public static extern Matrix MatrixOrtho(double left, double right, double bottom, double top, double nearPlane, double farPlane);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionIdentity();
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionFromEuler(float pitch, float yaw, float roll);
	
#if !BF_PLATFORM_WASM
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Add(Vector2 v1, Vector2 v2);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2AddValue(Vector2 v, float add);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Subtract(Vector2 v1, Vector2 v2);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2SubtractValue(Vector2 v, float sub);
	
	/// 
	[CLink]
	public static extern float Vector2Length(Vector2 v);
	
	/// 
	[CLink]
	public static extern float Vector2LengthSqr(Vector2 v);
	
	/// 
	[CLink]
	public static extern float Vector2DotProduct(Vector2 v1, Vector2 v2);
	
	/// 
	[CLink]
	public static extern float Vector2Distance(Vector2 v1, Vector2 v2);
	
	/// 
	[CLink]
	public static extern float Vector2DistanceSqr(Vector2 v1, Vector2 v2);
	
	/// 
	[CLink]
	public static extern float Vector2Angle(Vector2 v1, Vector2 v2);
	
	/// 
	[CLink]
	public static extern float Vector2LineAngle(Vector2 start, Vector2 end);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Scale(Vector2 v, float scale);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Multiply(Vector2 v1, Vector2 v2);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Negate(Vector2 v);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Divide(Vector2 v1, Vector2 v2);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Normalize(Vector2 v);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Transform(Vector2 v, Matrix mat);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Lerp(Vector2 v1, Vector2 v2, float amount);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Reflect(Vector2 v, Vector2 normal);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Min(Vector2 v1, Vector2 v2);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Max(Vector2 v1, Vector2 v2);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Rotate(Vector2 v, float angle);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2MoveTowards(Vector2 v, Vector2 target, float maxDistance);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Invert(Vector2 v);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Clamp(Vector2 v, Vector2 min, Vector2 max);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2ClampValue(Vector2 v, float min, float max);
	
	/// 
	[CLink]
	public static extern int32 Vector2Equals(Vector2 p, Vector2 q);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Refract(Vector2 v, Vector2 n, float r);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Add(Vector3 v1, Vector3 v2);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3AddValue(Vector3 v, float add);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Subtract(Vector3 v1, Vector3 v2);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3SubtractValue(Vector3 v, float sub);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Scale(Vector3 v, float scalar);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Multiply(Vector3 v1, Vector3 v2);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3CrossProduct(Vector3 v1, Vector3 v2);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Perpendicular(Vector3 v);
	
	/// 
	[CLink]
	public static extern float Vector3DotProduct(Vector3 v1, Vector3 v2);
	
	/// 
	[CLink]
	public static extern float Vector3Distance(Vector3 v1, Vector3 v2);
	
	/// 
	[CLink]
	public static extern float Vector3DistanceSqr(Vector3 v1, Vector3 v2);
	
	/// 
	[CLink]
	public static extern float Vector3Angle(Vector3 v1, Vector3 v2);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Negate(Vector3 v);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Divide(Vector3 v1, Vector3 v2);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Normalize(Vector3 v);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Project(Vector3 v1, Vector3 v2);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Reject(Vector3 v1, Vector3 v2);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Transform(Vector3 v, Matrix mat);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3RotateByQuaternion(Vector3 v, Quaternion q);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3RotateByAxisAngle(Vector3 v, Vector3 axis, float angle);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3MoveTowards(Vector3 v, Vector3 target, float maxDistance);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Lerp(Vector3 v1, Vector3 v2, float amount);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3CubicHermite(Vector3 v1, Vector3 tangent1, Vector3 v2, Vector3 tangent2, float amount);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Reflect(Vector3 v, Vector3 normal);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Min(Vector3 v1, Vector3 v2);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Max(Vector3 v1, Vector3 v2);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Barycenter(Vector3 p, Vector3 a, Vector3 b, Vector3 c);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Unproject(Vector3 source, Matrix projection, Matrix view);
	
	/// 
	[CLink]
	public static extern float3 Vector3ToFloatV(Vector3 v);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Invert(Vector3 v);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Clamp(Vector3 v, Vector3 min, Vector3 max);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3ClampValue(Vector3 v, float min, float max);
	
	/// 
	[CLink]
	public static extern int32 Vector3Equals(Vector3 p, Vector3 q);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Refract(Vector3 v, Vector3 n, float r);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4Add(Vector4 v1, Vector4 v2);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4AddValue(Vector4 v, float add);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4Subtract(Vector4 v1, Vector4 v2);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4SubtractValue(Vector4 v, float add);
	
	/// 
	[CLink]
	public static extern float Vector4Length(Vector4 v);
	
	/// 
	[CLink]
	public static extern float Vector4LengthSqr(Vector4 v);
	
	/// 
	[CLink]
	public static extern float Vector4DotProduct(Vector4 v1, Vector4 v2);
	
	/// 
	[CLink]
	public static extern float Vector4Distance(Vector4 v1, Vector4 v2);
	
	/// 
	[CLink]
	public static extern float Vector4DistanceSqr(Vector4 v1, Vector4 v2);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4Scale(Vector4 v, float scale);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4Multiply(Vector4 v1, Vector4 v2);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4Negate(Vector4 v);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4Divide(Vector4 v1, Vector4 v2);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4Normalize(Vector4 v);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4Min(Vector4 v1, Vector4 v2);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4Max(Vector4 v1, Vector4 v2);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4Lerp(Vector4 v1, Vector4 v2, float amount);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4MoveTowards(Vector4 v, Vector4 target, float maxDistance);
	
	/// 
	[CLink]
	public static extern Vector4 Vector4Invert(Vector4 v);
	
	/// 
	[CLink]
	public static extern int32 Vector4Equals(Vector4 p, Vector4 q);
	
	/// 
	[CLink]
	public static extern float MatrixDeterminant(Matrix mat);
	
	/// 
	[CLink]
	public static extern float MatrixTrace(Matrix mat);
	
	/// 
	[CLink]
	public static extern Matrix MatrixTranspose(Matrix mat);
	
	/// 
	[CLink]
	public static extern Matrix MatrixInvert(Matrix mat);
	
	/// 
	[CLink]
	public static extern Matrix MatrixAdd(Matrix left, Matrix right);
	
	/// 
	[CLink]
	public static extern Matrix MatrixSubtract(Matrix left, Matrix right);
	
	/// 
	[CLink]
	public static extern Matrix MatrixMultiply(Matrix left, Matrix right);
	
	/// 
	[CLink]
	public static extern Matrix MatrixRotate(Vector3 axis, float angle);
	
	/// 
	[CLink]
	public static extern Matrix MatrixRotateXYZ(Vector3 angle);
	
	/// 
	[CLink]
	public static extern Matrix MatrixRotateZYX(Vector3 angle);
	
	/// 
	[CLink]
	public static extern Matrix MatrixLookAt(Vector3 eye, Vector3 target, Vector3 up);
	
	/// 
	[CLink]
	public static extern float16 MatrixToFloatV(Matrix mat);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionAdd(Quaternion q1, Quaternion q2);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionAddValue(Quaternion q, float add);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionSubtract(Quaternion q1, Quaternion q2);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionSubtractValue(Quaternion q, float sub);
	
	/// 
	[CLink]
	public static extern float QuaternionLength(Quaternion q);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionNormalize(Quaternion q);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionInvert(Quaternion q);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionMultiply(Quaternion q1, Quaternion q2);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionScale(Quaternion q, float mul);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionDivide(Quaternion q1, Quaternion q2);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionLerp(Quaternion q1, Quaternion q2, float amount);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionNlerp(Quaternion q1, Quaternion q2, float amount);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionSlerp(Quaternion q1, Quaternion q2, float amount);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionCubicHermiteSpline(Quaternion q1, Quaternion outTangent1, Quaternion q2, Quaternion inTangent2, float t);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionFromVector3ToVector3(Vector3 from, Vector3 to);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionFromMatrix(Matrix mat);
	
	/// 
	[CLink]
	public static extern Matrix QuaternionToMatrix(Quaternion q);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionFromAxisAngle(Vector3 axis, float angle);
	
	/// 
	[CLink]
	public static extern void QuaternionToAxisAngle(Quaternion q, Vector3 *outAxis, float *outAngle);
	
	/// 
	[CLink]
	public static extern Vector3 QuaternionToEuler(Quaternion q);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionTransform(Quaternion q, Matrix mat);
	
	/// 
	[CLink]
	public static extern int32 QuaternionEquals(Quaternion p, Quaternion q);
	
	/// 
	[CLink]
	public static extern void MatrixDecompose(Matrix mat, Vector3 *translation, Quaternion *rotation, Vector3 *scale);
	
#else
	
	/// 
	[Inline]
	public static Vector2 Vector2Add(Vector2 v1, Vector2 v2)
	{
		return Vector2Add_Impl(v1, v2);
	}
	[LinkName("Vector2Add")]
	private static extern Vector2 Vector2Add_Impl(in Vector2 v1, in Vector2 v2);
	
	/// 
	[Inline]
	public static Vector2 Vector2AddValue(Vector2 v, float add)
	{
		return Vector2AddValue_Impl(v, add);
	}
	[LinkName("Vector2AddValue")]
	private static extern Vector2 Vector2AddValue_Impl(in Vector2 v, float add);
	
	/// 
	[Inline]
	public static Vector2 Vector2Subtract(Vector2 v1, Vector2 v2)
	{
		return Vector2Subtract_Impl(v1, v2);
	}
	[LinkName("Vector2Subtract")]
	private static extern Vector2 Vector2Subtract_Impl(in Vector2 v1, in Vector2 v2);
	
	/// 
	[Inline]
	public static Vector2 Vector2SubtractValue(Vector2 v, float sub)
	{
		return Vector2SubtractValue_Impl(v, sub);
	}
	[LinkName("Vector2SubtractValue")]
	private static extern Vector2 Vector2SubtractValue_Impl(in Vector2 v, float sub);
	
	/// 
	[Inline]
	public static float Vector2Length(Vector2 v)
	{
		return Vector2Length_Impl(v);
	}
	[LinkName("Vector2Length")]
	private static extern float Vector2Length_Impl(in Vector2 v);
	
	/// 
	[Inline]
	public static float Vector2LengthSqr(Vector2 v)
	{
		return Vector2LengthSqr_Impl(v);
	}
	[LinkName("Vector2LengthSqr")]
	private static extern float Vector2LengthSqr_Impl(in Vector2 v);
	
	/// 
	[Inline]
	public static float Vector2DotProduct(Vector2 v1, Vector2 v2)
	{
		return Vector2DotProduct_Impl(v1, v2);
	}
	[LinkName("Vector2DotProduct")]
	private static extern float Vector2DotProduct_Impl(in Vector2 v1, in Vector2 v2);
	
	/// 
	[Inline]
	public static float Vector2Distance(Vector2 v1, Vector2 v2)
	{
		return Vector2Distance_Impl(v1, v2);
	}
	[LinkName("Vector2Distance")]
	private static extern float Vector2Distance_Impl(in Vector2 v1, in Vector2 v2);
	
	/// 
	[Inline]
	public static float Vector2DistanceSqr(Vector2 v1, Vector2 v2)
	{
		return Vector2DistanceSqr_Impl(v1, v2);
	}
	[LinkName("Vector2DistanceSqr")]
	private static extern float Vector2DistanceSqr_Impl(in Vector2 v1, in Vector2 v2);
	
	/// 
	[Inline]
	public static float Vector2Angle(Vector2 v1, Vector2 v2)
	{
		return Vector2Angle_Impl(v1, v2);
	}
	[LinkName("Vector2Angle")]
	private static extern float Vector2Angle_Impl(in Vector2 v1, in Vector2 v2);
	
	/// 
	[Inline]
	public static float Vector2LineAngle(Vector2 start, Vector2 end)
	{
		return Vector2LineAngle_Impl(start, end);
	}
	[LinkName("Vector2LineAngle")]
	private static extern float Vector2LineAngle_Impl(in Vector2 start, in Vector2 end);
	
	/// 
	[Inline]
	public static Vector2 Vector2Scale(Vector2 v, float scale)
	{
		return Vector2Scale_Impl(v, scale);
	}
	[LinkName("Vector2Scale")]
	private static extern Vector2 Vector2Scale_Impl(in Vector2 v, float scale);
	
	/// 
	[Inline]
	public static Vector2 Vector2Multiply(Vector2 v1, Vector2 v2)
	{
		return Vector2Multiply_Impl(v1, v2);
	}
	[LinkName("Vector2Multiply")]
	private static extern Vector2 Vector2Multiply_Impl(in Vector2 v1, in Vector2 v2);
	
	/// 
	[Inline]
	public static Vector2 Vector2Negate(Vector2 v)
	{
		return Vector2Negate_Impl(v);
	}
	[LinkName("Vector2Negate")]
	private static extern Vector2 Vector2Negate_Impl(in Vector2 v);
	
	/// 
	[Inline]
	public static Vector2 Vector2Divide(Vector2 v1, Vector2 v2)
	{
		return Vector2Divide_Impl(v1, v2);
	}
	[LinkName("Vector2Divide")]
	private static extern Vector2 Vector2Divide_Impl(in Vector2 v1, in Vector2 v2);
	
	/// 
	[Inline]
	public static Vector2 Vector2Normalize(Vector2 v)
	{
		return Vector2Normalize_Impl(v);
	}
	[LinkName("Vector2Normalize")]
	private static extern Vector2 Vector2Normalize_Impl(in Vector2 v);
	
	/// 
	[Inline]
	public static Vector2 Vector2Transform(Vector2 v, Matrix mat)
	{
		return Vector2Transform_Impl(v, mat);
	}
	[LinkName("Vector2Transform")]
	private static extern Vector2 Vector2Transform_Impl(in Vector2 v, in Matrix mat);
	
	/// 
	[Inline]
	public static Vector2 Vector2Lerp(Vector2 v1, Vector2 v2, float amount)
	{
		return Vector2Lerp_Impl(v1, v2, amount);
	}
	[LinkName("Vector2Lerp")]
	private static extern Vector2 Vector2Lerp_Impl(in Vector2 v1, in Vector2 v2, float amount);
	
	/// 
	[Inline]
	public static Vector2 Vector2Reflect(Vector2 v, Vector2 normal)
	{
		return Vector2Reflect_Impl(v, normal);
	}
	[LinkName("Vector2Reflect")]
	private static extern Vector2 Vector2Reflect_Impl(in Vector2 v, in Vector2 normal);
	
	/// 
	[Inline]
	public static Vector2 Vector2Min(Vector2 v1, Vector2 v2)
	{
		return Vector2Min_Impl(v1, v2);
	}
	[LinkName("Vector2Min")]
	private static extern Vector2 Vector2Min_Impl(in Vector2 v1, in Vector2 v2);
	
	/// 
	[Inline]
	public static Vector2 Vector2Max(Vector2 v1, Vector2 v2)
	{
		return Vector2Max_Impl(v1, v2);
	}
	[LinkName("Vector2Max")]
	private static extern Vector2 Vector2Max_Impl(in Vector2 v1, in Vector2 v2);
	
	/// 
	[Inline]
	public static Vector2 Vector2Rotate(Vector2 v, float angle)
	{
		return Vector2Rotate_Impl(v, angle);
	}
	[LinkName("Vector2Rotate")]
	private static extern Vector2 Vector2Rotate_Impl(in Vector2 v, float angle);
	
	/// 
	[Inline]
	public static Vector2 Vector2MoveTowards(Vector2 v, Vector2 target, float maxDistance)
	{
		return Vector2MoveTowards_Impl(v, target, maxDistance);
	}
	[LinkName("Vector2MoveTowards")]
	private static extern Vector2 Vector2MoveTowards_Impl(in Vector2 v, in Vector2 target, float maxDistance);
	
	/// 
	[Inline]
	public static Vector2 Vector2Invert(Vector2 v)
	{
		return Vector2Invert_Impl(v);
	}
	[LinkName("Vector2Invert")]
	private static extern Vector2 Vector2Invert_Impl(in Vector2 v);
	
	/// 
	[Inline]
	public static Vector2 Vector2Clamp(Vector2 v, Vector2 min, Vector2 max)
	{
		return Vector2Clamp_Impl(v, min, max);
	}
	[LinkName("Vector2Clamp")]
	private static extern Vector2 Vector2Clamp_Impl(in Vector2 v, in Vector2 min, in Vector2 max);
	
	/// 
	[Inline]
	public static Vector2 Vector2ClampValue(Vector2 v, float min, float max)
	{
		return Vector2ClampValue_Impl(v, min, max);
	}
	[LinkName("Vector2ClampValue")]
	private static extern Vector2 Vector2ClampValue_Impl(in Vector2 v, float min, float max);
	
	/// 
	[Inline]
	public static int32 Vector2Equals(Vector2 p, Vector2 q)
	{
		return Vector2Equals_Impl(p, q);
	}
	[LinkName("Vector2Equals")]
	private static extern int32 Vector2Equals_Impl(in Vector2 p, in Vector2 q);
	
	/// 
	[Inline]
	public static Vector2 Vector2Refract(Vector2 v, Vector2 n, float r)
	{
		return Vector2Refract_Impl(v, n, r);
	}
	[LinkName("Vector2Refract")]
	private static extern Vector2 Vector2Refract_Impl(in Vector2 v, in Vector2 n, float r);
	
	/// 
	[Inline]
	public static Vector3 Vector3Add(Vector3 v1, Vector3 v2)
	{
		return Vector3Add_Impl(v1, v2);
	}
	[LinkName("Vector3Add")]
	private static extern Vector3 Vector3Add_Impl(in Vector3 v1, in Vector3 v2);
	
	/// 
	[Inline]
	public static Vector3 Vector3AddValue(Vector3 v, float add)
	{
		return Vector3AddValue_Impl(v, add);
	}
	[LinkName("Vector3AddValue")]
	private static extern Vector3 Vector3AddValue_Impl(in Vector3 v, float add);
	
	/// 
	[Inline]
	public static Vector3 Vector3Subtract(Vector3 v1, Vector3 v2)
	{
		return Vector3Subtract_Impl(v1, v2);
	}
	[LinkName("Vector3Subtract")]
	private static extern Vector3 Vector3Subtract_Impl(in Vector3 v1, in Vector3 v2);
	
	/// 
	[Inline]
	public static Vector3 Vector3SubtractValue(Vector3 v, float sub)
	{
		return Vector3SubtractValue_Impl(v, sub);
	}
	[LinkName("Vector3SubtractValue")]
	private static extern Vector3 Vector3SubtractValue_Impl(in Vector3 v, float sub);
	
	/// 
	[Inline]
	public static Vector3 Vector3Scale(Vector3 v, float scalar)
	{
		return Vector3Scale_Impl(v, scalar);
	}
	[LinkName("Vector3Scale")]
	private static extern Vector3 Vector3Scale_Impl(in Vector3 v, float scalar);
	
	/// 
	[Inline]
	public static Vector3 Vector3Multiply(Vector3 v1, Vector3 v2)
	{
		return Vector3Multiply_Impl(v1, v2);
	}
	[LinkName("Vector3Multiply")]
	private static extern Vector3 Vector3Multiply_Impl(in Vector3 v1, in Vector3 v2);
	
	/// 
	[Inline]
	public static Vector3 Vector3CrossProduct(Vector3 v1, Vector3 v2)
	{
		return Vector3CrossProduct_Impl(v1, v2);
	}
	[LinkName("Vector3CrossProduct")]
	private static extern Vector3 Vector3CrossProduct_Impl(in Vector3 v1, in Vector3 v2);
	
	/// 
	[Inline]
	public static Vector3 Vector3Perpendicular(Vector3 v)
	{
		return Vector3Perpendicular_Impl(v);
	}
	[LinkName("Vector3Perpendicular")]
	private static extern Vector3 Vector3Perpendicular_Impl(in Vector3 v);
	
	/// 
	[Inline]
	public static float Vector3DotProduct(Vector3 v1, Vector3 v2)
	{
		return Vector3DotProduct_Impl(v1, v2);
	}
	[LinkName("Vector3DotProduct")]
	private static extern float Vector3DotProduct_Impl(in Vector3 v1, in Vector3 v2);
	
	/// 
	[Inline]
	public static float Vector3Distance(Vector3 v1, Vector3 v2)
	{
		return Vector3Distance_Impl(v1, v2);
	}
	[LinkName("Vector3Distance")]
	private static extern float Vector3Distance_Impl(in Vector3 v1, in Vector3 v2);
	
	/// 
	[Inline]
	public static float Vector3DistanceSqr(Vector3 v1, Vector3 v2)
	{
		return Vector3DistanceSqr_Impl(v1, v2);
	}
	[LinkName("Vector3DistanceSqr")]
	private static extern float Vector3DistanceSqr_Impl(in Vector3 v1, in Vector3 v2);
	
	/// 
	[Inline]
	public static float Vector3Angle(Vector3 v1, Vector3 v2)
	{
		return Vector3Angle_Impl(v1, v2);
	}
	[LinkName("Vector3Angle")]
	private static extern float Vector3Angle_Impl(in Vector3 v1, in Vector3 v2);
	
	/// 
	[Inline]
	public static Vector3 Vector3Negate(Vector3 v)
	{
		return Vector3Negate_Impl(v);
	}
	[LinkName("Vector3Negate")]
	private static extern Vector3 Vector3Negate_Impl(in Vector3 v);
	
	/// 
	[Inline]
	public static Vector3 Vector3Divide(Vector3 v1, Vector3 v2)
	{
		return Vector3Divide_Impl(v1, v2);
	}
	[LinkName("Vector3Divide")]
	private static extern Vector3 Vector3Divide_Impl(in Vector3 v1, in Vector3 v2);
	
	/// 
	[Inline]
	public static Vector3 Vector3Normalize(Vector3 v)
	{
		return Vector3Normalize_Impl(v);
	}
	[LinkName("Vector3Normalize")]
	private static extern Vector3 Vector3Normalize_Impl(in Vector3 v);
	
	/// 
	[Inline]
	public static Vector3 Vector3Project(Vector3 v1, Vector3 v2)
	{
		return Vector3Project_Impl(v1, v2);
	}
	[LinkName("Vector3Project")]
	private static extern Vector3 Vector3Project_Impl(in Vector3 v1, in Vector3 v2);
	
	/// 
	[Inline]
	public static Vector3 Vector3Reject(Vector3 v1, Vector3 v2)
	{
		return Vector3Reject_Impl(v1, v2);
	}
	[LinkName("Vector3Reject")]
	private static extern Vector3 Vector3Reject_Impl(in Vector3 v1, in Vector3 v2);
	
	/// 
	[Inline]
	public static Vector3 Vector3Transform(Vector3 v, Matrix mat)
	{
		return Vector3Transform_Impl(v, mat);
	}
	[LinkName("Vector3Transform")]
	private static extern Vector3 Vector3Transform_Impl(in Vector3 v, in Matrix mat);
	
	/// 
	[Inline]
	public static Vector3 Vector3RotateByQuaternion(Vector3 v, Quaternion q)
	{
		return Vector3RotateByQuaternion_Impl(v, q);
	}
	[LinkName("Vector3RotateByQuaternion")]
	private static extern Vector3 Vector3RotateByQuaternion_Impl(in Vector3 v, in Quaternion q);
	
	/// 
	[Inline]
	public static Vector3 Vector3RotateByAxisAngle(Vector3 v, Vector3 axis, float angle)
	{
		return Vector3RotateByAxisAngle_Impl(v, axis, angle);
	}
	[LinkName("Vector3RotateByAxisAngle")]
	private static extern Vector3 Vector3RotateByAxisAngle_Impl(in Vector3 v, in Vector3 axis, float angle);
	
	/// 
	[Inline]
	public static Vector3 Vector3MoveTowards(Vector3 v, Vector3 target, float maxDistance)
	{
		return Vector3MoveTowards_Impl(v, target, maxDistance);
	}
	[LinkName("Vector3MoveTowards")]
	private static extern Vector3 Vector3MoveTowards_Impl(in Vector3 v, in Vector3 target, float maxDistance);
	
	/// 
	[Inline]
	public static Vector3 Vector3Lerp(Vector3 v1, Vector3 v2, float amount)
	{
		return Vector3Lerp_Impl(v1, v2, amount);
	}
	[LinkName("Vector3Lerp")]
	private static extern Vector3 Vector3Lerp_Impl(in Vector3 v1, in Vector3 v2, float amount);
	
	/// 
	[Inline]
	public static Vector3 Vector3CubicHermite(Vector3 v1, Vector3 tangent1, Vector3 v2, Vector3 tangent2, float amount)
	{
		return Vector3CubicHermite_Impl(v1, tangent1, v2, tangent2, amount);
	}
	[LinkName("Vector3CubicHermite")]
	private static extern Vector3 Vector3CubicHermite_Impl(in Vector3 v1, in Vector3 tangent1, in Vector3 v2, in Vector3 tangent2, float amount);
	
	/// 
	[Inline]
	public static Vector3 Vector3Reflect(Vector3 v, Vector3 normal)
	{
		return Vector3Reflect_Impl(v, normal);
	}
	[LinkName("Vector3Reflect")]
	private static extern Vector3 Vector3Reflect_Impl(in Vector3 v, in Vector3 normal);
	
	/// 
	[Inline]
	public static Vector3 Vector3Min(Vector3 v1, Vector3 v2)
	{
		return Vector3Min_Impl(v1, v2);
	}
	[LinkName("Vector3Min")]
	private static extern Vector3 Vector3Min_Impl(in Vector3 v1, in Vector3 v2);
	
	/// 
	[Inline]
	public static Vector3 Vector3Max(Vector3 v1, Vector3 v2)
	{
		return Vector3Max_Impl(v1, v2);
	}
	[LinkName("Vector3Max")]
	private static extern Vector3 Vector3Max_Impl(in Vector3 v1, in Vector3 v2);
	
	/// 
	[Inline]
	public static Vector3 Vector3Barycenter(Vector3 p, Vector3 a, Vector3 b, Vector3 c)
	{
		return Vector3Barycenter_Impl(p, a, b, c);
	}
	[LinkName("Vector3Barycenter")]
	private static extern Vector3 Vector3Barycenter_Impl(in Vector3 p, in Vector3 a, in Vector3 b, in Vector3 c);
	
	/// 
	[Inline]
	public static Vector3 Vector3Unproject(Vector3 source, Matrix projection, Matrix view)
	{
		return Vector3Unproject_Impl(source, projection, view);
	}
	[LinkName("Vector3Unproject")]
	private static extern Vector3 Vector3Unproject_Impl(in Vector3 source, in Matrix projection, in Matrix view);
	
	/// 
	[Inline]
	public static float3 Vector3ToFloatV(Vector3 v)
	{
		return Vector3ToFloatV_Impl(v);
	}
	[LinkName("Vector3ToFloatV")]
	private static extern float3 Vector3ToFloatV_Impl(in Vector3 v);
	
	/// 
	[Inline]
	public static Vector3 Vector3Invert(Vector3 v)
	{
		return Vector3Invert_Impl(v);
	}
	[LinkName("Vector3Invert")]
	private static extern Vector3 Vector3Invert_Impl(in Vector3 v);
	
	/// 
	[Inline]
	public static Vector3 Vector3Clamp(Vector3 v, Vector3 min, Vector3 max)
	{
		return Vector3Clamp_Impl(v, min, max);
	}
	[LinkName("Vector3Clamp")]
	private static extern Vector3 Vector3Clamp_Impl(in Vector3 v, in Vector3 min, in Vector3 max);
	
	/// 
	[Inline]
	public static Vector3 Vector3ClampValue(Vector3 v, float min, float max)
	{
		return Vector3ClampValue_Impl(v, min, max);
	}
	[LinkName("Vector3ClampValue")]
	private static extern Vector3 Vector3ClampValue_Impl(in Vector3 v, float min, float max);
	
	/// 
	[Inline]
	public static int32 Vector3Equals(Vector3 p, Vector3 q)
	{
		return Vector3Equals_Impl(p, q);
	}
	[LinkName("Vector3Equals")]
	private static extern int32 Vector3Equals_Impl(in Vector3 p, in Vector3 q);
	
	/// 
	[Inline]
	public static Vector3 Vector3Refract(Vector3 v, Vector3 n, float r)
	{
		return Vector3Refract_Impl(v, n, r);
	}
	[LinkName("Vector3Refract")]
	private static extern Vector3 Vector3Refract_Impl(in Vector3 v, in Vector3 n, float r);
	
	/// 
	[Inline]
	public static Vector4 Vector4Add(Vector4 v1, Vector4 v2)
	{
		return Vector4Add_Impl(v1, v2);
	}
	[LinkName("Vector4Add")]
	private static extern Vector4 Vector4Add_Impl(in Vector4 v1, in Vector4 v2);
	
	/// 
	[Inline]
	public static Vector4 Vector4AddValue(Vector4 v, float add)
	{
		return Vector4AddValue_Impl(v, add);
	}
	[LinkName("Vector4AddValue")]
	private static extern Vector4 Vector4AddValue_Impl(in Vector4 v, float add);
	
	/// 
	[Inline]
	public static Vector4 Vector4Subtract(Vector4 v1, Vector4 v2)
	{
		return Vector4Subtract_Impl(v1, v2);
	}
	[LinkName("Vector4Subtract")]
	private static extern Vector4 Vector4Subtract_Impl(in Vector4 v1, in Vector4 v2);
	
	/// 
	[Inline]
	public static Vector4 Vector4SubtractValue(Vector4 v, float add)
	{
		return Vector4SubtractValue_Impl(v, add);
	}
	[LinkName("Vector4SubtractValue")]
	private static extern Vector4 Vector4SubtractValue_Impl(in Vector4 v, float add);
	
	/// 
	[Inline]
	public static float Vector4Length(Vector4 v)
	{
		return Vector4Length_Impl(v);
	}
	[LinkName("Vector4Length")]
	private static extern float Vector4Length_Impl(in Vector4 v);
	
	/// 
	[Inline]
	public static float Vector4LengthSqr(Vector4 v)
	{
		return Vector4LengthSqr_Impl(v);
	}
	[LinkName("Vector4LengthSqr")]
	private static extern float Vector4LengthSqr_Impl(in Vector4 v);
	
	/// 
	[Inline]
	public static float Vector4DotProduct(Vector4 v1, Vector4 v2)
	{
		return Vector4DotProduct_Impl(v1, v2);
	}
	[LinkName("Vector4DotProduct")]
	private static extern float Vector4DotProduct_Impl(in Vector4 v1, in Vector4 v2);
	
	/// 
	[Inline]
	public static float Vector4Distance(Vector4 v1, Vector4 v2)
	{
		return Vector4Distance_Impl(v1, v2);
	}
	[LinkName("Vector4Distance")]
	private static extern float Vector4Distance_Impl(in Vector4 v1, in Vector4 v2);
	
	/// 
	[Inline]
	public static float Vector4DistanceSqr(Vector4 v1, Vector4 v2)
	{
		return Vector4DistanceSqr_Impl(v1, v2);
	}
	[LinkName("Vector4DistanceSqr")]
	private static extern float Vector4DistanceSqr_Impl(in Vector4 v1, in Vector4 v2);
	
	/// 
	[Inline]
	public static Vector4 Vector4Scale(Vector4 v, float scale)
	{
		return Vector4Scale_Impl(v, scale);
	}
	[LinkName("Vector4Scale")]
	private static extern Vector4 Vector4Scale_Impl(in Vector4 v, float scale);
	
	/// 
	[Inline]
	public static Vector4 Vector4Multiply(Vector4 v1, Vector4 v2)
	{
		return Vector4Multiply_Impl(v1, v2);
	}
	[LinkName("Vector4Multiply")]
	private static extern Vector4 Vector4Multiply_Impl(in Vector4 v1, in Vector4 v2);
	
	/// 
	[Inline]
	public static Vector4 Vector4Negate(Vector4 v)
	{
		return Vector4Negate_Impl(v);
	}
	[LinkName("Vector4Negate")]
	private static extern Vector4 Vector4Negate_Impl(in Vector4 v);
	
	/// 
	[Inline]
	public static Vector4 Vector4Divide(Vector4 v1, Vector4 v2)
	{
		return Vector4Divide_Impl(v1, v2);
	}
	[LinkName("Vector4Divide")]
	private static extern Vector4 Vector4Divide_Impl(in Vector4 v1, in Vector4 v2);
	
	/// 
	[Inline]
	public static Vector4 Vector4Normalize(Vector4 v)
	{
		return Vector4Normalize_Impl(v);
	}
	[LinkName("Vector4Normalize")]
	private static extern Vector4 Vector4Normalize_Impl(in Vector4 v);
	
	/// 
	[Inline]
	public static Vector4 Vector4Min(Vector4 v1, Vector4 v2)
	{
		return Vector4Min_Impl(v1, v2);
	}
	[LinkName("Vector4Min")]
	private static extern Vector4 Vector4Min_Impl(in Vector4 v1, in Vector4 v2);
	
	/// 
	[Inline]
	public static Vector4 Vector4Max(Vector4 v1, Vector4 v2)
	{
		return Vector4Max_Impl(v1, v2);
	}
	[LinkName("Vector4Max")]
	private static extern Vector4 Vector4Max_Impl(in Vector4 v1, in Vector4 v2);
	
	/// 
	[Inline]
	public static Vector4 Vector4Lerp(Vector4 v1, Vector4 v2, float amount)
	{
		return Vector4Lerp_Impl(v1, v2, amount);
	}
	[LinkName("Vector4Lerp")]
	private static extern Vector4 Vector4Lerp_Impl(in Vector4 v1, in Vector4 v2, float amount);
	
	/// 
	[Inline]
	public static Vector4 Vector4MoveTowards(Vector4 v, Vector4 target, float maxDistance)
	{
		return Vector4MoveTowards_Impl(v, target, maxDistance);
	}
	[LinkName("Vector4MoveTowards")]
	private static extern Vector4 Vector4MoveTowards_Impl(in Vector4 v, in Vector4 target, float maxDistance);
	
	/// 
	[Inline]
	public static Vector4 Vector4Invert(Vector4 v)
	{
		return Vector4Invert_Impl(v);
	}
	[LinkName("Vector4Invert")]
	private static extern Vector4 Vector4Invert_Impl(in Vector4 v);
	
	/// 
	[Inline]
	public static int32 Vector4Equals(Vector4 p, Vector4 q)
	{
		return Vector4Equals_Impl(p, q);
	}
	[LinkName("Vector4Equals")]
	private static extern int32 Vector4Equals_Impl(in Vector4 p, in Vector4 q);
	
	/// 
	[Inline]
	public static float MatrixDeterminant(Matrix mat)
	{
		return MatrixDeterminant_Impl(mat);
	}
	[LinkName("MatrixDeterminant")]
	private static extern float MatrixDeterminant_Impl(in Matrix mat);
	
	/// 
	[Inline]
	public static float MatrixTrace(Matrix mat)
	{
		return MatrixTrace_Impl(mat);
	}
	[LinkName("MatrixTrace")]
	private static extern float MatrixTrace_Impl(in Matrix mat);
	
	/// 
	[Inline]
	public static Matrix MatrixTranspose(Matrix mat)
	{
		return MatrixTranspose_Impl(mat);
	}
	[LinkName("MatrixTranspose")]
	private static extern Matrix MatrixTranspose_Impl(in Matrix mat);
	
	/// 
	[Inline]
	public static Matrix MatrixInvert(Matrix mat)
	{
		return MatrixInvert_Impl(mat);
	}
	[LinkName("MatrixInvert")]
	private static extern Matrix MatrixInvert_Impl(in Matrix mat);
	
	/// 
	[Inline]
	public static Matrix MatrixAdd(Matrix left, Matrix right)
	{
		return MatrixAdd_Impl(left, right);
	}
	[LinkName("MatrixAdd")]
	private static extern Matrix MatrixAdd_Impl(in Matrix left, in Matrix right);
	
	/// 
	[Inline]
	public static Matrix MatrixSubtract(Matrix left, Matrix right)
	{
		return MatrixSubtract_Impl(left, right);
	}
	[LinkName("MatrixSubtract")]
	private static extern Matrix MatrixSubtract_Impl(in Matrix left, in Matrix right);
	
	/// 
	[Inline]
	public static Matrix MatrixMultiply(Matrix left, Matrix right)
	{
		return MatrixMultiply_Impl(left, right);
	}
	[LinkName("MatrixMultiply")]
	private static extern Matrix MatrixMultiply_Impl(in Matrix left, in Matrix right);
	
	/// 
	[Inline]
	public static Matrix MatrixRotate(Vector3 axis, float angle)
	{
		return MatrixRotate_Impl(axis, angle);
	}
	[LinkName("MatrixRotate")]
	private static extern Matrix MatrixRotate_Impl(in Vector3 axis, float angle);
	
	/// 
	[Inline]
	public static Matrix MatrixRotateXYZ(Vector3 angle)
	{
		return MatrixRotateXYZ_Impl(angle);
	}
	[LinkName("MatrixRotateXYZ")]
	private static extern Matrix MatrixRotateXYZ_Impl(in Vector3 angle);
	
	/// 
	[Inline]
	public static Matrix MatrixRotateZYX(Vector3 angle)
	{
		return MatrixRotateZYX_Impl(angle);
	}
	[LinkName("MatrixRotateZYX")]
	private static extern Matrix MatrixRotateZYX_Impl(in Vector3 angle);
	
	/// 
	[Inline]
	public static Matrix MatrixLookAt(Vector3 eye, Vector3 target, Vector3 up)
	{
		return MatrixLookAt_Impl(eye, target, up);
	}
	[LinkName("MatrixLookAt")]
	private static extern Matrix MatrixLookAt_Impl(in Vector3 eye, in Vector3 target, in Vector3 up);
	
	/// 
	[Inline]
	public static float16 MatrixToFloatV(Matrix mat)
	{
		return MatrixToFloatV_Impl(mat);
	}
	[LinkName("MatrixToFloatV")]
	private static extern float16 MatrixToFloatV_Impl(in Matrix mat);
	
	/// 
	[Inline]
	public static Quaternion QuaternionAdd(Quaternion q1, Quaternion q2)
	{
		return QuaternionAdd_Impl(q1, q2);
	}
	[LinkName("QuaternionAdd")]
	private static extern Quaternion QuaternionAdd_Impl(in Quaternion q1, in Quaternion q2);
	
	/// 
	[Inline]
	public static Quaternion QuaternionAddValue(Quaternion q, float add)
	{
		return QuaternionAddValue_Impl(q, add);
	}
	[LinkName("QuaternionAddValue")]
	private static extern Quaternion QuaternionAddValue_Impl(in Quaternion q, float add);
	
	/// 
	[Inline]
	public static Quaternion QuaternionSubtract(Quaternion q1, Quaternion q2)
	{
		return QuaternionSubtract_Impl(q1, q2);
	}
	[LinkName("QuaternionSubtract")]
	private static extern Quaternion QuaternionSubtract_Impl(in Quaternion q1, in Quaternion q2);
	
	/// 
	[Inline]
	public static Quaternion QuaternionSubtractValue(Quaternion q, float sub)
	{
		return QuaternionSubtractValue_Impl(q, sub);
	}
	[LinkName("QuaternionSubtractValue")]
	private static extern Quaternion QuaternionSubtractValue_Impl(in Quaternion q, float sub);
	
	/// 
	[Inline]
	public static float QuaternionLength(Quaternion q)
	{
		return QuaternionLength_Impl(q);
	}
	[LinkName("QuaternionLength")]
	private static extern float QuaternionLength_Impl(in Quaternion q);
	
	/// 
	[Inline]
	public static Quaternion QuaternionNormalize(Quaternion q)
	{
		return QuaternionNormalize_Impl(q);
	}
	[LinkName("QuaternionNormalize")]
	private static extern Quaternion QuaternionNormalize_Impl(in Quaternion q);
	
	/// 
	[Inline]
	public static Quaternion QuaternionInvert(Quaternion q)
	{
		return QuaternionInvert_Impl(q);
	}
	[LinkName("QuaternionInvert")]
	private static extern Quaternion QuaternionInvert_Impl(in Quaternion q);
	
	/// 
	[Inline]
	public static Quaternion QuaternionMultiply(Quaternion q1, Quaternion q2)
	{
		return QuaternionMultiply_Impl(q1, q2);
	}
	[LinkName("QuaternionMultiply")]
	private static extern Quaternion QuaternionMultiply_Impl(in Quaternion q1, in Quaternion q2);
	
	/// 
	[Inline]
	public static Quaternion QuaternionScale(Quaternion q, float mul)
	{
		return QuaternionScale_Impl(q, mul);
	}
	[LinkName("QuaternionScale")]
	private static extern Quaternion QuaternionScale_Impl(in Quaternion q, float mul);
	
	/// 
	[Inline]
	public static Quaternion QuaternionDivide(Quaternion q1, Quaternion q2)
	{
		return QuaternionDivide_Impl(q1, q2);
	}
	[LinkName("QuaternionDivide")]
	private static extern Quaternion QuaternionDivide_Impl(in Quaternion q1, in Quaternion q2);
	
	/// 
	[Inline]
	public static Quaternion QuaternionLerp(Quaternion q1, Quaternion q2, float amount)
	{
		return QuaternionLerp_Impl(q1, q2, amount);
	}
	[LinkName("QuaternionLerp")]
	private static extern Quaternion QuaternionLerp_Impl(in Quaternion q1, in Quaternion q2, float amount);
	
	/// 
	[Inline]
	public static Quaternion QuaternionNlerp(Quaternion q1, Quaternion q2, float amount)
	{
		return QuaternionNlerp_Impl(q1, q2, amount);
	}
	[LinkName("QuaternionNlerp")]
	private static extern Quaternion QuaternionNlerp_Impl(in Quaternion q1, in Quaternion q2, float amount);
	
	/// 
	[Inline]
	public static Quaternion QuaternionSlerp(Quaternion q1, Quaternion q2, float amount)
	{
		return QuaternionSlerp_Impl(q1, q2, amount);
	}
	[LinkName("QuaternionSlerp")]
	private static extern Quaternion QuaternionSlerp_Impl(in Quaternion q1, in Quaternion q2, float amount);
	
	/// 
	[Inline]
	public static Quaternion QuaternionCubicHermiteSpline(Quaternion q1, Quaternion outTangent1, Quaternion q2, Quaternion inTangent2, float t)
	{
		return QuaternionCubicHermiteSpline_Impl(q1, outTangent1, q2, inTangent2, t);
	}
	[LinkName("QuaternionCubicHermiteSpline")]
	private static extern Quaternion QuaternionCubicHermiteSpline_Impl(in Quaternion q1, in Quaternion outTangent1, in Quaternion q2, in Quaternion inTangent2, float t);
	
	/// 
	[Inline]
	public static Quaternion QuaternionFromVector3ToVector3(Vector3 from, Vector3 to)
	{
		return QuaternionFromVector3ToVector3_Impl(from, to);
	}
	[LinkName("QuaternionFromVector3ToVector3")]
	private static extern Quaternion QuaternionFromVector3ToVector3_Impl(in Vector3 from, in Vector3 to);
	
	/// 
	[Inline]
	public static Quaternion QuaternionFromMatrix(Matrix mat)
	{
		return QuaternionFromMatrix_Impl(mat);
	}
	[LinkName("QuaternionFromMatrix")]
	private static extern Quaternion QuaternionFromMatrix_Impl(in Matrix mat);
	
	/// 
	[Inline]
	public static Matrix QuaternionToMatrix(Quaternion q)
	{
		return QuaternionToMatrix_Impl(q);
	}
	[LinkName("QuaternionToMatrix")]
	private static extern Matrix QuaternionToMatrix_Impl(in Quaternion q);
	
	/// 
	[Inline]
	public static Quaternion QuaternionFromAxisAngle(Vector3 axis, float angle)
	{
		return QuaternionFromAxisAngle_Impl(axis, angle);
	}
	[LinkName("QuaternionFromAxisAngle")]
	private static extern Quaternion QuaternionFromAxisAngle_Impl(in Vector3 axis, float angle);
	
	/// 
	[Inline]
	public static void QuaternionToAxisAngle(Quaternion q, Vector3 *outAxis, float *outAngle)
	{
		QuaternionToAxisAngle_Impl(q, outAxis, outAngle);
	}
	[LinkName("QuaternionToAxisAngle")]
	private static extern void QuaternionToAxisAngle_Impl(in Quaternion q, Vector3 *outAxis, float *outAngle);
	
	/// 
	[Inline]
	public static Vector3 QuaternionToEuler(Quaternion q)
	{
		return QuaternionToEuler_Impl(q);
	}
	[LinkName("QuaternionToEuler")]
	private static extern Vector3 QuaternionToEuler_Impl(in Quaternion q);
	
	/// 
	[Inline]
	public static Quaternion QuaternionTransform(Quaternion q, Matrix mat)
	{
		return QuaternionTransform_Impl(q, mat);
	}
	[LinkName("QuaternionTransform")]
	private static extern Quaternion QuaternionTransform_Impl(in Quaternion q, in Matrix mat);
	
	/// 
	[Inline]
	public static int32 QuaternionEquals(Quaternion p, Quaternion q)
	{
		return QuaternionEquals_Impl(p, q);
	}
	[LinkName("QuaternionEquals")]
	private static extern int32 QuaternionEquals_Impl(in Quaternion p, in Quaternion q);
	
	/// 
	[Inline]
	public static void MatrixDecompose(Matrix mat, Vector3 *translation, Quaternion *rotation, Vector3 *scale)
	{
		MatrixDecompose_Impl(mat, translation, rotation, scale);
	}
	[LinkName("MatrixDecompose")]
	private static extern void MatrixDecompose_Impl(in Matrix mat, Vector3 *translation, Quaternion *rotation, Vector3 *scale);
	
#endif
	
}
