using System;
using System.Interop;

namespace RaylibBeef;

/// Framebuffer texture attachment type
public enum rlFramebufferAttachTextureType : c_int
{
    /// Framebuffer texture attachment type: cubemap, +X side
    RL_ATTACHMENT_CUBEMAP_POSITIVE_X = 0,
    /// Framebuffer texture attachment type: cubemap, -X side
    RL_ATTACHMENT_CUBEMAP_NEGATIVE_X = 1,
    /// Framebuffer texture attachment type: cubemap, +Y side
    RL_ATTACHMENT_CUBEMAP_POSITIVE_Y = 2,
    /// Framebuffer texture attachment type: cubemap, -Y side
    RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y = 3,
    /// Framebuffer texture attachment type: cubemap, +Z side
    RL_ATTACHMENT_CUBEMAP_POSITIVE_Z = 4,
    /// Framebuffer texture attachment type: cubemap, -Z side
    RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z = 5,
    /// Framebuffer texture attachment type: texture2d
    RL_ATTACHMENT_TEXTURE2D = 100,
    /// Framebuffer texture attachment type: renderbuffer
    RL_ATTACHMENT_RENDERBUFFER = 200,
}
