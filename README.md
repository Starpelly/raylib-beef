# raylib-beef

![logo](img/raylib-beef-logo.png)

BeefLang bindings for **Raylib 4.5**.

> **Note**: These bindings are still in development. Bugs and changes may occur. 

> OS is limited to Windows right now, I see no reason why this wouldn't work on other platforms, though. I guess only one way to find out.

## Example
```cs
using System;
using RaylibBeef;
using static RaylibBeef.Raylib;

namespace example;

class Program
{
	public static int Main(String[] args)
	{
		InitWindow(800, 600, "Raylib Beef 4.5");

		var beefMain = Color(165, 47, 78, 255);
		var beefOutline = Color(243, 157, 157, 255);

		while (!WindowShouldClose())
		{
			BeginDrawing();
			
			ClearBackground(RAYWHITE);

			DrawRectangle(GetScreenWidth() / 2 - 128, GetScreenHeight() / 2 - 128, 256, 256, beefOutline);
			DrawRectangle(GetScreenWidth() / 2 - 112, GetScreenHeight() / 2 - 112, 224, 224, beefMain);

			DrawText("raylib", GetScreenWidth() / 2 - 44, GetScreenHeight() / 2, 50, beefOutline);
			DrawText("beef", GetScreenWidth() / 2 - 62, GetScreenHeight() / 2 + 46, 50, beefOutline);

			DrawRectangle(GetScreenWidth() / 2 + 54, GetScreenHeight() / 2 + 54, 42, 42, beefOutline);
			DrawRectangle(GetScreenWidth() / 2 + 62, GetScreenHeight() / 2 + 62, 26, 26, RAYWHITE);

			DrawCircle(GetMouseX(), GetMouseY(), 20, beefOutline);
			DrawCircle(GetMouseX(), GetMouseY(), 8, beefMain);

			DrawFPS(20, 20);

			EndDrawing();
		}
		CloseWindow();

		return 0;
	}
}
```

## More Links
* Raylib Repo (https://github.com/raysan5/raylib)
* BeefLang (https://www.beeflang.org)

## Contribution
I'll be happy to resolve any issues or pull requests.
