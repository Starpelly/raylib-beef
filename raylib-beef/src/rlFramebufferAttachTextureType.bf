using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Framebuffer texture attachment type
public enum rlFramebufferAttachTextureType : c_int
{
	/// Framebuffer texture attachment type: cubemap, +X side
	case RL_ATTACHMENT_CUBEMAP_POSITIVE_X = 0;
	/// Framebuffer texture attachment type: cubemap, -X side
	case RL_ATTACHMENT_CUBEMAP_NEGATIVE_X = 1;
	/// Framebuffer texture attachment type: cubemap, +Y side
	case RL_ATTACHMENT_CUBEMAP_POSITIVE_Y = 2;
	/// Framebuffer texture attachment type: cubemap, -Y side
	case RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y = 3;
	/// Framebuffer texture attachment type: cubemap, +Z side
	case RL_ATTACHMENT_CUBEMAP_POSITIVE_Z = 4;
	/// Framebuffer texture attachment type: cubemap, -Z side
	case RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z = 5;
	/// Framebuffer texture attachment type: texture2d
	case RL_ATTACHMENT_TEXTURE2D = 100;
	/// Framebuffer texture attachment type: renderbuffer
	case RL_ATTACHMENT_RENDERBUFFER = 200;
	
	public static operator int32 (rlFramebufferAttachTextureType self) => (int32)self;
}
