using System;
using System.Interop;

namespace Raylib;

/// Framebuffer attachment type
public enum rlFramebufferAttachType : c_int
{
    /// Framebuffer attachment type: color 0
    RL_ATTACHMENT_COLOR_CHANNEL0 = 0,
    /// Framebuffer attachment type: color 1
    RL_ATTACHMENT_COLOR_CHANNEL1 = 1,
    /// Framebuffer attachment type: color 2
    RL_ATTACHMENT_COLOR_CHANNEL2 = 2,
    /// Framebuffer attachment type: color 3
    RL_ATTACHMENT_COLOR_CHANNEL3 = 3,
    /// Framebuffer attachment type: color 4
    RL_ATTACHMENT_COLOR_CHANNEL4 = 4,
    /// Framebuffer attachment type: color 5
    RL_ATTACHMENT_COLOR_CHANNEL5 = 5,
    /// Framebuffer attachment type: color 6
    RL_ATTACHMENT_COLOR_CHANNEL6 = 6,
    /// Framebuffer attachment type: color 7
    RL_ATTACHMENT_COLOR_CHANNEL7 = 7,
    /// Framebuffer attachment type: depth
    RL_ATTACHMENT_DEPTH = 100,
    /// Framebuffer attachment type: stencil
    RL_ATTACHMENT_STENCIL = 200,
}
