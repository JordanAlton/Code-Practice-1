PFont myfont;

void setup()
{
  size(1000, 800);
  myfont = createFont("elite.ttf",100);
}

void draw()
{
  fill(0);
  textSize(128);
  line(width/2,0,width/2,height);
  textAlign(RIGHT);
  text("Better be", width/2,height/2,400,400);
  /*
  textFont(myfont);
  textSize(64);
  fill(frameCount);
  text("better  to be a samurai in a garden than a gardener in a war",100,100, width - 100, height - 100);
  
  noFill();
  rect(100,100,width - 100, height - 100);
  */
}
