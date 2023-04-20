float _cx = 0.01; //Circles x location
float _cd = 5; //speed

void setup() //Window Maker
{
  float whatever = 100.0;
 size (400,00); //set size 
}

void draw()
{
  noStroke(); //removes outline
  fill(0,0,0,10); //Fills rectangle
  rect(0,0,width,height); //Makes the background
  fill(255); //Sets the circle to white
 circle(_cx,height/2,40); //Makes Circle
 _cx = _cx +  _cd; //Moves the circle
  if(_cx > width || _cx < 0) //checks to see if it is > width or < 0
  {
   _cd = _cd * (-1); //If either is true it activates multiplying current by -1
  }
  else
  {
    
  }
}
