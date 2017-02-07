

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
  float pSize;
  
  Player()
  {
    xLocation = width/2;
    yLocation = height/2;
    pSize = 150;
    
  }
  
  void display()
  {
    fill(255);
    rect(xLocation,yLocation,pSize,pSize); // early days...
  }
  
  
  
  
}