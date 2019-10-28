//your code here
Particle[] dots = new Particle[1];
void setup()
{
	//your code here
	size(500, 500);
	dots[0]=new Particle();
}
void draw()
{
	//your code here
	dots[0].show();
	dots[0].move();
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
		myColor=color(155, 155, (int)(Math.random()*155+100));
	}
	void move(){
		myX+=Math.cos(mySpeed);
		myY+=Math.sin(mySpeed);
	}
	void show(){
		fill(myColor);
		ellipse((float)myX, (float)myY, 10, 10);
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


