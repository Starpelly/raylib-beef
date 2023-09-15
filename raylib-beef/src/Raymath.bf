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
	public static extern int FloatEquals(float x, float y);
	
	/// 
	[CLink]
	public static extern Vector2 Vector2Zero();
	
	/// 
	[CLink]
	public static extern Vector2 Vector2One();
	
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
	public static extern int Vector2Equals(Vector2 p, Vector2 q);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Zero();
	
	/// 
	[CLink]
	public static extern Vector3 Vector3One();
	
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
	public static extern float Vector3Length(Vector3 v);
	
	/// 
	[CLink]
	public static extern float Vector3LengthSqr(Vector3 v);
	
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
	public static extern void Vector3OrthoNormalize(Vector3 * v1, Vector3 * v2);
	
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
	public static extern Vector3 Vector3Lerp(Vector3 v1, Vector3 v2, float amount);
	
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
	public static extern int Vector3Equals(Vector3 p, Vector3 q);
	
	/// 
	[CLink]
	public static extern Vector3 Vector3Refract(Vector3 v, Vector3 n, float r);
	
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
	public static extern Matrix MatrixIdentity();
	
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
	public static extern Matrix MatrixTranslate(float x, float y, float z);
	
	/// 
	[CLink]
	public static extern Matrix MatrixRotate(Vector3 axis, float angle);
	
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
	public static extern Matrix MatrixRotateXYZ(Vector3 angle);
	
	/// 
	[CLink]
	public static extern Matrix MatrixRotateZYX(Vector3 angle);
	
	/// 
	[CLink]
	public static extern Matrix MatrixScale(float x, float y, float z);
	
	/// 
	[CLink]
	public static extern Matrix MatrixFrustum(double left, double right, double bottom, double top, double near, double far);
	
	/// 
	[CLink]
	public static extern Matrix MatrixPerspective(double fovy, double aspect, double near, double far);
	
	/// 
	[CLink]
	public static extern Matrix MatrixOrtho(double left, double right, double bottom, double top, double near, double far);
	
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
	public static extern Quaternion QuaternionIdentity();
	
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
	public static extern void QuaternionToAxisAngle(Quaternion q, Vector3 * outAxis, float * outAngle);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionFromEuler(float pitch, float yaw, float roll);
	
	/// 
	[CLink]
	public static extern Vector3 QuaternionToEuler(Quaternion q);
	
	/// 
	[CLink]
	public static extern Quaternion QuaternionTransform(Quaternion q, Matrix mat);
	
	/// 
	[CLink]
	public static extern int QuaternionEquals(Quaternion p, Quaternion q);
	
	
}
