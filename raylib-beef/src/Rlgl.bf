using System;
using System.Interop;

namespace RaylibBeef;

public static class Rlgl
{
    public const char8* RLGL_VERSION = "4.5";
    
    public const int RL_DEFAULT_BATCH_BUFFER_ELEMENTS = 8192;
    
    /// Default number of batch buffers (multi-buffering)
    public const int RL_DEFAULT_BATCH_BUFFERS = 1;
    
    /// Default number of batch draw calls (by state changes: mode, texture)
    public const int RL_DEFAULT_BATCH_DRAWCALLS = 256;
    
    /// Maximum number of textures units that can be activated on batch drawing (SetShaderValueTexture())
    public const int RL_DEFAULT_BATCH_MAX_TEXTURE_UNITS = 4;
    
    /// Maximum size of Matrix stack
    public const int RL_MAX_MATRIX_STACK_SIZE = 32;
    
    /// Maximum number of shader locations supported
    public const int RL_MAX_SHADER_LOCATIONS = 32;
    
    /// Default near cull distance
    public const double RL_CULL_DISTANCE_NEAR = 0.01;
    
    /// Default far cull distance
    public const double RL_CULL_DISTANCE_FAR = 1000;
    
    /// GL_TEXTURE_WRAP_S
    public const int RL_TEXTURE_WRAP_S = 10242;
    
    /// GL_TEXTURE_WRAP_T
    public const int RL_TEXTURE_WRAP_T = 10243;
    
    /// GL_TEXTURE_MAG_FILTER
    public const int RL_TEXTURE_MAG_FILTER = 10240;
    
    /// GL_TEXTURE_MIN_FILTER
    public const int RL_TEXTURE_MIN_FILTER = 10241;
    
    /// GL_NEAREST
    public const int RL_TEXTURE_FILTER_NEAREST = 9728;
    
    /// GL_LINEAR
    public const int RL_TEXTURE_FILTER_LINEAR = 9729;
    
    /// GL_NEAREST_MIPMAP_NEAREST
    public const int RL_TEXTURE_FILTER_MIP_NEAREST = 9984;
    
    /// GL_NEAREST_MIPMAP_LINEAR
    public const int RL_TEXTURE_FILTER_NEAREST_MIP_LINEAR = 9986;
    
    /// GL_LINEAR_MIPMAP_NEAREST
    public const int RL_TEXTURE_FILTER_LINEAR_MIP_NEAREST = 9985;
    
    /// GL_LINEAR_MIPMAP_LINEAR
    public const int RL_TEXTURE_FILTER_MIP_LINEAR = 9987;
    
    /// Anisotropic filter (custom identifier)
    public const int RL_TEXTURE_FILTER_ANISOTROPIC = 12288;
    
    /// Texture mipmap bias, percentage ratio (custom identifier)
    public const int RL_TEXTURE_MIPMAP_BIAS_RATIO = 16384;
    
    /// GL_REPEAT
    public const int RL_TEXTURE_WRAP_REPEAT = 10497;
    
    /// GL_CLAMP_TO_EDGE
    public const int RL_TEXTURE_WRAP_CLAMP = 33071;
    
    /// GL_MIRRORED_REPEAT
    public const int RL_TEXTURE_WRAP_MIRROR_REPEAT = 33648;
    
    /// GL_MIRROR_CLAMP_EXT
    public const int RL_TEXTURE_WRAP_MIRROR_CLAMP = 34626;
    
    /// GL_MODELVIEW
    public const int RL_MODELVIEW = 5888;
    
    /// GL_PROJECTION
    public const int RL_PROJECTION = 5889;
    
    /// GL_TEXTURE
    public const int RL_TEXTURE = 5890;
    
    /// GL_LINES
    public const int RL_LINES = 1;
    
    /// GL_TRIANGLES
    public const int RL_TRIANGLES = 4;
    
    /// GL_QUADS
    public const int RL_QUADS = 7;
    
    /// GL_UNSIGNED_BYTE
    public const int RL_UNSIGNED_BYTE = 5121;
    
    /// GL_FLOAT
    public const int RL_FLOAT = 5126;
    
    /// GL_STREAM_DRAW
    public const int RL_STREAM_DRAW = 35040;
    
    /// GL_STREAM_READ
    public const int RL_STREAM_READ = 35041;
    
