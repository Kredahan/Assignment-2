
//Assignment 2 : Katamari Damacy Inspired 2d Game
Enemies enemy1;
Player player;

PShape hero;
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
  
  hero = createShape();
  hero.beginShape();
  hero.fill(41,85,99);
  hero.stroke(255);
  hero.strokeWeight(2);
  // Drawing the player shape
  hero.vertex(300,520);
  hero.vertex(400,520);
  hero.vertex(460,450);
  hero.vertex(465,390);
  hero.vertex(460,360);
  hero.vertex(420,325);
  hero.vertex(400,320);
  hero.vertex(350,315);
  hero.vertex(300,320);
  hero.vertex(280,325);
  hero.vertex(240,360);
  hero.vertex(235,390);
  hero.vertex(240,450);
  
  hero.beginContour(); //cutting out the left eye
  hero.vertex(280,420);
  hero.vertex(310,420);
  hero.vertex(310,450);
  hero.vertex(280,450);
  hero.endContour();
  
  hero.beginContour(); //cutting out the right eye
  hero.vertex(390,420);
  hero.vertex(420,420);
  hero.vertex(420,450);
  hero.vertex(390,450);
  hero.endContour();
  
  hero.beginContour();//cutting out the mouth
  hero.vertex(310,480);
  hero.vertex(390,480);
  hero.vertex(390,490);
  hero.vertex(310,490);
  
  hero.endContour();
  hero.endShape(CLOSE);
  
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
  
  player.display();
  enemy1.display();
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