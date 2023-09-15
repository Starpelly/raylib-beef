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
	[CLink]
	public static extern void rlMatrixMode(int mode);
	
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
	public static extern void rlMultMatrixf(float * matf);
	
	/// 
	[CLink]
	public static extern void rlFrustum(double left, double right, double bottom, double top, double znear, double zfar);
	
	/// 
	[CLink]
	public static extern void rlOrtho(double left, double right, double bottom, double top, double znear, double zfar);
	
	/// Set the viewport area
	[CLink]
	public static extern void rlViewport(int x, int y, int width, int height);
	
	/// Initialize drawing mode (how to organize vertex)
	[CLink]
	public static extern void rlBegin(int mode);
	
	/// Finish vertex providing
	[CLink]
	public static extern void rlEnd();
	
	/// Define one vertex (position) - 2 int
	[CLink]
	public static extern void rlVertex2i(int x, int y);
	
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
	public static extern bool rlEnableVertexArray(uint32 vaoId);
	
	/// Disable vertex array (VAO, if supported)
	[CLink]
	public static extern void rlDisableVertexArray();
	
	/// Enable vertex buffer (VBO)
	[CLink]
	public static extern void rlEnableVertexBuffer(uint32 id);
	
	/// Disable vertex buffer (VBO)
	[CLink]
	public static extern void rlDisableVertexBuffer();
	
	/// Enable vertex buffer element (VBO element)
	[CLink]
	public static extern void rlEnableVertexBufferElement(uint32 id);
	
	/// Disable vertex buffer element (VBO element)
	[CLink]
	public static extern void rlDisableVertexBufferElement();
	
	/// Enable vertex attribute index
	[CLink]
	public static extern void rlEnableVertexAttribute(uint32 index);
	
	/// Disable vertex attribute index
	[CLink]
	public static extern void rlDisableVertexAttribute(uint32 index);
	
	/// Enable attribute state pointer
	[CLink]
	public static extern void rlEnableStatePointer(int vertexAttribType, void * buffer);
	
	/// Disable attribute state pointer
	[CLink]
	public static extern void rlDisableStatePointer(int vertexAttribType);
	
	/// Select and active a texture slot
	[CLink]
	public static extern void rlActiveTextureSlot(int slot);
	
	/// Enable texture
	[CLink]
	public static extern void rlEnableTexture(uint32 id);
	
	/// Disable texture
	[CLink]
	public static extern void rlDisableTexture();
	
	/// Enable texture cubemap
	[CLink]
	public static extern void rlEnableTextureCubemap(uint32 id);
	
	/// Disable texture cubemap
	[CLink]
	public static extern void rlDisableTextureCubemap();
	
	/// Set texture parameters (filter, wrap)
	[CLink]
	public static extern void rlTextureParameters(uint32 id, int param, int value);
	
	/// Set cubemap parameters (filter, wrap)
	[CLink]
	public static extern void rlCubemapParameters(uint32 id, int param, int value);
	
	/// Enable shader program
	[CLink]
	public static extern void rlEnableShader(uint32 id);
	
	/// Disable shader program
	[CLink]
	public static extern void rlDisableShader();
	
	/// Enable render texture (fbo)
	[CLink]
	public static extern void rlEnableFramebuffer(uint32 id);
	
	/// Disable render texture (fbo), return to default framebuffer
	[CLink]
	public static extern void rlDisableFramebuffer();
	
	/// Activate multiple draw color buffers
	[CLink]
	public static extern void rlActiveDrawBuffers(int count);
	
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
	public static extern void rlSetCullFace(int mode);
	
	/// Enable scissor test
	[CLink]
	public static extern void rlEnableScissorTest();
	
	/// Disable scissor test
	[CLink]
	public static extern void rlDisableScissorTest();
	
	/// Scissor test
	[CLink]
	public static extern void rlScissor(int x, int y, int width, int height);
	
	/// Enable wire mode
	[CLink]
	public static extern void rlEnableWireMode();
	
	/// Disable wire mode
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
	public static extern void rlSetBlendMode(int mode);
	
	/// Set blending mode factor and equation (using OpenGL factors)
	[CLink]
	public static extern void rlSetBlendFactors(int glSrcFactor, int glDstFactor, int glEquation);
	
	/// Set blending mode factors and equations separately (using OpenGL factors)
	[CLink]
	public static extern void rlSetBlendFactorsSeparate(int glSrcRGB, int glDstRGB, int glSrcAlpha, int glDstAlpha, int glEqRGB, int glEqAlpha);
	
	/// Initialize rlgl (buffers, shaders, textures, states)
	[CLink]
	public static extern void rlglInit(int width, int height);
	
	/// De-initialize rlgl (buffers, shaders, textures)
	[CLink]
	public static extern void rlglClose();
	
	/// Load OpenGL extensions (loader function required)
	[CLink]
	public static extern void rlLoadExtensions(void * loader);
	
	/// Get current OpenGL version
	[CLink]
	public static extern int rlGetVersion();
	
	/// Set current framebuffer width
	[CLink]
	public static extern void rlSetFramebufferWidth(int width);
	
	/// Get default framebuffer width
	[CLink]
	public static extern int rlGetFramebufferWidth();
	
	/// Set current framebuffer height
	[CLink]
	public static extern void rlSetFramebufferHeight(int height);
	
	/// Get default framebuffer height
	[CLink]
	public static extern int rlGetFramebufferHeight();
	
	/// Get default texture id
	[CLink]
	public static extern uint32 rlGetTextureIdDefault();
	
	/// Get default shader id
	[CLink]
	public static extern uint32 rlGetShaderIdDefault();
	
	/// Get default shader locations
	[CLink]
	public static extern int * rlGetShaderLocsDefault();
	
	/// Load a render batch system
	[CLink]
	public static extern rlRenderBatch rlLoadRenderBatch(int numBuffers, int bufferElements);
	
	/// Unload render batch system
	[CLink]
	public static extern void rlUnloadRenderBatch(rlRenderBatch batch);
	
	/// Draw render batch data (Update->Draw->Reset)
	[CLink]
	public static extern void rlDrawRenderBatch(rlRenderBatch * batch);
	
	/// Set the active render batch for rlgl (NULL for default internal)
	[CLink]
	public static extern void rlSetRenderBatchActive(rlRenderBatch * batch);
	
	/// Update and draw internal render batch
	[CLink]
	public static extern void rlDrawRenderBatchActive();
	
	/// Check internal buffer overflow for a given number of vertex
	[CLink]
	public static extern bool rlCheckRenderBatchLimit(int vCount);
	
	/// Set current texture for render batch and check buffers limits
	[CLink]
	public static extern void rlSetTexture(uint32 id);
	
	/// Load vertex array (vao) if supported
	[CLink]
	public static extern uint32 rlLoadVertexArray();
	
	/// Load a vertex buffer attribute
	[CLink]
	public static extern uint32 rlLoadVertexBuffer(void * buffer, int size, bool dynamic);
	
	/// Load a new attributes element buffer
	[CLink]
	public static extern uint32 rlLoadVertexBufferElement(void * buffer, int size, bool dynamic);
	
	/// Update GPU buffer with new data
	[CLink]
	public static extern void rlUpdateVertexBuffer(uint32 bufferId, void * data, int dataSize, int offset);
	
	/// Update vertex buffer elements with new data
	[CLink]
	public static extern void rlUpdateVertexBufferElements(uint32 id, void * data, int dataSize, int offset);
	
	/// 
	[CLink]
	public static extern void rlUnloadVertexArray(uint32 vaoId);
	
	/// 
	[CLink]
	public static extern void rlUnloadVertexBuffer(uint32 vboId);
	
	/// 
	[CLink]
	public static extern void rlSetVertexAttribute(uint32 index, int compSize, int type, bool normalized, int stride, void * pointer);
	
	/// 
	[CLink]
	public static extern void rlSetVertexAttributeDivisor(uint32 index, int divisor);
	
	/// Set vertex attribute default value
	[CLink]
	public static extern void rlSetVertexAttributeDefault(int locIndex, void * value, int attribType, int count);
	
	/// 
	[CLink]
	public static extern void rlDrawVertexArray(int offset, int count);
	
	/// 
	[CLink]
	public static extern void rlDrawVertexArrayElements(int offset, int count, void * buffer);
	
	/// 
	[CLink]
	public static extern void rlDrawVertexArrayInstanced(int offset, int count, int instances);
	
	/// 
	[CLink]
	public static extern void rlDrawVertexArrayElementsInstanced(int offset, int count, void * buffer, int instances);
	
	/// Load texture in GPU
	[CLink]
	public static extern uint32 rlLoadTexture(void * data, int width, int height, int format, int mipmapCount);
	
	/// Load depth texture/renderbuffer (to be attached to fbo)
	[CLink]
	public static extern uint32 rlLoadTextureDepth(int width, int height, bool useRenderBuffer);
	
	/// Load texture cubemap
	[CLink]
	public static extern uint32 rlLoadTextureCubemap(void * data, int size, int format);
	
	/// Update GPU texture with new data
	[CLink]
	public static extern void rlUpdateTexture(uint32 id, int offsetX, int offsetY, int width, int height, int format, void * data);
	
	/// Get OpenGL internal formats
	[CLink]
	public static extern void rlGetGlTextureFormats(int format, int * glInternalFormat, int * glFormat, int * glType);
	
	/// Get name string for pixel format
	[CLink]
	public static extern char8 * rlGetPixelFormatName(uint32 format);
	
	/// Unload texture from GPU memory
	[CLink]
	public static extern void rlUnloadTexture(uint32 id);
	
	/// Generate mipmap data for selected texture
	[CLink]
	public static extern void rlGenTextureMipmaps(uint32 id, int width, int height, int format, int * mipmaps);
	
	/// Read texture pixel data
	[CLink]
	public static extern void * rlReadTexturePixels(uint32 id, int width, int height, int format);
	
	/// Read screen pixel data (color buffer)
	[CLink]
	public static extern char8 * rlReadScreenPixels(int width, int height);
	
	/// Load an empty framebuffer
	[CLink]
	public static extern uint32 rlLoadFramebuffer(int width, int height);
	
	/// Attach texture/renderbuffer to a framebuffer
	[CLink]
	public static extern void rlFramebufferAttach(uint32 fboId, uint32 texId, int attachType, int texType, int mipLevel);
	
	/// Verify framebuffer is complete
	[CLink]
	public static extern bool rlFramebufferComplete(uint32 id);
	
	/// Delete framebuffer from GPU
	[CLink]
	public static extern void rlUnloadFramebuffer(uint32 id);
	
	/// Load shader from code strings
	[CLink]
	public static extern uint32 rlLoadShaderCode(char8 * vsCode, char8 * fsCode);
	
	/// Compile custom shader and return shader id (type: RL_VERTEX_SHADER, RL_FRAGMENT_SHADER, RL_COMPUTE_SHADER)
	[CLink]
	public static extern uint32 rlCompileShader(char8 * shaderCode, int type);
	
	/// Load custom shader program
	[CLink]
	public static extern uint32 rlLoadShaderProgram(uint32 vShaderId, uint32 fShaderId);
	
	/// Unload shader program
	[CLink]
	public static extern void rlUnloadShaderProgram(uint32 id);
	
	/// Get shader location uniform
	[CLink]
	public static extern int rlGetLocationUniform(uint32 shaderId, char8 * uniformName);
	
	/// Get shader location attribute
	[CLink]
	public static extern int rlGetLocationAttrib(uint32 shaderId, char8 * attribName);
	
	/// Set shader value uniform
	[CLink]
	public static extern void rlSetUniform(int locIndex, void * value, int uniformType, int count);
	
	/// Set shader value matrix
	[CLink]
	public static extern void rlSetUniformMatrix(int locIndex, Matrix mat);
	
	/// Set shader value sampler
	[CLink]
	public static extern void rlSetUniformSampler(int locIndex, uint32 textureId);
	
	/// Set shader currently active (id and locations)
	[CLink]
	public static extern void rlSetShader(uint32 id, int * locs);
	
	/// Load compute shader program
	[CLink]
	public static extern uint32 rlLoadComputeShaderProgram(uint32 shaderId);
	
	/// Dispatch compute shader (equivalent to *draw* for graphics pipeline)
	[CLink]
	public static extern void rlComputeShaderDispatch(uint32 groupX, uint32 groupY, uint32 groupZ);
	
	/// Load shader storage buffer object (SSBO)
	[CLink]
	public static extern uint32 rlLoadShaderBuffer(uint32 size, void * data, int usageHint);
	
	/// Unload shader storage buffer object (SSBO)
	[CLink]
	public static extern void rlUnloadShaderBuffer(uint32 ssboId);
	
	/// Update SSBO buffer data
	[CLink]
	public static extern void rlUpdateShaderBuffer(uint32 id, void * data, uint32 dataSize, uint32 offset);
	
	/// Bind SSBO buffer
	[CLink]
	public static extern void rlBindShaderBuffer(uint32 id, uint32 index);
	
	/// Read SSBO buffer data (GPU->CPU)
	[CLink]
	public static extern void rlReadShaderBuffer(uint32 id, void * dest, uint32 count, uint32 offset);
	
	/// Copy SSBO data between buffers
	[CLink]
	public static extern void rlCopyShaderBuffer(uint32 destId, uint32 srcId, uint32 destOffset, uint32 srcOffset, uint32 count);
	
	/// Get SSBO buffer size
	[CLink]
	public static extern uint32 rlGetShaderBufferSize(uint32 id);
	
	/// Bind image texture
	[CLink]
	public static extern void rlBindImageTexture(uint32 id, uint32 index, int format, bool @readonly);
	
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
	public static extern Matrix rlGetMatrixProjectionStereo(int eye);
	
	/// Get internal view offset matrix for stereo render (selected eye)
	[CLink]
	public static extern Matrix rlGetMatrixViewOffsetStereo(int eye);
	
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
	
	/// Load and draw a cube
	[CLink]
	public static extern void rlLoadDrawCube();
	
	/// Load and draw a quad
	[CLink]
	public static extern void rlLoadDrawQuad();
	
	
}
