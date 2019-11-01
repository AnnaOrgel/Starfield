Particle[] dots = new Particle[200];
float rot=0;
void setup()
{
  //your code here
  background(0);
  size(500, 500);
  for (int i=0; i<dots.length; i++){
    dots[i]=new Particle();
  }
  for (int i=0; i<10; i++){
  dots[i]=new OddballParticle();
  }
}
void draw()
{
  //your code here
  if(!mousePressed){
  fill(0);
  rect(0, 0, 500, 500);
  }
  fill(0, 0, 0, 20);
  rect(0, 0, 500, 500);
  translate(250, 250);
  rotate(rot);
  for(int i=0; i<10; i++){
    dots[i].show();
    dots[i].move();
  }
  for (int i=11; i<dots.length; i++){
    dots[i].show();
    dots[i].move();
  }
  rot+=0.01;
}
void keyPressed(){
  redraw();
}
class Particle
{
  //your code here
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle(){
    //translate(250, 250);
    myX=0;
    myY=0;
    myAngle=Math.random()*2*Math.PI;
    mySpeed=Math.random()*10;
    myColor=color(140, (int)(Math.random()*55+200), (int)(Math.random()*55+200));
  }
  void move(){
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
    if(myX>=800 || myX<=-300 || myY>=800 || myY<=-300){
      myX=0;
      myY=0;
      myAngle=Math.random()*2*Math.PI;
      mySpeed=Math.random()*20;
    }
  }
  void show(){
    fill(myColor);
    noStroke();
    ellipse((float)myX, (float)myY, (float)(1+0.075*dist((float)myX, (float)myY, 0, 0)), (float)(1+0.075*dist((float)myX, (float)myY, 0, 0)));
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  //your code here
  OddballParticle(){
    myColor=color(255, 0, 0);
    myAngle=(int)(Math.random()*2*Math.PI);
    myX=0;
    myY=0;
    mySpeed=25;
  }
  void show(){
    fill(myColor);
    ellipse((float)myX, (float)myY, (float)(1+0.1*dist((float)myX, (float)myY, 0, 0)), (float)(1+0.1*dist((float)myX, (float)myY, 0, 0)));
  }
  void move(){
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
    if(myX>=800 || myX<=-300 || myY>=800 || myY<=-300){
      myX=0;
      myY=0;
      myAngle=(int)(Math.random()*2*Math.PI);
      mySpeed=25;
    }
  }
}
