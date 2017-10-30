Spaceship bob;
public void setup() 
{
  size(500,500);
  bob = new Spaceship();
}
public void draw() 
{
  background (0,0,128);
  bob.show();
  bob.move();
}

public void keyPressed()
 { 
   if (keyCode == RIGHT)
   {
   bob.turn(7);
 }
 if (keyCode == LEFT)
 {
   bob.turn(-7);
 }
   if (keyCode == UP)
   {
     bob.accelerate(1);
 }
 }

