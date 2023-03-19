namespace beef;

using Raylib;

class Program
{
	public static int Main()
	{
		InitWindow(1280, 720, "Raylib Beef");
		while (!WindowShouldClose())
		{
			BeginDrawing();
			
			DrawText("Hello!", 20, 20, 20, Color(200, 200, 200, 255));

			EndDrawing();
		}
		CloseWindow();
		return 0;
	}
}