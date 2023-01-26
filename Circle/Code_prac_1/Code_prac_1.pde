float _cx = 0.01;
float _cd = 400;

void setup()
{
 size (800,600);
}

void draw()
{
  noStroke();
  fill(0);
  rect(0,0,width,height);
  fill(255);
 circle(_cx,height/2,40);
 _cx = _cx +  _cd;
  if(_cx > width || _cx < 0) 
  {
   _cd = _cd * (-1);
  }
}
