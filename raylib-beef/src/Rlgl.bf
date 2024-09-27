using System;
using System.Interop;

namespace RaylibBeef;

public static class Rlgl
{
	public const char8* RLGL_VERSION = "4.5";
	
	public const int32 RL_DEFAULT_BATCH_BUFFER_ELEMENTS = 8192;
	
	/// Default number of batch buffers (multi-buffering)
	public const int32 RL_DEFAULT_BATCH_BUFFERS = 1;
	
	/// Default number of batch draw calls (by state changes: mode, texture)
	public const int32 RL_DEFAULT_BATCH_DRAWCALLS = 256;
	
	/// Maximum number of textures units that can be activated on batch drawing (SetShaderValueTexture())
	public const int32 RL_DEFAULT_BATCH_MAX_TEXTURE_UNITS = 4;
	
	/// Maximum size of Matrix stack
	public const int32 RL_MAX_MATRIX_STACK_SIZE = 32;
	
	/// Maximum number of shader locations supported
	public const int32 RL_MAX_SHADER_LOCATIONS = 32;
	
	/// Default near cull distance
	public const double RL_CULL_DISTANCE_NEAR = 0.01;
	
	/// Default far cull distance
	public const double RL_CULL_DISTANCE_FAR = 1000;
	
	/// GL_TEXTURE_WRAP_S
	public const int32 RL_TEXTURE_WRAP_S = 10242;
	
	/// GL_TEXTURE_WRAP_T
	public const int32 RL_TEXTURE_WRAP_T = 10243;
	
	/// GL_TEXTURE_MAG_FILTER
	public const int32 RL_TEXTURE_MAG_FILTER = 10240;
	
	/// GL_TEXTURE_MIN_FILTER
	public const int32 RL_TEXTURE_MIN_FILTER = 10241;
	
	/// GL_NEAREST
	public const int32 RL_TEXTURE_FILTER_NEAREST = 9728;
	
	/// GL_LINEAR
	public const int32 RL_TEXTURE_FILTER_LINEAR = 9729;
	
	/// GL_NEAREST_MIPMAP_NEAREST
	public const int32 RL_TEXTURE_FILTER_MIP_NEAREST = 9984;
	
	/// GL_NEAREST_MIPMAP_LINEAR
	public const int32 RL_TEXTURE_FILTER_NEAREST_MIP_LINEAR = 9986;
	
	/// GL_LINEAR_MIPMAP_NEAREST
	public const int32 RL_TEXTURE_FILTER_LINEAR_MIP_NEAREST = 9985;
	
	/// GL_LINEAR_MIPMAP_LINEAR
	public const int32 RL_TEXTURE_FILTER_MIP_LINEAR = 9987;
	
	/// Anisotropic filter (custom identifier)
	public const int32 RL_TEXTURE_FILTER_ANISOTROPIC = 12288;
	
	/// Texture mipmap bias, percentage ratio (custom identifier)
	public const int32 RL_TEXTURE_MIPMAP_BIAS_RATIO = 16384;
	
	/// GL_REPEAT
	public const int32 RL_TEXTURE_WRAP_REPEAT = 10497;
	
	/// GL_CLAMP_TO_EDGE
	public const int32 RL_TEXTURE_WRAP_CLAMP = 33071;
	
	/// GL_MIRRORED_REPEAT
	public const int32 RL_TEXTURE_WRAP_MIRROR_REPEAT = 33648;
	
	/// GL_MIRROR_CLAMP_EXT
	public const int32 RL_TEXTURE_WRAP_MIRROR_CLAMP = 34626;
	
	/// GL_MODELVIEW
	public const int32 RL_MODELVIEW = 5888;
	
	/// GL_PROJECTION
	public const int32 RL_PROJECTION = 5889;
	
	/// GL_TEXTURE
	public const int32 RL_TEXTURE = 5890;
	
	/// GL_LINES
	public const int32 RL_LINES = 1;
	
	/// GL_TRIANGLES
	public const int32 RL_TRIANGLES = 4;
	
	/// GL_QUADS
	public const int32 RL_QUADS = 7;
	
	/// GL_UNSIGNED_BYTE
	public const int32 RL_UNSIGNED_BYTE = 5121;
	
	/// GL_FLOAT
	public const int32 RL_FLOAT = 5126;
	
