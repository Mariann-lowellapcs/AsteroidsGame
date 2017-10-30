class Spaceship extends Floater
{
  public Spaceship()
  {
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = -20;
    yCorners[1] = 20;
    xCorners[2] = 20;
    yCorners[2] = 20;
    myColor = color(211,211,211);
    myCenterX = 250;
    myCenterY = 250;
    myDirectionX = 0;
    myDirectionY =0;
    myPointDirection = (int)(Math.random()*360);
   
    
    
    
  }
 public void setX(int x){myCenterX = x;}
 public int getX() {return (int)myCenterX;}
 public void setY(int y){myCenterY=y;}
 public int getY(){return(int)myCenterY;}
 public void setDirectionX(double x){myDirectionX=x;}
 public double getDirectionX(){return (double)myDirectionX;}
 public void setDirectionY(double y){myDirectionY =y;}
 public double getDirectionY(){return (double)myDirectionY;}
 public void setPointDirection (int degrees){myPointDirection = degrees;}
 public double getPointDirection() {return(double)myPointDirection;}
 
 

 
  
}