    /// GL_STREAM_COPY
    public const int RL_STREAM_COPY = 35042;
    
    /// GL_STATIC_DRAW
    public const int RL_STATIC_DRAW = 35044;
    
    /// GL_STATIC_READ
    public const int RL_STATIC_READ = 35045;
    
    /// GL_STATIC_COPY
    public const int RL_STATIC_COPY = 35046;
    
    /// GL_DYNAMIC_DRAW
    public const int RL_DYNAMIC_DRAW = 35048;
    
    /// GL_DYNAMIC_READ
    public const int RL_DYNAMIC_READ = 35049;
    
    /// GL_DYNAMIC_COPY
    public const int RL_DYNAMIC_COPY = 35050;
    
    /// GL_FRAGMENT_SHADER
    public const int RL_FRAGMENT_SHADER = 35632;
    
    /// GL_VERTEX_SHADER
    public const int RL_VERTEX_SHADER = 35633;
    
    /// GL_COMPUTE_SHADER
    public const int RL_COMPUTE_SHADER = 37305;
    
    /// GL_ZERO
    public const int RL_ZERO = 0;
    
    /// GL_ONE
    public const int RL_ONE = 1;
    
    /// GL_SRC_COLOR
    public const int RL_SRC_COLOR = 768;
    
    /// GL_ONE_MINUS_SRC_COLOR
    public const int RL_ONE_MINUS_SRC_COLOR = 769;
    
    /// GL_SRC_ALPHA
    public const int RL_SRC_ALPHA = 770;
    
    /// GL_ONE_MINUS_SRC_ALPHA
    public const int RL_ONE_MINUS_SRC_ALPHA = 771;
    
    /// GL_DST_ALPHA
    public const int RL_DST_ALPHA = 772;
    
    /// GL_ONE_MINUS_DST_ALPHA
    public const int RL_ONE_MINUS_DST_ALPHA = 773;
    
    /// GL_DST_COLOR
    public const int RL_DST_COLOR = 774;
    
    /// GL_ONE_MINUS_DST_COLOR
    public const int RL_ONE_MINUS_DST_COLOR = 775;
    
    /// GL_SRC_ALPHA_SATURATE
    public const int RL_SRC_ALPHA_SATURATE = 776;
    
    /// GL_CONSTANT_COLOR
    public const int RL_CONSTANT_COLOR = 32769;
    
    /// GL_ONE_MINUS_CONSTANT_COLOR
    public const int RL_ONE_MINUS_CONSTANT_COLOR = 32770;
    
    /// GL_CONSTANT_ALPHA
    public const int RL_CONSTANT_ALPHA = 32771;
    
    /// GL_ONE_MINUS_CONSTANT_ALPHA
    public const int RL_ONE_MINUS_CONSTANT_ALPHA = 32772;
    
    /// GL_FUNC_ADD
    public const int RL_FUNC_ADD = 32774;
    
    /// GL_MIN
    public const int RL_MIN = 32775;
    
    /// GL_MAX
    public const int RL_MAX = 32776;
    
    /// GL_FUNC_SUBTRACT
    public const int RL_FUNC_SUBTRACT = 32778;
    
    /// GL_FUNC_REVERSE_SUBTRACT
    public const int RL_FUNC_REVERSE_SUBTRACT = 32779;
    
    /// GL_BLEND_EQUATION
    public const int RL_BLEND_EQUATION = 32777;
    
    /// GL_BLEND_EQUATION_RGB   // (Same as BLEND_EQUATION)
    public const int RL_BLEND_EQUATION_RGB = 32777;
    
    /// GL_BLEND_EQUATION_ALPHA
    public const int RL_BLEND_EQUATION_ALPHA = 34877;
    
    /// GL_BLEND_DST_RGB
    public const int RL_BLEND_DST_RGB = 32968;
    
    /// GL_BLEND_SRC_RGB
    public const int RL_BLEND_SRC_RGB = 32969;
    
    /// GL_BLEND_DST_ALPHA
    public const int RL_BLEND_DST_ALPHA = 32970;
    
    /// GL_BLEND_SRC_ALPHA
    public const int RL_BLEND_SRC_ALPHA = 32971;
    
    /// GL_BLEND_COLOR
    public const int RL_BLEND_COLOR = 32773;
    
