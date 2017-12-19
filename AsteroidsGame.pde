ArrayList <Bullet> sue;
 Spaceship bob;
ArrayList <Asteroid> asteroids;
Stars[] sun = new Stars[100];
public void setup() 
{
  size(500,500);
  for(int i =0; i<sun.length; i++)
  { 
    sun[i] = new Stars();
  } 
  bob  = new Spaceship();
 asteroids = new ArrayList <Asteroid>();
 for (int i = 0; i <20; i++)
 {
   asteroids.add(i, new Asteroid());
 } 
sue = new ArrayList <Bullet>(); 
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
  

  for(int i =0; i<asteroids.size();i++)
  {
    asteroids.get(i).show();
    asteroids.get(i).move();
  }
   for( int i = 0; i<asteroids.size(); i++)
 {
   double d = dist(bob.getX(), bob.getY(), asteroids.get(i).getX(), asteroids.get(i).getY());
   if(d <20)
   asteroids.remove(i);
 }
 
 for (int i =0; i <sue.size() ; i++)
  {
   sue.get(i).show();
    sue.get(i).move();
    
  }
  
  for (int i =0; i<sue.size(); i++)
  {
    for (int j = 0; j<asteroids.size(); j++)
    {
       if (dist(sue.get(i).getX(), sue.get(i).getY(), asteroids.get(j).getX(), asteroids.get(j).getY())<30)
      {
      asteroids.remove(j);
      sue.remove(i);
      break;
      
      }
    }
  }
 
}

public void keyPressed()
 { 
   if(key == 'b')
   {
     sue.add(new Bullet(bob));
   }
   if (key == 'a')
   {
   bob.turn(7);
 }
 if (key == 'd')
 {
   bob.turn(-7);
 }
   if (key == 's')
   {
     bob.accelerate(1);
 }
 if (key == 'w')
 {
   bob.setDirectionX(0);
   bob.setDirectionY(0);
   bob.setPointDirection((int)(Math.random()*360));
   bob.setX((int)(Math.random()*500));
  bob.setY((int)(Math.random()*500));
 }


 }
