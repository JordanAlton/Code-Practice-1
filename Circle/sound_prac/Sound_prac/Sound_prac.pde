import processing.sound.*;

Amplitude amp; 
Waveform waveform;
AudioIn in;
SoundFile in2;
WhiteNoise in3;
SinOsc in4;

int samples = 100;

 

void setup()
{
  size(1200,900);
  background(255);
  
  //in = new AudioIn(this,0);
  //in.start();
   
  //in2 = new SoundFile(this,"drama.mp3");
  //in2.loop();
  
  //in3 = new WhiteNoise(this);
  //in3.play();
  
  in4 = new SinOsc(this);
  in4.play();
  
    amp = new Amplitude(this);
  waveform = new Waveform(this, samples);
  amp.input(in4);
  waveform.input(in4);
}

void draw()
{
  in4.amp((mouseY+0.0001)/height);
  in4.freq(mouseX);
  
 background(100);
  noStroke();
  fill(255,200,200);
  circle(width/2,height/2,(amp.analyze()*500)+50);
  strokeWeight(1);
  stroke(0,150,255);
  noFill();
  waveform.analyze();
  
  beginShape();
  for(int i = 0; i < samples; i++)
  {
    vertex(
      map(i, 0, samples, 0, width),
      map(waveform.data[i], -1, 1, 0, height)
    );
  }
  endShape();
}