    /// Choose the current matrix to be transformed
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlMatrixMode")]
    public static extern void rlMatrixMode(int32 mode);
    
    /// Push the current matrix to stack
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlPushMatrix")]
    public static extern void rlPushMatrix();
    
    /// Pop latest inserted matrix from stack
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlPopMatrix")]
    public static extern void rlPopMatrix();
    
    /// Reset current matrix to identity matrix
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadIdentity")]
    public static extern void rlLoadIdentity();
    
    /// Multiply the current matrix by a translation matrix
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlTranslatef")]
    public static extern void rlTranslatef(float x, float y, float z);
    
    /// Multiply the current matrix by a rotation matrix
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlRotatef")]
    public static extern void rlRotatef(float angle, float x, float y, float z);
    
    /// Multiply the current matrix by a scaling matrix
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlScalef")]
    public static extern void rlScalef(float x, float y, float z);
    
    /// Multiply the current matrix by another matrix
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlMultMatrixf")]
    public static extern void rlMultMatrixf(float * matf);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlFrustum")]
    public static extern void rlFrustum(double left, double right, double bottom, double top, double znear, double zfar);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlOrtho")]
    public static extern void rlOrtho(double left, double right, double bottom, double top, double znear, double zfar);
    
    /// Set the viewport area
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlViewport")]
    public static extern void rlViewport(int32 x, int32 y, int32 width, int32 height);
    
    /// Initialize drawing mode (how to organize vertex)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlBegin")]
    public static extern void rlBegin(int32 mode);
    
    /// Finish vertex providing
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnd")]
    public static extern void rlEnd();
    
    /// Define one vertex (position) - 2 int
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlVertex2i")]
    public static extern void rlVertex2i(int32 x, int32 y);
    
    /// Define one vertex (position) - 2 float
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlVertex2f")]
    public static extern void rlVertex2f(float x, float y);
    
    /// Define one vertex (position) - 3 float
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlVertex3f")]
    public static extern void rlVertex3f(float x, float y, float z);
    
    /// Define one vertex (texture coordinate) - 2 float
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlTexCoord2f")]
    public static extern void rlTexCoord2f(float x, float y);
    
    /// Define one vertex (normal) - 3 float
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlNormal3f")]
    public static extern void rlNormal3f(float x, float y, float z);
    
    /// Define one vertex (color) - 4 byte
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlColor4ub")]
    public static extern void rlColor4ub(uint8 r, uint8 g, uint8 b, uint8 a);
    
    /// Define one vertex (color) - 3 float
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlColor3f")]
    public static extern void rlColor3f(float x, float y, float z);
    
    /// Define one vertex (color) - 4 float
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlColor4f")]
    public static extern void rlColor4f(float x, float y, float z, float w);
    
    /// Enable vertex array (VAO, if supported)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableVertexArray")]
    public static extern bool rlEnableVertexArray(int32 vaoId);
    
    /// Disable vertex array (VAO, if supported)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableVertexArray")]
    public static extern void rlDisableVertexArray();
    
    /// Enable vertex buffer (VBO)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableVertexBuffer")]
    public static extern void rlEnableVertexBuffer(int32 id);
    
    /// Disable vertex buffer (VBO)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableVertexBuffer")]
    public static extern void rlDisableVertexBuffer();
    
    /// Enable vertex buffer element (VBO element)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableVertexBufferElement")]
    public static extern void rlEnableVertexBufferElement(int32 id);
    
    /// Disable vertex buffer element (VBO element)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableVertexBufferElement")]
    public static extern void rlDisableVertexBufferElement();
    
    /// Enable vertex attribute index
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableVertexAttribute")]
    public static extern void rlEnableVertexAttribute(int32 index);
    
    /// Disable vertex attribute index
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableVertexAttribute")]
    public static extern void rlDisableVertexAttribute(int32 index);
    
    /// Enable attribute state pointer
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableStatePointer")]
    public static extern void rlEnableStatePointer(int32 vertexAttribType, void * buffer);
    
    /// Disable attribute state pointer
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableStatePointer")]
    public static extern void rlDisableStatePointer(int32 vertexAttribType);
    
