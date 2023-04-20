class planet
{
 float speed = 1.0;
 float angle = 0.0;
 float dist = 100.0;
 float size = 10.0;
 color col = color(255,255,255);
 int nMoons = 0;
 int gen = 2;
 ArrayList<planet> moons = new ArrayList<planet>();
 
 planet(int _gen)
 {
 this.speed = random(-1,1);
 this.dist = random(20,300);
 if(this.gen>0)
 {
 this.nMoons = 1;
 }
 this.col=color(random(255),random(255),random(255));
 for(int i = 0; i <this.nMoons; i = i +1)
 {
   planet aMoon = new planet();
   aMoon.col = this.col;
  this.moons.add(aMoon); 
  
 }
 }
 
 void update() 
 {
  this.angle = this.angle + this.speed;
 }
 
 void draw()
 {
  pushMatrix();
  rotate(radians(this.angle));
  translate(0,this.dist);
  fill(this.col);
  circle(0,0,this.size);
  for(int i = 0; i<this.nMoons; i = i + 1)
  {
   planet aMoon = this.moons.get(i);
   aMoon.update();
   aMoon.draw();
  }
  popMatrix();
 }
}
