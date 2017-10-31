
class Stars //note that this class does NOT extend Floater
{
 public Stars ()
 {

  //myX = Math.random()*360;
 // myY = Math.random()*360;
  
 }
 public void show()
 {
   ellipse(((int)Math.random()*360),((int)Math.random()*360),20,20);
   fill(250,250,250);
}
}
