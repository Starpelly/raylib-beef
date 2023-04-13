using System;
using System.Interop;

namespace RaylibBeef;

/// Face culling mode
public enum rlCullMode : c_int
{
    /// 
    RL_CULL_FACE_FRONT = 0,
    /// 
    RL_CULL_FACE_BACK = 1,
}