	/// GL_STREAM_DRAW
	public const int32 RL_STREAM_DRAW = 35040;
	
	/// GL_STREAM_READ
	public const int32 RL_STREAM_READ = 35041;
	
	/// GL_STREAM_COPY
	public const int32 RL_STREAM_COPY = 35042;
	
	/// GL_STATIC_DRAW
	public const int32 RL_STATIC_DRAW = 35044;
	
	/// GL_STATIC_READ
	public const int32 RL_STATIC_READ = 35045;
	
	/// GL_STATIC_COPY
	public const int32 RL_STATIC_COPY = 35046;
	
	/// GL_DYNAMIC_DRAW
	public const int32 RL_DYNAMIC_DRAW = 35048;
	
	/// GL_DYNAMIC_READ
	public const int32 RL_DYNAMIC_READ = 35049;
	
	/// GL_DYNAMIC_COPY
	public const int32 RL_DYNAMIC_COPY = 35050;
	
	/// GL_FRAGMENT_SHADER
	public const int32 RL_FRAGMENT_SHADER = 35632;
	
	/// GL_VERTEX_SHADER
	public const int32 RL_VERTEX_SHADER = 35633;
	
	/// GL_COMPUTE_SHADER
	public const int32 RL_COMPUTE_SHADER = 37305;
	
	/// GL_ZERO
	public const int32 RL_ZERO = 0;
	
	/// GL_ONE
	public const int32 RL_ONE = 1;
	
	/// GL_SRC_COLOR
	public const int32 RL_SRC_COLOR = 768;
	
	/// GL_ONE_MINUS_SRC_COLOR
	public const int32 RL_ONE_MINUS_SRC_COLOR = 769;
	
	/// GL_SRC_ALPHA
	public const int32 RL_SRC_ALPHA = 770;
	
	/// GL_ONE_MINUS_SRC_ALPHA
	public const int32 RL_ONE_MINUS_SRC_ALPHA = 771;
	
	/// GL_DST_ALPHA
	public const int32 RL_DST_ALPHA = 772;
	
	/// GL_ONE_MINUS_DST_ALPHA
	public const int32 RL_ONE_MINUS_DST_ALPHA = 773;
	
	/// GL_DST_COLOR
	public const int32 RL_DST_COLOR = 774;
	
	/// GL_ONE_MINUS_DST_COLOR
	public const int32 RL_ONE_MINUS_DST_COLOR = 775;
	
	/// GL_SRC_ALPHA_SATURATE
	public const int32 RL_SRC_ALPHA_SATURATE = 776;
	
	/// GL_CONSTANT_COLOR
	public const int32 RL_CONSTANT_COLOR = 32769;
	
	/// GL_ONE_MINUS_CONSTANT_COLOR
	public const int32 RL_ONE_MINUS_CONSTANT_COLOR = 32770;
	
	/// GL_CONSTANT_ALPHA
	public const int32 RL_CONSTANT_ALPHA = 32771;
	
	/// GL_ONE_MINUS_CONSTANT_ALPHA
	public const int32 RL_ONE_MINUS_CONSTANT_ALPHA = 32772;
	
	/// GL_FUNC_ADD
	public const int32 RL_FUNC_ADD = 32774;
	
	/// GL_MIN
	public const int32 RL_MIN = 32775;
	
	/// GL_MAX
	public const int32 RL_MAX = 32776;
	
	/// GL_FUNC_SUBTRACT
	public const int32 RL_FUNC_SUBTRACT = 32778;
	
	/// GL_FUNC_REVERSE_SUBTRACT
	public const int32 RL_FUNC_REVERSE_SUBTRACT = 32779;
	
	/// GL_BLEND_EQUATION
	public const int32 RL_BLEND_EQUATION = 32777;
	
	/// GL_BLEND_EQUATION_RGB   // (Same as BLEND_EQUATION)
	public const int32 RL_BLEND_EQUATION_RGB = 32777;
	
	/// GL_BLEND_EQUATION_ALPHA
	public const int32 RL_BLEND_EQUATION_ALPHA = 34877;
	
	/// GL_BLEND_DST_RGB
	public const int32 RL_BLEND_DST_RGB = 32968;
	
	/// GL_BLEND_SRC_RGB
	public const int32 RL_BLEND_SRC_RGB = 32969;
	
