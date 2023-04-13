using System;
using System.Collections;
using Raylib;

namespace raylib_test;

class Program
{
	struct Bunny
	{
		public Vector2 position;
		public Vector2 speed;
		public Color color;
	}

	public static float Range(int min, int max)
	{
		var returnC = (float)GetRandomValue(0, max);
		if (returnC < max / 2)
			returnC = Raymath.Lerp(min, max, Raymath.Normalize(returnC, 0, 125));
		else
			returnC = Raymath.Lerp(min, max, Raymath.Normalize(returnC, max / 2, 250));

		// Console.WriteLine(returnC);

		return returnC;
	}

	public static int Main(String[] args)
	{
		int screenWidth = 800;
		int screenHeight = 600;

		SetConfigFlags((int)ConfigFlags.FLAG_VSYNC_HINT | (int)ConfigFlags.FLAG_WINDOW_RESIZABLE);
		InitWindow(screenWidth, screenHeight, "Raylib Beef 4.5");

		var texBunny = LoadTexture(@"C:\Users\Braedon\Downloads\wabbit_alpha.png");
		var bunnies = new List<Bunny>();

		var beefMain = Color(165, 47, 78, 255);
		var beefOutline = Color(243, 157, 157, 255);

		while (!WindowShouldClose())
		{
			if (IsMouseButtonDown((int)MouseButton.MOUSE_BUTTON_LEFT))
			{
				for (int i = 0; i < 100; i++)
				{
				    if (bunnies.Count < 50000)
				    {
						var newBunny = Bunny();
				        newBunny.position = GetMousePosition();
				        newBunny.speed.x = Range(-250, 250)/60.0f;
				        newBunny.speed.y = Range(-250, 250)/60.0f;
				        newBunny.color = Color((uint8)GetRandomValue(50, 240), (uint8)GetRandomValue(80, 240), (uint8)GetRandomValue(100, 240), 255);
				        bunnies.Add(newBunny);
				    }
				}
				
			}

			for (int i = 0; i < bunnies.Count; i++)
			{
				/*if (((bunnies[i].position.x + texBunny.width/2) > GetScreenWidth()) ||
				    ((bunnies[i].position.x + texBunny.width/2) < 0)) bunnies[i].speed.x *= -1;
				if (((bunnies[i].position.y + texBunny.height/2) > GetScreenHeight()) ||
				    ((bunnies[i].position.y + texBunny.height/2 - 40) < 0)) bunnies[i].speed.y *= -1;*/

				if (
					(bunnies[i].position.x < 0) ||
					(bunnies[i].position.x > (GetScreenWidth() - 32)) ||
					(bunnies[i].position.y > GetScreenHeight() - 32) ||
					(bunnies[i].position.y < 0))
				{
					bunnies.RemoveAtFast(i);
					i--;
					continue;
				}


				bunnies[i].position.x += bunnies[i].speed.x;
				bunnies[i].position.y += bunnies[i].speed.y;
			}

			BeginDrawing();

			ClearBackground(RAYWHITE);


			for (int i = 0; i < bunnies.Count; i++)
			{
			    // NOTE: When internal batch buffer limit is reached (MAX_BATCH_ELEMENTS),
			    // a draw call is launched and buffer starts being filled again;
			    // before issuing a draw call, updated vertex data from internal CPU buffer is send to GPU...
			    // Process of sending data is costly and it could happen that GPU data has not been completely
			    // processed for drawing while new data is tried to be sent (updating current in-use buffers)
			    // it could generates a stall and consequently a frame drop, limiting the number of drawn bunnies
			    DrawTexture(texBunny, (int)bunnies[i].position.x, (int)bunnies[i].position.y, bunnies[i].color);
			}

			
			DrawRectangle(0, 0, GetScreenWidth(), 40, BLACK);
			DrawText(scope $"bunnies: {bunnies.Count}", 120, 10, 20, GREEN);
			DrawText(scope $"batched draw calls: {1 + bunnies.Count / 50000}", 320, 10, 20, MAROON);

			DrawFPS(10, 10);

			EndDrawing();
		}


		delete bunnies;

		UnloadTexture(texBunny);

		CloseWindow();

		return 0;
	}
}