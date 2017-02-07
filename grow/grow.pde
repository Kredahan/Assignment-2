
//Assignment 2 : Katamari Damacy Inspired 2d Game
Enemies enemy1;
Player player;

PShape enemy;

void setup()
{
 size(800,800); 
 enemy1 = new Enemies();
 player = new Player();
  
}

void draw()
{
  background(0);
  fill(255);
  
  // Creating the enemy Shape
  enemy = createShape();
  enemy.beginShape();
  
  enemy.fill(102);
  enemy.stroke(255);
  enemy.strokeWeight(2);
  // Drawing the enemy shape (skull)
  enemy.vertex(300,520);
  enemy.vertex(400,520);
  enemy.vertex(420,470);
  enemy.vertex(430,470);
  enemy.vertex(460,450);
  enemy.vertex(465,390);
  enemy.vertex(460,360);
  enemy.vertex(420,325);
  enemy.vertex(400,320);
  enemy.vertex(350,315);
  enemy.vertex(300,320);
  enemy.vertex(280,325);
  enemy.vertex(240,360);
  enemy.vertex(235,390);
  enemy.vertex(240,450);
  enemy.vertex(270,470);
  enemy.vertex(280,470);
  
  enemy.beginContour(); //cutting out the left eye
  enemy.vertex(280,420);
  enemy.vertex(310,420);
  enemy.vertex(310,450);
  enemy.vertex(280,450);
  enemy.endContour();
  
  enemy.beginContour(); //cutting out the right eye
  enemy.vertex(390,420);
  enemy.vertex(420,420);
  enemy.vertex(420,450);
  enemy.vertex(390,450);
  enemy.endContour();

  enemy.endShape(CLOSE); // ending the construction of the enemy shape
  
  
  shape(enemy, 400,400,150,150);
  enemy1.display();
  player.display();
}


void keyPressed()
{
  if(key == 'w')
  {
    
  }
  
  if(key == 'a')
  {
    
  }
  
  if(key == 'd')
  {
   
  }
  
  if(key == 's')
  {
    
  }
  
  
}