	/// GL_BLEND_DST_ALPHA
	public const int32 RL_BLEND_DST_ALPHA = 32970;
	
	/// GL_BLEND_SRC_ALPHA
	public const int32 RL_BLEND_SRC_ALPHA = 32971;
	
	/// GL_BLEND_COLOR
	public const int32 RL_BLEND_COLOR = 32773;
	
	/// Choose the current matrix to be transformed
	[CLink]
	public static extern void rlMatrixMode(int32 mode);
	
	/// Push the current matrix to stack
	[CLink]
	public static extern void rlPushMatrix();
	
	/// Pop latest inserted matrix from stack
	[CLink]
	public static extern void rlPopMatrix();
	
	/// Reset current matrix to identity matrix
	[CLink]
	public static extern void rlLoadIdentity();
	
	/// Multiply the current matrix by a translation matrix
	[CLink]
	public static extern void rlTranslatef(float x, float y, float z);
	
	/// Multiply the current matrix by a rotation matrix
	[CLink]
	public static extern void rlRotatef(float angle, float x, float y, float z);
	
	/// Multiply the current matrix by a scaling matrix
	[CLink]
	public static extern void rlScalef(float x, float y, float z);
	
	/// Multiply the current matrix by another matrix
	[CLink]
	public static extern void rlMultMatrixf(float *matf);
	
	/// 
	[CLink]
	public static extern void rlFrustum(double left, double right, double bottom, double top, double znear, double zfar);
	
	/// 
	[CLink]
	public static extern void rlOrtho(double left, double right, double bottom, double top, double znear, double zfar);
	
	/// Set the viewport area
	[CLink]
	public static extern void rlViewport(int32 x, int32 y, int32 width, int32 height);
	
	/// Initialize drawing mode (how to organize vertex)
	[CLink]
	public static extern void rlBegin(int32 mode);
	
	/// Finish vertex providing
	[CLink]
	public static extern void rlEnd();
	
	/// Define one vertex (position) - 2 int
	[CLink]
	public static extern void rlVertex2i(int32 x, int32 y);
	
	/// Define one vertex (position) - 2 float
	[CLink]
	public static extern void rlVertex2f(float x, float y);
	
	/// Define one vertex (position) - 3 float
	[CLink]
	public static extern void rlVertex3f(float x, float y, float z);
	
	/// Define one vertex (texture coordinate) - 2 float
	[CLink]
	public static extern void rlTexCoord2f(float x, float y);
	
	/// Define one vertex (normal) - 3 float
	[CLink]
	public static extern void rlNormal3f(float x, float y, float z);
	
	/// Define one vertex (color) - 4 byte
	[CLink]
	public static extern void rlColor4ub(uint8 r, uint8 g, uint8 b, uint8 a);
	
	/// Define one vertex (color) - 3 float
	[CLink]
	public static extern void rlColor3f(float x, float y, float z);
	
	/// Define one vertex (color) - 4 float
	[CLink]
	public static extern void rlColor4f(float x, float y, float z, float w);
	
	/// Enable vertex array (VAO, if supported)
	[CLink]
	public static extern bool rlEnableVertexArray(int32 vaoId);
	
	/// Disable vertex array (VAO, if supported)
	[CLink]
	public static extern void rlDisableVertexArray();
	
	/// Enable vertex buffer (VBO)
	[CLink]
	public static extern void rlEnableVertexBuffer(int32 id);
	
	/// Disable vertex buffer (VBO)
	[CLink]
	public static extern void rlDisableVertexBuffer();
	
	/// Enable vertex buffer element (VBO element)
	[CLink]
	public static extern void rlEnableVertexBufferElement(int32 id);
	
	/// Disable vertex buffer element (VBO element)
	[CLink]
	public static extern void rlDisableVertexBufferElement();
	
	/// Enable vertex attribute index
	[CLink]
	public static extern void rlEnableVertexAttribute(int32 index);
	
	/// Disable vertex attribute index
	[CLink]
	public static extern void rlDisableVertexAttribute(int32 index);
	
	/// Enable attribute state pointer
	[CLink]
	public static extern void rlEnableStatePointer(int32 vertexAttribType, void *buffer);
	
	/// Disable attribute state pointer
	[CLink]
	public static extern void rlDisableStatePointer(int32 vertexAttribType);
	
