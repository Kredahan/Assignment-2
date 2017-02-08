
//Assignment 2 : Katamari Damacy Inspired 2d Game
Enemies[] enemyarr;
Enemies hit;
Player player;

PImage bg;
PShape hero;
PShape enemy;
float score = 0;

void setup()
{
 size(800,800); 
 bg = loadImage("dark_texture2.jpg");
 enemyarr = new Enemies[10];
 hit = new Enemies();
 player = new Player();
 
 for(int i = 0;i < 10; i++)
 {
   enemyarr[i] = new Enemies();
 }
  
}

void draw()
{
  background(bg);
  drawGrid();
  
  
  /* I originally planned on using PShapes I made to represent the Player and Enemies but the
     PShapes were incredibly difficult to get right when it came to their visual representation
     on screen to match their actual location exactly, making it very difficult to account for 
     collision regarding objects of different sizes. */
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
  player.pradius = player.pSize/2;
  for(int i = 0; i<10;i++)
  {
    enemyarr[i].eradius = enemyarr[i].eSize/4;
    enemyarr[i].display();
  }
  
  collision();
}

void drawGrid()
{
  for(int i=0; i<width - 50; i+=80)
  {
   stroke(138,43,226,140);
   line(i,0,i,height);
  }
 for(int w=0; w<height - 50; w+=80) 
 {
   stroke(138,43,226,140);
   line(0,w,width ,w);
 }
}

 void collision()
  {
    /*for(int i=0;i<10;i++)
    {
      Enemies hit = enemyarr[i];
      
      float dx = player.xLocation - hit.eLocation.x;
      float dy = player.yLocation - hit.eLocation.x;
      float d = sqrt(sq(dx)+sq(dy)); // distance between balls
      
      if(d<hit.eradius + player.pradius)
      {
        score = score + enemyarr[i].eSize;
        enemyarr[i].eLocation.x = random(10,790);
        enemyarr[i].eLocation.y = random(10,790);
        enemyarr[i].eSize = random(50,300);
        
        
      }*/
      
      for(int i=0;i<10;i++)
      {
          if( dist( enemyarr[i].eLocation.x, enemyarr[i].eLocation.y, player.xLocation, player.yLocation) < 50)
          {
              player.pSize = player.pSize + ((enemyarr[i].eSize)/10);
              score = score + enemyarr[i].eSize;
              enemyarr[i].eLocation.x = random(10,790);
              enemyarr[i].eLocation.y = random(10,790);
              enemyarr[i].eSize = random(50,300);
          }
      }

      
      
    }