    /// Select and active a texture slot
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlActiveTextureSlot")]
    public static extern void rlActiveTextureSlot(int32 slot);
    
    /// Enable texture
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableTexture")]
    public static extern void rlEnableTexture(int32 id);
    
    /// Disable texture
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableTexture")]
    public static extern void rlDisableTexture();
    
    /// Enable texture cubemap
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableTextureCubemap")]
    public static extern void rlEnableTextureCubemap(int32 id);
    
    /// Disable texture cubemap
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableTextureCubemap")]
    public static extern void rlDisableTextureCubemap();
    
    /// Set texture parameters (filter, wrap)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlTextureParameters")]
    public static extern void rlTextureParameters(int32 id, int32 param, int32 value);
    
    /// Set cubemap parameters (filter, wrap)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlCubemapParameters")]
    public static extern void rlCubemapParameters(int32 id, int32 param, int32 value);
    
    /// Enable shader program
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableShader")]
    public static extern void rlEnableShader(int32 id);
    
    /// Disable shader program
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableShader")]
    public static extern void rlDisableShader();
    
    /// Enable render texture (fbo)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableFramebuffer")]
    public static extern void rlEnableFramebuffer(int32 id);
    
    /// Disable render texture (fbo), return to default framebuffer
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableFramebuffer")]
    public static extern void rlDisableFramebuffer();
    
    /// Activate multiple draw color buffers
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlActiveDrawBuffers")]
    public static extern void rlActiveDrawBuffers(int32 count);
    
    /// Enable color blending
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableColorBlend")]
    public static extern void rlEnableColorBlend();
    
    /// Disable color blending
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableColorBlend")]
    public static extern void rlDisableColorBlend();
    
    /// Enable depth test
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableDepthTest")]
    public static extern void rlEnableDepthTest();
    
    /// Disable depth test
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableDepthTest")]
    public static extern void rlDisableDepthTest();
    
    /// Enable depth write
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableDepthMask")]
    public static extern void rlEnableDepthMask();
    
    /// Disable depth write
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableDepthMask")]
    public static extern void rlDisableDepthMask();
    
    /// Enable backface culling
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableBackfaceCulling")]
    public static extern void rlEnableBackfaceCulling();
    
    /// Disable backface culling
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableBackfaceCulling")]
    public static extern void rlDisableBackfaceCulling();
    
    /// Set face culling mode
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetCullFace")]
    public static extern void rlSetCullFace(int32 mode);
    
    /// Enable scissor test
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableScissorTest")]
    public static extern void rlEnableScissorTest();
    
    /// Disable scissor test
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableScissorTest")]
    public static extern void rlDisableScissorTest();
    
    /// Scissor test
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlScissor")]
    public static extern void rlScissor(int32 x, int32 y, int32 width, int32 height);
    
    /// Enable wire mode
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableWireMode")]
    public static extern void rlEnableWireMode();
    
    /// Disable wire mode
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableWireMode")]
    public static extern void rlDisableWireMode();
    
    /// Set the line drawing width
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetLineWidth")]
    public static extern void rlSetLineWidth(float width);
    
    /// Get the line drawing width
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetLineWidth")]
    public static extern float rlGetLineWidth();
    
    /// Enable line aliasing
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableSmoothLines")]
    public static extern void rlEnableSmoothLines();
    
    /// Disable line aliasing
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableSmoothLines")]
    public static extern void rlDisableSmoothLines();
    
    /// Enable stereo rendering
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlEnableStereoRender")]
    public static extern void rlEnableStereoRender();
    
    /// Disable stereo rendering
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDisableStereoRender")]
    public static extern void rlDisableStereoRender();
    
    /// Check if stereo render is enabled
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlIsStereoRenderEnabled")]
    public static extern bool rlIsStereoRenderEnabled();
    
    /// Clear color buffer with color
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlClearColor")]
    public static extern void rlClearColor(uint8 r, uint8 g, uint8 b, uint8 a);
    
    /// Clear used screen buffers (color and depth)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlClearScreenBuffers")]
    public static extern void rlClearScreenBuffers();
    
    /// Check and log OpenGL error codes
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlCheckErrors")]
    public static extern void rlCheckErrors();
    
    /// Set blending mode
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetBlendMode")]
    public static extern void rlSetBlendMode(int32 mode);
    
