planet sun;
int nGen = 0;
void setup()
{
 size(1200,800); 
sun = new planet(9);
sun.size = 80;
sun.dist = 0;
sun.speed = 0;
sun.col = color(255,180,0);
}

void draw()
{
 noStroke();
 fill(0,0,0,5);
 rect(0,0,width,height);
 translate(width/2,height/2);
 sun.update;
 sun.draw;
}
