import hivis.common.*;
import hivis.data.*;
import hivis.data.reader.*;
import hivis.data.view.*;
import hivis.example.*;

// this is your player, they're a blob and they're kinda boring.
Blob player;
Blob other;
Blob other2;

void setup()
{
  size(500, 500);

  // Blob parameters are: 
  // x (px), y (px), radius (px), 
  // x-speed (px/frame), y-speed (px/frame), and color.
  player = new Blob(100, 100, 50, 5.25, 1.5, color(255, 255, 204));
  other = new Blob(400, 200, 25, 2.25, 1.5, color(153, 225, 153));
  other2 = new Blob(400, 200, 10, 3.25, 1.5, color(225, 153, 153));
}

void draw()
{
  background(204, 229, 255);

  // make the player move automatically.
  player.followMouse();
  other.chase(player);
  other2.chase(player);

  // draw the player on the screen.
  player.drawSprite();
  other.drawSprite();
  other2.drawSprite();
}