	/// Select and active a texture slot
	[CLink]
	public static extern void rlActiveTextureSlot(int32 slot);
	
	/// Enable texture
	[CLink]
	public static extern void rlEnableTexture(int32 id);
	
	/// Disable texture
	[CLink]
	public static extern void rlDisableTexture();
	
	/// Enable texture cubemap
	[CLink]
	public static extern void rlEnableTextureCubemap(int32 id);
	
	/// Disable texture cubemap
	[CLink]
	public static extern void rlDisableTextureCubemap();
	
	/// Set texture parameters (filter, wrap)
	[CLink]
	public static extern void rlTextureParameters(int32 id, int32 param, int32 value);
	
	/// Set cubemap parameters (filter, wrap)
	[CLink]
	public static extern void rlCubemapParameters(int32 id, int32 param, int32 value);
	
	/// Enable shader program
	[CLink]
	public static extern void rlEnableShader(int32 id);
	
	/// Disable shader program
	[CLink]
	public static extern void rlDisableShader();
	
	/// Enable render texture (fbo)
	[CLink]
	public static extern void rlEnableFramebuffer(int32 id);
	
	/// Disable render texture (fbo), return to default framebuffer
	[CLink]
	public static extern void rlDisableFramebuffer();
	
	/// Activate multiple draw color buffers
	[CLink]
	public static extern void rlActiveDrawBuffers(int32 count);
	
	/// Blit active framebuffer to main framebuffer
	[CLink]
	public static extern void rlBlitFramebuffer(int32 srcX, int32 srcY, int32 srcWidth, int32 srcHeight, int32 dstX, int32 dstY, int32 dstWidth, int32 dstHeight, int32 bufferMask);
	
	/// Enable color blending
	[CLink]
	public static extern void rlEnableColorBlend();
	
	/// Disable color blending
	[CLink]
	public static extern void rlDisableColorBlend();
	
	/// Enable depth test
	[CLink]
	public static extern void rlEnableDepthTest();
	
	/// Disable depth test
	[CLink]
	public static extern void rlDisableDepthTest();
	
	/// Enable depth write
	[CLink]
	public static extern void rlEnableDepthMask();
	
	/// Disable depth write
	[CLink]
	public static extern void rlDisableDepthMask();
	
	/// Enable backface culling
	[CLink]
	public static extern void rlEnableBackfaceCulling();
	
	/// Disable backface culling
	[CLink]
	public static extern void rlDisableBackfaceCulling();
	
	/// Set face culling mode
	[CLink]
	public static extern void rlSetCullFace(int32 mode);
	
	/// Enable scissor test
	[CLink]
	public static extern void rlEnableScissorTest();
	
	/// Disable scissor test
	[CLink]
	public static extern void rlDisableScissorTest();
	
	/// Scissor test
	[CLink]
	public static extern void rlScissor(int32 x, int32 y, int32 width, int32 height);
	
	/// Enable wire mode
	[CLink]
	public static extern void rlEnableWireMode();
	
	/// Enable point mode
	[CLink]
	public static extern void rlEnablePointMode();
	
	/// Disable wire mode ( and point ) maybe rename
	[CLink]
	public static extern void rlDisableWireMode();
	
	/// Set the line drawing width
	[CLink]
	public static extern void rlSetLineWidth(float width);
	
	/// Get the line drawing width
	[CLink]
	public static extern float rlGetLineWidth();
	
	/// Enable line aliasing
	[CLink]
	public static extern void rlEnableSmoothLines();
	
	/// Disable line aliasing
	[CLink]
	public static extern void rlDisableSmoothLines();
	
	/// Enable stereo rendering
	[CLink]
	public static extern void rlEnableStereoRender();
	
	/// Disable stereo rendering
	[CLink]
	public static extern void rlDisableStereoRender();
	
	/// Check if stereo render is enabled
	[CLink]
	public static extern bool rlIsStereoRenderEnabled();
	
	/// Clear color buffer with color
	[CLink]
	public static extern void rlClearColor(uint8 r, uint8 g, uint8 b, uint8 a);
	
	/// Clear used screen buffers (color and depth)
	[CLink]
	public static extern void rlClearScreenBuffers();
	
	/// Check and log OpenGL error codes
	[CLink]
	public static extern void rlCheckErrors();
	
