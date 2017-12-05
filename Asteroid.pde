
class Asteroid extends Floater
{
  private int speed;
public Asteroid()
{
 corners =8;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] = -15;
  yCorners[0] = -15;
  xCorners[1] = 0;
  yCorners[1] = -15;
  xCorners[2] = 15;
  yCorners[2] = -15;
  xCorners[3] = 25;
  yCorners[3] = 0;
  xCorners[4] = 15;
  yCorners[4] = 15;
  xCorners[5] = 0;
  yCorners[5] = 25;
  xCorners[6] = -15;
  yCorners[6] = 15;
  xCorners[7] = -15;
  yCorners[7] = 0;
  myColor = color(160,67,33);
  myCenterX = (int)(Math.random()*400);
  myCenterY = (int)(Math.random()*400);
  myDirectionX = (Math.random()*5)-2;
  myDirectionY = (Math.random()*5)-2;
  myPointDirection= (int)Math.random()*360;
 speed = (int)(Math.random()*5+2);

  }

  public void move()
  {
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
    myPointDirection+=speed;  
   
    if(speed == 0)
    {
      speed = (int)(Math.random()*5-2);
    }
    if(myDirectionX == 0)
    {
      myDirectionX = (int)(Math.random()*5-2);
    }

    if(myDirectionY == 0)
    {
      myDirectionY = (int)(Math.random()*5-2);
    }

   if(myCenterX >500)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = 500;    
    }    
    if(myCenterY >500)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = 500;    
    }      
  
         
  }
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;} 
  public void setY(int y){myCenterY= y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}  
  public double getPointDirection(){return myPointDirection;}
}
