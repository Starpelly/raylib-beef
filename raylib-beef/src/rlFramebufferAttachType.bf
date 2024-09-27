using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Framebuffer attachment type
public enum rlFramebufferAttachType : c_int
{
	/// Framebuffer attachment type: color 0
	case RL_ATTACHMENT_COLOR_CHANNEL0 = 0;
	/// Framebuffer attachment type: color 1
	case RL_ATTACHMENT_COLOR_CHANNEL1 = 1;
	/// Framebuffer attachment type: color 2
	case RL_ATTACHMENT_COLOR_CHANNEL2 = 2;
	/// Framebuffer attachment type: color 3
	case RL_ATTACHMENT_COLOR_CHANNEL3 = 3;
	/// Framebuffer attachment type: color 4
	case RL_ATTACHMENT_COLOR_CHANNEL4 = 4;
	/// Framebuffer attachment type: color 5
	case RL_ATTACHMENT_COLOR_CHANNEL5 = 5;
	/// Framebuffer attachment type: color 6
	case RL_ATTACHMENT_COLOR_CHANNEL6 = 6;
	/// Framebuffer attachment type: color 7
	case RL_ATTACHMENT_COLOR_CHANNEL7 = 7;
	/// Framebuffer attachment type: depth
	case RL_ATTACHMENT_DEPTH = 100;
	/// Framebuffer attachment type: stencil
	case RL_ATTACHMENT_STENCIL = 200;
	
	public static operator int32 (rlFramebufferAttachType self) => (int32)self;
}