    /// Set blending mode factor and equation (using OpenGL factors)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetBlendFactors")]
    public static extern void rlSetBlendFactors(int32 glSrcFactor, int32 glDstFactor, int32 glEquation);
    
    /// Set blending mode factors and equations separately (using OpenGL factors)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetBlendFactorsSeparate")]
    public static extern void rlSetBlendFactorsSeparate(int32 glSrcRGB, int32 glDstRGB, int32 glSrcAlpha, int32 glDstAlpha, int32 glEqRGB, int32 glEqAlpha);
    
    /// Initialize rlgl (buffers, shaders, textures, states)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlglInit")]
    public static extern void rlglInit(int32 width, int32 height);
    
    /// De-initialize rlgl (buffers, shaders, textures)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlglClose")]
    public static extern void rlglClose();
    
    /// Load OpenGL extensions (loader function required)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadExtensions")]
    public static extern void rlLoadExtensions(void * loader);
    
    /// Get current OpenGL version
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetVersion")]
    public static extern int32 rlGetVersion();
    
    /// Set current framebuffer width
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetFramebufferWidth")]
    public static extern void rlSetFramebufferWidth(int32 width);
    
    /// Get default framebuffer width
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetFramebufferWidth")]
    public static extern int32 rlGetFramebufferWidth();
    
    /// Set current framebuffer height
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetFramebufferHeight")]
    public static extern void rlSetFramebufferHeight(int32 height);
    
    /// Get default framebuffer height
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetFramebufferHeight")]
    public static extern int32 rlGetFramebufferHeight();
    
    /// Get default texture id
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetTextureIdDefault")]
    public static extern int32 rlGetTextureIdDefault();
    
    /// Get default shader id
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetShaderIdDefault")]
    public static extern int32 rlGetShaderIdDefault();
    
    /// Get default shader locations
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetShaderLocsDefault")]
    public static extern int32 * rlGetShaderLocsDefault();
    
    /// Load a render batch system
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadRenderBatch")]
    public static extern rlRenderBatch rlLoadRenderBatch(int32 numBuffers, int32 bufferElements);
    
    /// Unload render batch system
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlUnloadRenderBatch")]
    public static extern void rlUnloadRenderBatch(rlRenderBatch batch);
    
    /// Draw render batch data (Update->Draw->Reset)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDrawRenderBatch")]
    public static extern void rlDrawRenderBatch(rlRenderBatch * batch);
    
    /// Set the active render batch for rlgl (NULL for default internal)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetRenderBatchActive")]
    public static extern void rlSetRenderBatchActive(rlRenderBatch * batch);
    
    /// Update and draw internal render batch
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDrawRenderBatchActive")]
    public static extern void rlDrawRenderBatchActive();
    
    /// Check internal buffer overflow for a given number of vertex
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlCheckRenderBatchLimit")]
    public static extern bool rlCheckRenderBatchLimit(int32 vCount);
    
    /// Set current texture for render batch and check buffers limits
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetTexture")]
    public static extern void rlSetTexture(int32 id);
    
    /// Load vertex array (vao) if supported
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadVertexArray")]
    public static extern int32 rlLoadVertexArray();
    
    /// Load a vertex buffer attribute
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadVertexBuffer")]
    public static extern int32 rlLoadVertexBuffer(void * buffer, int32 size, bool dynamic);
    
    /// Load a new attributes element buffer
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadVertexBufferElement")]
    public static extern int32 rlLoadVertexBufferElement(void * buffer, int32 size, bool dynamic);
    
    /// Update GPU buffer with new data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlUpdateVertexBuffer")]
    public static extern void rlUpdateVertexBuffer(int32 bufferId, void * data, int32 dataSize, int32 offset);
    
    /// Update vertex buffer elements with new data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlUpdateVertexBufferElements")]
    public static extern void rlUpdateVertexBufferElements(int32 id, void * data, int32 dataSize, int32 offset);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlUnloadVertexArray")]
    public static extern void rlUnloadVertexArray(int32 vaoId);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlUnloadVertexBuffer")]
    public static extern void rlUnloadVertexBuffer(int32 vboId);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetVertexAttribute")]
    public static extern void rlSetVertexAttribute(int32 index, int32 compSize, int32 type, bool normalized, int32 stride, void * pointer);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetVertexAttributeDivisor")]
    public static extern void rlSetVertexAttributeDivisor(int32 index, int32 divisor);
    
