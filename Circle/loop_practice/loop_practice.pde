int nRect = 8;

void setup() 
{
 size(800,800);
 float d = width/nRect;
 noStroke();
 
   for(int y = 0;y < nRect; y = y + 1)
  {
    for(int x = 0; x < nRect; x = x + 1)
    {
      if((x+y) % 2 >0)
      {
        fill(0);
      }
      else
      {
      fill(255);
      }
      rect(x * d, y * d, d, d);
      println("x = "+x+" y ="+y);
    }
  }
}
