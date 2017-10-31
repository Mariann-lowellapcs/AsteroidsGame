Spaceship bob;
Stars[] sun = new Stars[100];
public void setup() 
{
  size(500,500);
  for(int i =0; i<sun.length; i++)
  { 
    sun[i] = new Stars();
  }
  bob  = new Spaceship();
  
  
}
public void draw() 
{
  background (0,0,128);
  for(int i =0;i<sun.length; i++)
 {
   sun[i].show();
 }
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
 //if (keyCode == DOWN)


 }
