class Stars //note that this class does NOT extend Floater
{
  int myX, myY;
 public Stars ()
 {

  myX = (int)(Math.random()*500);
  myY = (int)(Math.random()*500);
  
 }
 public void show()
 {
   ellipse((int)myX,(int) myY,8,8);
   fill(255,255,0);
}
}