    /// Set vertex attribute default value
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetVertexAttributeDefault")]
    public static extern void rlSetVertexAttributeDefault(int32 locIndex, void * value, int32 attribType, int32 count);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDrawVertexArray")]
    public static extern void rlDrawVertexArray(int32 offset, int32 count);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDrawVertexArrayElements")]
    public static extern void rlDrawVertexArrayElements(int32 offset, int32 count, void * buffer);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDrawVertexArrayInstanced")]
    public static extern void rlDrawVertexArrayInstanced(int32 offset, int32 count, int32 instances);
    
    /// 
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlDrawVertexArrayElementsInstanced")]
    public static extern void rlDrawVertexArrayElementsInstanced(int32 offset, int32 count, void * buffer, int32 instances);
    
    /// Load texture in GPU
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadTexture")]
    public static extern int32 rlLoadTexture(void * data, int32 width, int32 height, int32 format, int32 mipmapCount);
    
    /// Load depth texture/renderbuffer (to be attached to fbo)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadTextureDepth")]
    public static extern int32 rlLoadTextureDepth(int32 width, int32 height, bool useRenderBuffer);
    
    /// Load texture cubemap
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadTextureCubemap")]
    public static extern int32 rlLoadTextureCubemap(void * data, int32 size, int32 format);
    
    /// Update GPU texture with new data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlUpdateTexture")]
    public static extern void rlUpdateTexture(int32 id, int32 offsetX, int32 offsetY, int32 width, int32 height, int32 format, void * data);
    
    /// Get OpenGL internal formats
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetGlTextureFormats")]
    public static extern void rlGetGlTextureFormats(int32 format, int32 * glInternalFormat, int32 * glFormat, int32 * glType);
    
    /// Get name string for pixel format
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetPixelFormatName")]
    public static extern char8 * rlGetPixelFormatName(int32 format);
    
    /// Unload texture from GPU memory
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlUnloadTexture")]
    public static extern void rlUnloadTexture(int32 id);
    
    /// Generate mipmap data for selected texture
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGenTextureMipmaps")]
    public static extern void rlGenTextureMipmaps(int32 id, int32 width, int32 height, int32 format, int32 * mipmaps);
    
    /// Read texture pixel data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlReadTexturePixels")]
    public static extern void * rlReadTexturePixels(int32 id, int32 width, int32 height, int32 format);
    
    /// Read screen pixel data (color buffer)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlReadScreenPixels")]
    public static extern char8 * rlReadScreenPixels(int32 width, int32 height);
    
    /// Load an empty framebuffer
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadFramebuffer")]
    public static extern int32 rlLoadFramebuffer(int32 width, int32 height);
    
    /// Attach texture/renderbuffer to a framebuffer
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlFramebufferAttach")]
    public static extern void rlFramebufferAttach(int32 fboId, int32 texId, int32 attachType, int32 texType, int32 mipLevel);
    
    /// Verify framebuffer is complete
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlFramebufferComplete")]
    public static extern bool rlFramebufferComplete(int32 id);
    
    /// Delete framebuffer from GPU
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlUnloadFramebuffer")]
    public static extern void rlUnloadFramebuffer(int32 id);
    
    /// Load shader from code strings
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadShaderCode")]
    public static extern int32 rlLoadShaderCode(char8 * vsCode, char8 * fsCode);
    
    /// Compile custom shader and return shader id (type: RL_VERTEX_SHADER, RL_FRAGMENT_SHADER, RL_COMPUTE_SHADER)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlCompileShader")]
    public static extern int32 rlCompileShader(char8 * shaderCode, int32 type);
    
    /// Load custom shader program
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadShaderProgram")]
    public static extern int32 rlLoadShaderProgram(int32 vShaderId, int32 fShaderId);
    
    /// Unload shader program
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlUnloadShaderProgram")]
    public static extern void rlUnloadShaderProgram(int32 id);
    
    /// Get shader location uniform
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetLocationUniform")]
    public static extern int32 rlGetLocationUniform(int32 shaderId, char8 * uniformName);
    
