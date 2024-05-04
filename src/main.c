#include "raylib.h"

int main(){
  int width = 800;
  int height = 400;
  InitWindow(width, height, "pi-chat");	

  while(!WindowShouldClose()){
    BeginDrawing();
    ClearBackground(RAYWHITE);
    EndDrawing();
  }

  return 0;
}