	/// Set blending mode
	[CLink]
	public static extern void rlSetBlendMode(int32 mode);
	
	/// Set blending mode factor and equation (using OpenGL factors)
	[CLink]
	public static extern void rlSetBlendFactors(int32 glSrcFactor, int32 glDstFactor, int32 glEquation);
	
	/// Set blending mode factors and equations separately (using OpenGL factors)
	[CLink]
	public static extern void rlSetBlendFactorsSeparate(int32 glSrcRGB, int32 glDstRGB, int32 glSrcAlpha, int32 glDstAlpha, int32 glEqRGB, int32 glEqAlpha);
	
	/// Initialize rlgl (buffers, shaders, textures, states)
	[CLink]
	public static extern void rlglInit(int32 width, int32 height);
	
	/// De-initialize rlgl (buffers, shaders, textures)
	[CLink]
	public static extern void rlglClose();
	
	/// Load OpenGL extensions (loader function required)
	[CLink]
	public static extern void rlLoadExtensions(void *loader);
	
	/// Get current OpenGL version
	[CLink]
	public static extern int32 rlGetVersion();
	
	/// Set current framebuffer width
	[CLink]
	public static extern void rlSetFramebufferWidth(int32 width);
	
	/// Get default framebuffer width
	[CLink]
	public static extern int32 rlGetFramebufferWidth();
	
	/// Set current framebuffer height
	[CLink]
	public static extern void rlSetFramebufferHeight(int32 height);
	
	/// Get default framebuffer height
	[CLink]
	public static extern int32 rlGetFramebufferHeight();
	
	/// Get default texture id
	[CLink]
	public static extern int32 rlGetTextureIdDefault();
	
	/// Get default shader id
	[CLink]
	public static extern int32 rlGetShaderIdDefault();
	
	/// Get default shader locations
	[CLink]
	public static extern int32 * rlGetShaderLocsDefault();
	
	/// Load a render batch system
	[CLink]
	public static extern rlRenderBatch rlLoadRenderBatch(int32 numBuffers, int32 bufferElements);
	
	/// Draw render batch data (Update->Draw->Reset)
	[CLink]
	public static extern void rlDrawRenderBatch(rlRenderBatch *batch);
	
	/// Set the active render batch for rlgl (NULL for default internal)
	[CLink]
	public static extern void rlSetRenderBatchActive(rlRenderBatch *batch);
	
	/// Update and draw internal render batch
	[CLink]
	public static extern void rlDrawRenderBatchActive();
	
	/// Check internal buffer overflow for a given number of vertex
	[CLink]
	public static extern bool rlCheckRenderBatchLimit(int32 vCount);
	
	/// Set current texture for render batch and check buffers limits
	[CLink]
	public static extern void rlSetTexture(int32 id);
	
	/// Load vertex array (vao) if supported
	[CLink]
	public static extern int32 rlLoadVertexArray();
	
	/// Load a vertex buffer attribute
	[CLink]
	public static extern int32 rlLoadVertexBuffer(void *buffer, int32 size, bool dynamic);
	
	/// Load a new attributes element buffer
	[CLink]
	public static extern int32 rlLoadVertexBufferElement(void *buffer, int32 size, bool dynamic);
	
	/// Update GPU buffer with new data
	[CLink]
	public static extern void rlUpdateVertexBuffer(int32 bufferId, void *data, int32 dataSize, int32 offset);
	
	/// Update vertex buffer elements with new data
	[CLink]
	public static extern void rlUpdateVertexBufferElements(int32 id, void *data, int32 dataSize, int32 offset);
	
	/// 
	[CLink]
	public static extern void rlUnloadVertexArray(int32 vaoId);
	
	/// 
	[CLink]
	public static extern void rlUnloadVertexBuffer(int32 vboId);
	
	/// 
	[CLink]
	public static extern void rlSetVertexAttribute(int32 index, int32 compSize, int32 type, bool normalized, int32 stride, void *pointer);
	
	/// 
	[CLink]
	public static extern void rlSetVertexAttributeDivisor(int32 index, int32 divisor);
	
	/// Set vertex attribute default value
	[CLink]
	public static extern void rlSetVertexAttributeDefault(int32 locIndex, void *value, int32 attribType, int32 count);
	
