PImage popcorn;
ArrayList<popcorn> pop = new ArrayList<popcorn>();
PImage stove;
PImage seed;
PImage frypan;
PVector buttonA = new PVector(100, 50);
PVector buttonB = new PVector(150, 80);
import processing.sound.*;
SoundFile corn;



void setup()

{
  size(800, 800);
  popcorn = loadImage("popcorn.png");
  stove = loadImage("stove.jpg");
  frypan = loadImage("frypan.jpg");
  seed = loadImage("seed.png");
  corn = new SoundFile(this,"popcorn.mp3");
  
 

  
}



void draw()
{
  background(0);
  background(frypan);
  image(seed, 100, 300, 250, 250);
  rect(buttonA.x, buttonA.y, buttonB.x, buttonB.y);
  fill(255);

  textSize(35);
  text("Stove On", 100, 100);
  fill(0);

  if (mousePressed)
  {
    if (mouseX>buttonA.x && mouseX <buttonA.x+buttonB.x && mouseY>buttonA.y && mouseY <buttonA.y+buttonB.y)
    {
corn.play();
corn.rate(10);

  
      pop.add(new popcorn(300, 300));
    }
  }
  for (int i=0; i< pop.size(); i++)
  {
    pop.get(i).update();
    pop.get(i).Draw();
    
  }
  
} 