    /// Get shader location attribute
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetLocationAttrib")]
    public static extern int32 rlGetLocationAttrib(int32 shaderId, char8 * attribName);
    
    /// Set shader value uniform
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetUniform")]
    public static extern void rlSetUniform(int32 locIndex, void * value, int32 uniformType, int32 count);
    
    /// Set shader value matrix
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetUniformMatrix")]
    public static extern void rlSetUniformMatrix(int32 locIndex, Matrix mat);
    
    /// Set shader value sampler
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetUniformSampler")]
    public static extern void rlSetUniformSampler(int32 locIndex, int32 textureId);
    
    /// Set shader currently active (id and locations)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetShader")]
    public static extern void rlSetShader(int32 id, int32 * locs);
    
    /// Load compute shader program
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadComputeShaderProgram")]
    public static extern int32 rlLoadComputeShaderProgram(int32 shaderId);
    
    /// Dispatch compute shader (equivalent to *draw* for graphics pipeline)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlComputeShaderDispatch")]
    public static extern void rlComputeShaderDispatch(int32 groupX, int32 groupY, int32 groupZ);
    
    /// Load shader storage buffer object (SSBO)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadShaderBuffer")]
    public static extern int32 rlLoadShaderBuffer(int32 size, void * data, int32 usageHint);
    
    /// Unload shader storage buffer object (SSBO)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlUnloadShaderBuffer")]
    public static extern void rlUnloadShaderBuffer(int32 ssboId);
    
    /// Update SSBO buffer data
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlUpdateShaderBuffer")]
    public static extern void rlUpdateShaderBuffer(int32 id, void * data, int32 dataSize, int32 offset);
    
    /// Bind SSBO buffer
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlBindShaderBuffer")]
    public static extern void rlBindShaderBuffer(int32 id, int32 index);
    
    /// Read SSBO buffer data (GPU->CPU)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlReadShaderBuffer")]
    public static extern void rlReadShaderBuffer(int32 id, void * dest, int32 count, int32 offset);
    
    /// Copy SSBO data between buffers
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlCopyShaderBuffer")]
    public static extern void rlCopyShaderBuffer(int32 destId, int32 srcId, int32 destOffset, int32 srcOffset, int32 count);
    
    /// Get SSBO buffer size
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetShaderBufferSize")]
    public static extern int32 rlGetShaderBufferSize(int32 id);
    
    /// Bind image texture
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlBindImageTexture")]
    public static extern void rlBindImageTexture(int32 id, int32 index, int32 format, bool @readonly);
    
    /// Get internal modelview matrix
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetMatrixModelview")]
    public static extern Matrix rlGetMatrixModelview();
    
    /// Get internal projection matrix
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetMatrixProjection")]
    public static extern Matrix rlGetMatrixProjection();
    
    /// Get internal accumulated transform matrix
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetMatrixTransform")]
    public static extern Matrix rlGetMatrixTransform();
    
    /// Get internal projection matrix for stereo render (selected eye)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetMatrixProjectionStereo")]
    public static extern Matrix rlGetMatrixProjectionStereo(int32 eye);
    
    /// Get internal view offset matrix for stereo render (selected eye)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlGetMatrixViewOffsetStereo")]
    public static extern Matrix rlGetMatrixViewOffsetStereo(int32 eye);
    
    /// Set a custom projection matrix (replaces internal projection matrix)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetMatrixProjection")]
    public static extern void rlSetMatrixProjection(Matrix proj);
    
    /// Set a custom modelview matrix (replaces internal modelview matrix)
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetMatrixModelview")]
    public static extern void rlSetMatrixModelview(Matrix view);
    
    /// Set eyes projection matrices for stereo rendering
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetMatrixProjectionStereo")]
    public static extern void rlSetMatrixProjectionStereo(Matrix right, Matrix left);
    
    /// Set eyes view offsets matrices for stereo rendering
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlSetMatrixViewOffsetStereo")]
    public static extern void rlSetMatrixViewOffsetStereo(Matrix right, Matrix left);
    
    /// Load and draw a cube
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadDrawCube")]
    public static extern void rlLoadDrawCube();
    
    /// Load and draw a quad
    [Import("raylib.dll"), CallingConvention(.Cdecl), LinkName("rlLoadDrawQuad")]
    public static extern void rlLoadDrawQuad();
    
    
}
