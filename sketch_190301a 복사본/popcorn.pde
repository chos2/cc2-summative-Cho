class popcorn
{
  PVector pos;
  PVector dir;
  float size;
  
  
  popcorn(float x, float y)
  {
    pos = new PVector(x,y);
    dir = new PVector(random(-5,5),random(-5,5));
    size = random(30,80);
 
    
  }
  
  void Draw()
  {image(popcorn,pos.x,pos.y,size,size);
  }
  
  void update()
  {
    if( pos.y<700)
    {pos.add(dir);
    
    dir.add(0,.3);
    
    }
  }}
