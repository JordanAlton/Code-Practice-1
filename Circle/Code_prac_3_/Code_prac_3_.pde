int _nPlanets = 25;
float[] _angle = new float[_nPlanets];
float[] _speed = new float[_nPlanets];
float[] _distance = new float[_nPlanets];
float[] _size = new float[_nPlanets];
color[] _color = new color[_nPlanets];
boolean[] _isMoon = new boolean[_nPlanets];

void setup()
{
 size(900,700); 
 for(int i = 0; i < _nPlanets; i = i + 1)
 {
   _speed[i] = random(-1.18,1.18);
   _angle[i] = 0.0;
   _distance[i] = random(100,400);
   _size[i] = random(20,50);
   _color[i] = color(random(255),random(255), random(255));
   _isMoon[i] = random(-1,1) > 0;
 }
}

void draw()
{
 noStroke();
 fill(0,0,0,10);
 rect(0,0,width,height);
 
 translate(width/2, height/2);
 scale(1);
 for(int i = 0; i < _nPlanets; i = i + 1)
 {
  drawPLANET(_angle[i], _distance[i], _size[i], _color[i], _isMoon[i]);
  _angle[i] = _angle[i] + _speed[i];
 }
 
}

void drawPLANET(float angle, float distance, float size, color c, boolean _isMoon) 
{
  if(_isMoon)pushMatrix();
   rotate(radians(angle));
   translate(0,distance);
   fill(c);
   circle(0,0,size);
  if(_isMoon) popMatrix(); 
}
