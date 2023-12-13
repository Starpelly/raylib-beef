using System;
using RaylibBeef;
using static RaylibBeef.Raylib;

namespace example;

class Program
{
	private const let ColBeefMain = Color(165, 47, 78, 255);
	private const let ColBeefOutline = Color(243, 157, 157, 255);

#if BF_PLATFORM_WASM
	private function void em_callback_func();

	[CLink, CallingConvention(.Stdcall)]
	private static extern void emscripten_set_main_loop(em_callback_func func, int32 fps, int32 simulateInfinteLoop);

	[CLink, CallingConvention(.Stdcall)]
	private static extern int32 emscripten_set_main_loop_timing(int32 mode, int32 value);

	[CLink, CallingConvention(.Stdcall)]
	private static extern double emscripten_get_now();

	private static void EmscriptenMainLoop()
	{
		Update();
	}
#endif

	private static void Update()
	{
		BeginDrawing();

		ClearBackground(RAYWHITE);

		void DrawPlatform(char8* text)
			=> DrawText(text, GetScreenWidth() / 2 - (MeasureText(text, 50) / 2), 40, 50, ColBeefOutline);

#if BF_PLATFORM_WASM
		DrawPlatform("webassembly");
#else
		DrawPlatform("windows");
#endif

		DrawRectangle(GetScreenWidth() / 2 - 128, GetScreenHeight() / 2 - 128, 256, 256, ColBeefOutline);
		DrawRectangle(GetScreenWidth() / 2 - 112, GetScreenHeight() / 2 - 112, 224, 224, ColBeefMain);

		DrawText("raylib", GetScreenWidth() / 2 - 44, GetScreenHeight() / 2, 50, ColBeefOutline);
		DrawText("beef", GetScreenWidth() / 2 - 62, GetScreenHeight() / 2 + 46, 50, ColBeefOutline);

		DrawRectangle(GetScreenWidth() / 2 + 54, GetScreenHeight() / 2 + 54, 42, 42, ColBeefOutline);
		DrawRectangle(GetScreenWidth() / 2 + 62, GetScreenHeight() / 2 + 62, 26, 26, RAYWHITE);

		DrawCircle(GetMouseX(), GetMouseY(), 20, ColBeefOutline);
		DrawCircle(GetMouseX(), GetMouseY(), 8, ColBeefMain);

		DrawFPS(20, 20);

		EndDrawing();
	}

	public static int Main(String[] args)
	{
		InitWindow(800, 600, scope $"Raylib Beef {RAYLIB_VERSION_MAJOR}.{RAYLIB_VERSION_MINOR}.{RAYLIB_VERSION_PATCH}");
		InitAudioDevice();


#if BF_PLATFORM_WASM
		emscripten_set_main_loop(=> EmscriptenMainLoop, 0, 1);
#else
		while (!WindowShouldClose())
		{
			Update();
		}
#endif

		CloseAudioDevice();
		CloseWindow();

		return 0;
	}
}