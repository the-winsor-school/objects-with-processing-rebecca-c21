import hivis.common.*;
import hivis.data.*;
import hivis.data.reader.*;
import hivis.data.view.*;
import hivis.example.*;

// this is your player, they're a blob and they're kinda boring.
Blob player;
Blob other;

void setup()
{
  size(500, 500);
  
  // Blob parameters are: 
  // x (px), y (px), radius (px), 
  // x-speed (px/frame), y-speed (px/frame), and color.
  player = new Blob(100, 100, 50, 1.25, 1.5, color(255, 0, 180));
  other = new Blob(400, 200, 10, 1.25, 1.5, color(128, 0, 200));
}

void draw()
{
  background(255,255,255);
  
  // make the player move automatically.
  player.keyboardControl();
  other.chase(player);
  
  // draw the player on the screen.
  player.drawSprite();
  other.drawSprite();
}