	/// 
	[CLink]
	public static extern void rlDrawVertexArray(int32 offset, int32 count);
	
	/// 
	[CLink]
	public static extern void rlDrawVertexArrayElements(int32 offset, int32 count, void *buffer);
	
	/// 
	[CLink]
	public static extern void rlDrawVertexArrayInstanced(int32 offset, int32 count, int32 instances);
	
	/// 
	[CLink]
	public static extern void rlDrawVertexArrayElementsInstanced(int32 offset, int32 count, void *buffer, int32 instances);
	
	/// Load texture in GPU
	[CLink]
	public static extern int32 rlLoadTexture(void *data, int32 width, int32 height, int32 format, int32 mipmapCount);
	
	/// Load depth texture/renderbuffer (to be attached to fbo)
	[CLink]
	public static extern int32 rlLoadTextureDepth(int32 width, int32 height, bool useRenderBuffer);
	
	/// Load texture cubemap
	[CLink]
	public static extern int32 rlLoadTextureCubemap(void *data, int32 size, int32 format);
	
	/// Update GPU texture with new data
	[CLink]
	public static extern void rlUpdateTexture(int32 id, int32 offsetX, int32 offsetY, int32 width, int32 height, int32 format, void *data);
	
	/// Get OpenGL internal formats
	[CLink]
	public static extern void rlGetGlTextureFormats(int32 format, int32 *glInternalFormat, int32 *glFormat, int32 *glType);
	
	/// Get name string for pixel format
	[CLink]
	public static extern char8 * rlGetPixelFormatName(int32 format);
	
	/// Unload texture from GPU memory
	[CLink]
	public static extern void rlUnloadTexture(int32 id);
	
	/// Generate mipmap data for selected texture
	[CLink]
	public static extern void rlGenTextureMipmaps(int32 id, int32 width, int32 height, int32 format, int32 *mipmaps);
	
	/// Read texture pixel data
	[CLink]
	public static extern void * rlReadTexturePixels(int32 id, int32 width, int32 height, int32 format);
	
	/// Read screen pixel data (color buffer)
	[CLink]
	public static extern char8 * rlReadScreenPixels(int32 width, int32 height);
	
	/// Load an empty framebuffer
	[CLink]
	public static extern int32 rlLoadFramebuffer(int32 width, int32 height);
	
	/// Attach texture/renderbuffer to a framebuffer
	[CLink]
	public static extern void rlFramebufferAttach(int32 fboId, int32 texId, int32 attachType, int32 texType, int32 mipLevel);
	
	/// Verify framebuffer is complete
	[CLink]
	public static extern bool rlFramebufferComplete(int32 id);
	
	/// Delete framebuffer from GPU
	[CLink]
	public static extern void rlUnloadFramebuffer(int32 id);
	
	/// Load shader from code strings
	[CLink]
	public static extern int32 rlLoadShaderCode(char8 *vsCode, char8 *fsCode);
	
	/// Compile custom shader and return shader id (type: RL_VERTEX_SHADER, RL_FRAGMENT_SHADER, RL_COMPUTE_SHADER)
	[CLink]
	public static extern int32 rlCompileShader(char8 *shaderCode, int32 type);
	
	/// Load custom shader program
	[CLink]
	public static extern int32 rlLoadShaderProgram(int32 vShaderId, int32 fShaderId);
	
	/// Unload shader program
	[CLink]
	public static extern void rlUnloadShaderProgram(int32 id);
	
	/// Get shader location uniform
	[CLink]
	public static extern int32 rlGetLocationUniform(int32 shaderId, char8 *uniformName);
	
	/// Get shader location attribute
	[CLink]
	public static extern int32 rlGetLocationAttrib(int32 shaderId, char8 *attribName);
	
	/// Set shader value uniform
	[CLink]
	public static extern void rlSetUniform(int32 locIndex, void *value, int32 uniformType, int32 count);
	
	/// Set shader value sampler
	[CLink]
	public static extern void rlSetUniformSampler(int32 locIndex, int32 textureId);
	
	/// Set shader currently active (id and locations)
	[CLink]
	public static extern void rlSetShader(int32 id, int32 *locs);
	
	/// Load compute shader program
	[CLink]
	public static extern int32 rlLoadComputeShaderProgram(int32 shaderId);
	
