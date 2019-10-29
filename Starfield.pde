//your code here
Particle[] dots = new Particle[500];
void setup()
{
	//your code here
	background(0);
	size(500, 500);
	for (int i=0; i<dots.length; i++){
		dots[i]=new Particle();
	}
}
void draw()
{
	//your code here
	if(!mousePressed){
	fill(0);
	rect(0, 0, 500, 500);
	}
	fill(0, 0, 0, 5);
	rect(0, 0, 500, 500);
	for (int i=0; i<dots.length; i++){
		dots[i].show();
		dots[i].move();
	}
}
class Particle
{
	//your code here
	double myX, myY, myAngle, mySpeed;
	int myColor;
	Particle(){
		myX=250;
		myY=250;
		myAngle=Math.random()*2*Math.PI;
		mySpeed=Math.random()*10;
		myColor=color(140, (int)(Math.random()*55+200), (int)(Math.random()*55+200));
	}
	void move(){
		myX+=Math.cos(myAngle)*mySpeed;
		myY+=Math.sin(myAngle)*mySpeed;
	}
	void show(){
		fill(myColor);
		noStroke();
		ellipse((float)myX, (float)myY, 10, 10);
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


