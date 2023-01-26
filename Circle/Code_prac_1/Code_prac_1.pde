float _cx = 0;

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
 _cx = _cx+1;
  if(_cx > width) 
  {
    _cx = width;
    _cx = width--;
  }
  if(_cx < 0)
  {
    _cx = 0;
    _cx = height++;
  }
}