	/// Dispatch compute shader (equivalent to *draw* for graphics pipeline)
	[CLink]
	public static extern void rlComputeShaderDispatch(int32 groupX, int32 groupY, int32 groupZ);
	
	/// Load shader storage buffer object (SSBO)
	[CLink]
	public static extern int32 rlLoadShaderBuffer(int32 size, void *data, int32 usageHint);
	
	/// Unload shader storage buffer object (SSBO)
	[CLink]
	public static extern void rlUnloadShaderBuffer(int32 ssboId);
	
	/// Update SSBO buffer data
	[CLink]
	public static extern void rlUpdateShaderBuffer(int32 id, void *data, int32 dataSize, int32 offset);
	
	/// Bind SSBO buffer
	[CLink]
	public static extern void rlBindShaderBuffer(int32 id, int32 index);
	
	/// Read SSBO buffer data (GPU->CPU)
	[CLink]
	public static extern void rlReadShaderBuffer(int32 id, void *dest, int32 count, int32 offset);
	
	/// Copy SSBO data between buffers
	[CLink]
	public static extern void rlCopyShaderBuffer(int32 destId, int32 srcId, int32 destOffset, int32 srcOffset, int32 count);
	
	/// Get SSBO buffer size
	[CLink]
	public static extern int32 rlGetShaderBufferSize(int32 id);
	
	/// Bind image texture
	[CLink]
	public static extern void rlBindImageTexture(int32 id, int32 index, int32 format, bool @readonly);
	
	/// Get internal modelview matrix
	[CLink]
	public static extern Matrix rlGetMatrixModelview();
	
	/// Get internal projection matrix
	[CLink]
	public static extern Matrix rlGetMatrixProjection();
	
	/// Get internal accumulated transform matrix
	[CLink]
	public static extern Matrix rlGetMatrixTransform();
	
	/// Get internal projection matrix for stereo render (selected eye)
	[CLink]
	public static extern Matrix rlGetMatrixProjectionStereo(int32 eye);
	
	/// Get internal view offset matrix for stereo render (selected eye)
	[CLink]
	public static extern Matrix rlGetMatrixViewOffsetStereo(int32 eye);
	
	/// Load and draw a cube
	[CLink]
	public static extern void rlLoadDrawCube();
	
	/// Load and draw a quad
	[CLink]
	public static extern void rlLoadDrawQuad();
	
#if !BF_PLATFORM_WASM
	
	/// Unload render batch system
	[CLink]
	public static extern void rlUnloadRenderBatch(rlRenderBatch batch);
	
	/// Set shader value matrix
	[CLink]
	public static extern void rlSetUniformMatrix(int32 locIndex, Matrix mat);
	
	/// Set a custom projection matrix (replaces internal projection matrix)
	[CLink]
	public static extern void rlSetMatrixProjection(Matrix proj);
	
	/// Set a custom modelview matrix (replaces internal modelview matrix)
	[CLink]
	public static extern void rlSetMatrixModelview(Matrix view);
	
	/// Set eyes projection matrices for stereo rendering
	[CLink]
	public static extern void rlSetMatrixProjectionStereo(Matrix right, Matrix left);
	
	/// Set eyes view offsets matrices for stereo rendering
	[CLink]
	public static extern void rlSetMatrixViewOffsetStereo(Matrix right, Matrix left);
	
#else
	
	/// Unload render batch system
	[CLink]
	public static extern void rlUnloadRenderBatch(in rlRenderBatch batch);
	
	/// Set shader value matrix
	[CLink]
	public static extern void rlSetUniformMatrix(int32 locIndex, in Matrix mat);
	
	/// Set a custom projection matrix (replaces internal projection matrix)
	[CLink]
	public static extern void rlSetMatrixProjection(in Matrix proj);
	
	/// Set a custom modelview matrix (replaces internal modelview matrix)
	[CLink]
	public static extern void rlSetMatrixModelview(in Matrix view);
	
	/// Set eyes projection matrices for stereo rendering
	[CLink]
	public static extern void rlSetMatrixProjectionStereo(in Matrix right, in Matrix left);
	
	/// Set eyes view offsets matrices for stereo rendering
	[CLink]
	public static extern void rlSetMatrixViewOffsetStereo(in Matrix right, in Matrix left);
	
#endif
	
}
