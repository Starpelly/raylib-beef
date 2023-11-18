using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct rlglData
{
	/// Current render batch
	public rlRenderBatch * currentBatch;
	
	/// Default internal render batch
	public rlRenderBatch defaultBatch;
	
	/// Current active render batch vertex counter (generic, used for all batches)
	public int32 vertexCounter;
	
	/// Current active texture coordinate (added on glVertex*())
	public float texcoordx;
	
	/// Current active texture coordinate (added on glVertex*())
	public float texcoordy;
	
	/// Current active normal (added on glVertex*())
	public float normalx;
	
	/// Current active normal (added on glVertex*())
	public float normaly;
	
	/// Current active normal (added on glVertex*())
	public float normalz;
	
	/// Current active color (added on glVertex*())
	public uint8 colorr;
	
	/// Current active color (added on glVertex*())
	public uint8 colorg;
	
	/// Current active color (added on glVertex*())
	public uint8 colorb;
	
	/// Current active color (added on glVertex*())
	public uint8 colora;
	
	/// Current matrix mode
	public int32 currentMatrixMode;
	
	/// Current matrix pointer
	public Matrix * currentMatrix;
	
	/// Default modelview matrix
	public Matrix modelview;
	
	/// Default projection matrix
	public Matrix projection;
	
	/// Transform matrix to be used with rlTranslate, rlRotate, rlScale
	public Matrix transform;
	
	/// Require transform matrix application to current draw-call vertex (if required)
	public bool transformRequired;
	
	/// Matrix stack for push/pop
	public Matrix[Rlgl.RL_MAX_MATRIX_STACK_SIZE] _stack;
	
	/// Matrix stack counter
	public int32 stackCounter;
	
	/// Default texture used on shapes/poly drawing (required by shader)
	public int32 defaultTextureId;
	
	/// Active texture ids to be enabled on batch drawing (0 active by default)
	public int32[Rlgl.RL_DEFAULT_BATCH_MAX_TEXTURE_UNITS] activeTextureId;
	
	/// Default vertex shader id (used by default shader program)
	public int32 defaultVShaderId;
	
	/// Default fragment shader id (used by default shader program)
	public int32 defaultFShaderId;
	
	/// Default shader program id, supports vertex color and diffuse texture
	public int32 defaultShaderId;
	
	/// Default shader locations pointer to be used on rendering
	public int32 * defaultShaderLocs;
	
	/// Current shader id to be used on rendering (by default, defaultShaderId)
	public int32 currentShaderId;
	
	/// Current shader locations pointer to be used on rendering (by default, defaultShaderLocs)
	public int32 * currentShaderLocs;
	
	/// Stereo rendering flag
	public bool stereoRender;
	
	/// VR stereo rendering eyes projection matrices
	public Matrix[2] projectionStereo;
	
	/// VR stereo rendering eyes view offset matrices
	public Matrix[2] viewOffsetStereo;
	
	/// Blending mode active
	public int32 currentBlendMode;
	
	/// Blending source factor
	public int32 glBlendSrcFactor;
	
	/// Blending destination factor
	public int32 glBlendDstFactor;
	
	/// Blending equation
	public int32 glBlendEquation;
	
	/// Blending source RGB factor
	public int32 glBlendSrcFactorRGB;
	
	/// Blending destination RGB factor
	public int32 glBlendDestFactorRGB;
	
	/// Blending source alpha factor
	public int32 glBlendSrcFactorAlpha;
	
	/// Blending destination alpha factor
	public int32 glBlendDestFactorAlpha;
	
	/// Blending equation for RGB
	public int32 glBlendEquationRGB;
	
	/// Blending equation for alpha
	public int32 glBlendEquationAlpha;
	
	/// Custom blending factor and equation modification status
	public bool glCustomBlendModeModified;
	
	/// Current framebuffer width
	public int32 framebufferWidth;
	
	/// Current framebuffer height
	public int32 framebufferHeight;
	
	public this(rlRenderBatch * currentBatch, rlRenderBatch defaultBatch, int32 vertexCounter, float texcoordx, float texcoordy, float normalx, float normaly, float normalz, uint8 colorr, uint8 colorg, uint8 colorb, uint8 colora, int32 currentMatrixMode, Matrix * currentMatrix, Matrix modelview, Matrix projection, Matrix transform, bool transformRequired, Matrix[Rlgl.RL_MAX_MATRIX_STACK_SIZE] _stack, int32 stackCounter, int32 defaultTextureId, int32[Rlgl.RL_DEFAULT_BATCH_MAX_TEXTURE_UNITS] activeTextureId, int32 defaultVShaderId, int32 defaultFShaderId, int32 defaultShaderId, int32 * defaultShaderLocs, int32 currentShaderId, int32 * currentShaderLocs, bool stereoRender, Matrix[2] projectionStereo, Matrix[2] viewOffsetStereo, int32 currentBlendMode, int32 glBlendSrcFactor, int32 glBlendDstFactor, int32 glBlendEquation, int32 glBlendSrcFactorRGB, int32 glBlendDestFactorRGB, int32 glBlendSrcFactorAlpha, int32 glBlendDestFactorAlpha, int32 glBlendEquationRGB, int32 glBlendEquationAlpha, bool glCustomBlendModeModified, int32 framebufferWidth, int32 framebufferHeight)
	{
		this.currentBatch = currentBatch;
		this.defaultBatch = defaultBatch;
		this.vertexCounter = vertexCounter;
		this.texcoordx = texcoordx;
		this.texcoordy = texcoordy;
		this.normalx = normalx;
		this.normaly = normaly;
		this.normalz = normalz;
		this.colorr = colorr;
		this.colorg = colorg;
		this.colorb = colorb;
		this.colora = colora;
		this.currentMatrixMode = currentMatrixMode;
		this.currentMatrix = currentMatrix;
		this.modelview = modelview;
		this.projection = projection;
		this.transform = transform;
		this.transformRequired = transformRequired;
		this._stack = _stack;
		this.stackCounter = stackCounter;
		this.defaultTextureId = defaultTextureId;
		this.activeTextureId = activeTextureId;
		this.defaultVShaderId = defaultVShaderId;
		this.defaultFShaderId = defaultFShaderId;
		this.defaultShaderId = defaultShaderId;
		this.defaultShaderLocs = defaultShaderLocs;
		this.currentShaderId = currentShaderId;
		this.currentShaderLocs = currentShaderLocs;
		this.stereoRender = stereoRender;
		this.projectionStereo = projectionStereo;
		this.viewOffsetStereo = viewOffsetStereo;
		this.currentBlendMode = currentBlendMode;
		this.glBlendSrcFactor = glBlendSrcFactor;
		this.glBlendDstFactor = glBlendDstFactor;
		this.glBlendEquation = glBlendEquation;
		this.glBlendSrcFactorRGB = glBlendSrcFactorRGB;
		this.glBlendDestFactorRGB = glBlendDestFactorRGB;
		this.glBlendSrcFactorAlpha = glBlendSrcFactorAlpha;
		this.glBlendDestFactorAlpha = glBlendDestFactorAlpha;
		this.glBlendEquationRGB = glBlendEquationRGB;
		this.glBlendEquationAlpha = glBlendEquationAlpha;
		this.glCustomBlendModeModified = glCustomBlendModeModified;
		this.framebufferWidth = framebufferWidth;
		this.framebufferHeight = framebufferHeight;
	}
}
