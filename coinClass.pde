class Coin 
{
  float x,y,w,h;
  
  Coin(float cX, float cY, float cW, float cH)
  {
    x = cX;
    y = cY;
    w = cW;
    h = cH;    
  }
  
  void update()
  {
    noStroke();
    ellipse(x,y,w,h);
    fill(0,0,0,50);
    ellipse(x,y,w/2,h/2);
    stroke(255);
    fill(255,255,0);
    x -= fgSpeed;
    
    if (x >= player.x && x <= player.x + player.w && y >= player.y && y <= player.y + player.h)
    {  
      h = 0;
      score +=1;
    }
  }
}
