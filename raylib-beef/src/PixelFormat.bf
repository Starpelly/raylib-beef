using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Pixel formats
public enum PixelFormat : c_int
{
	/// 8 bit per pixel (no alpha)
	case PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = 1;
	/// 8*2 bpp (2 channels)
	case PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA = 2;
	/// 16 bpp
	case PIXELFORMAT_UNCOMPRESSED_R5G6B5 = 3;
	/// 24 bpp
	case PIXELFORMAT_UNCOMPRESSED_R8G8B8 = 4;
	/// 16 bpp (1 bit alpha)
	case PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 = 5;
	/// 16 bpp (4 bit alpha)
	case PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 = 6;
	/// 32 bpp
	case PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 = 7;
	/// 32 bpp (1 channel - float)
	case PIXELFORMAT_UNCOMPRESSED_R32 = 8;
	/// 32*3 bpp (3 channels - float)
	case PIXELFORMAT_UNCOMPRESSED_R32G32B32 = 9;
	/// 32*4 bpp (4 channels - float)
	case PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 = 10;
	/// 16 bpp (1 channel - half float)
	case PIXELFORMAT_UNCOMPRESSED_R16 = 11;
	/// 16*3 bpp (3 channels - half float)
	case PIXELFORMAT_UNCOMPRESSED_R16G16B16 = 12;
	/// 16*4 bpp (4 channels - half float)
	case PIXELFORMAT_UNCOMPRESSED_R16G16B16A16 = 13;
	/// 4 bpp (no alpha)
	case PIXELFORMAT_COMPRESSED_DXT1_RGB = 14;
	/// 4 bpp (1 bit alpha)
	case PIXELFORMAT_COMPRESSED_DXT1_RGBA = 15;
	/// 8 bpp
	case PIXELFORMAT_COMPRESSED_DXT3_RGBA = 16;
	/// 8 bpp
	case PIXELFORMAT_COMPRESSED_DXT5_RGBA = 17;
	/// 4 bpp
	case PIXELFORMAT_COMPRESSED_ETC1_RGB = 18;
	/// 4 bpp
	case PIXELFORMAT_COMPRESSED_ETC2_RGB = 19;
	/// 8 bpp
	case PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA = 20;
	/// 4 bpp
	case PIXELFORMAT_COMPRESSED_PVRT_RGB = 21;
	/// 4 bpp
	case PIXELFORMAT_COMPRESSED_PVRT_RGBA = 22;
	/// 8 bpp
	case PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA = 23;
	/// 2 bpp
	case PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA = 24;
	
	public static operator int32 (PixelFormat self) => (int32)self;
}
