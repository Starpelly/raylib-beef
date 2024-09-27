using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Face culling mode
public enum rlCullMode : c_int
{
	/// 
	case RL_CULL_FACE_FRONT = 0;
	/// 
	case RL_CULL_FACE_BACK = 1;
	
	public static operator int32 (rlCullMode self) => (int32)self;
}
