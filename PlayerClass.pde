class Player
{
  float x, y, s, w, h;

  Player(float posX, float posY, float pSpeed, float pWidth, float pHeight)
    {
      x = posX;
      y = posY;
      s = pSpeed;
      w = pWidth;
      h = pHeight;
    }
    
    void update()
    {
      noStroke();
      fill(0,0,255);
      
    if(y + h <= height - blockH * 0.5f)
    {
      y += grav;
    }
      
    if (jump == 2 && y >= 0)
    {
      y -= s * 2f;
    }
    
    if (throttle == 3 && x + w <= width)
    {
      x+= s;
    }
    
     if (throttle == 1 && x >= 0)
    {
      x-= s;
    }
    
    fill(0,0,0,50);
    ellipse(x + 15,450,w/2,h/4);
    image(playerSPR,x,y);

    
    }
}