


class Enemies
{
  PVector eLocation; //Enemy Location
  PVector eVelocity; //Enemy Velocity
  float eSize;       //Enemy Size
  float eradius;
  
  Enemies()
  {                         //X Coordinate - Y Coordinate
    eLocation = new PVector(random(10,790),random(10,790));
    eVelocity = new PVector(1,2.5);
    eSize = random(50,200);
    
  }
  
  void display()
  {
      /*shapeMode(CENTER);
      shape(enemy,eLocation.x,eLocation.y,eSize,eSize);*/
      strokeWeight(2);
      stroke(0);
      fill(255);
      ellipse(eLocation.x,eLocation.y,eSize,eSize);
      eLocation.add(eVelocity);
      
       if ((eLocation.x > width -50 ) || (eLocation.x < - 20 )) //The area being rendered was causing issues with the width and height usage, either that or my knoledge of pshapes is lacking and it was causing a problem when I scaled the shape down
       {
          eVelocity.x = eVelocity.x * -1;
        }
      if ((eLocation.y > height -50 ) || (eLocation.y < - 20 )) 
      {
          eVelocity.y = eVelocity.y * -1;
      }

  }
  
 
}