


class Enemies
{
  PVector eLocation; //Enemy Location
  PVector eVelocity; //Enemy Velocity
  float eSize;       //Enemy Size
  
  Enemies()
  {                         //X Coordinate - Y Coordinate
    eLocation = new PVector(random(10,790),random(10,790));
    eVelocity = new PVector(2.5,5);
    eSize = random(100,200);
  }
  
  void display()
  {
      shape(enemy,eLocation.x,eLocation.y,eSize,eSize);
      eLocation.add(eVelocity);
      
       if ((eLocation.x > width - 120) || (eLocation.x < - 90)) //The area being rendered was causing issues with the width and height usage, either that or my knoledge of pshapes is lacking and it was causing a problem when I scaled the shape down
       {
          eVelocity.x = eVelocity.x * -1;
        }
      if ((eLocation.y > height - 120) || (eLocation.y < - 90)) 
      {
          eVelocity.y = eVelocity.y * -1;
      }

  }
  
}