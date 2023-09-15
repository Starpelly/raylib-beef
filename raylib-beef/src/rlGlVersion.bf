using System;
using System.Interop;

namespace RaylibBeef;

/// OpenGL version
public enum rlGlVersion : c_int
{
	/// OpenGL 1.1
	RL_OPENGL_11 = 1,
	/// OpenGL 2.1 (GLSL 120)
	RL_OPENGL_21 = 2,
	/// OpenGL 3.3 (GLSL 330)
	RL_OPENGL_33 = 3,
	/// OpenGL 4.3 (using GLSL 330)
	RL_OPENGL_43 = 4,
	/// OpenGL ES 2.0 (GLSL 100)
	RL_OPENGL_ES_20 = 5,
}
