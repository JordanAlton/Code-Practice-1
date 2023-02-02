float _cy = 0.00; //Circles x location
float _cx = 0.00; //Circles x location
float _cdx = random(1,50); //speed
float _cdy = random(1,15); //speed

void setup() //Window Maker
{
 size (800,600); //set size 
}

void draw()
{
  noStroke(); //removes outline
  fill(0,0,0,10); //Fills rectangle
  rect(0,0,width,height); //Makes the background
  fill(255); //Sets the circle to white
 circle(_cx,_cy,40); //Makes Circle
 _cx =  update(_cx,_cdx);
 _cy =  update(_cy,_cdy);
 _cdx = check(_cx,_cdx,0,width);
 _cdy = check(_cy,_cdy,0,height);
}


float update(float value, float increment)
{
 return(value + increment); 
}

float check(float value, float delta, float lower_limit, float upper_limit)
{
  
  if(value > upper_limit || value < lower_limit) //checks to see if it is > width or < 0
{
  return(delta * (-1)); 
}
  return(delta);
}
