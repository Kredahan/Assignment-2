

/*

What the Player class needs: 
-Start coordinates                             
-Size that can change dynamically
-Shape
-Colour 
-Vectors for moving around (maybe not as its the player that moves the shape)
-Health
-Method to prevent the player from exiting the arena
-Banter (srs)
*/
class Player
{
  float xLocation;
  float yLocation;
  float smoothness;
  float pSize;
  float pradius;
  
  Player()
  {
    xLocation = mouseX;
    yLocation = mouseY;
    smoothness = 0.05;
    pSize = 150;
    
  }
  
  void display()
  {
    float targetX = mouseX;
    float dx = targetX - xLocation;
    xLocation += dx * smoothness;
  
    float targetY = mouseY;
    float dy = targetY - yLocation;
    yLocation += dy * smoothness;
     // early days...
    /*shapeMode(CENTER);
    shape(hero,xLocation,yLocation,pSize,pSize);*/
    stroke(255);
    fill(0);
    ellipse(xLocation,yLocation,pSize,pSize);
  }
  
  
}