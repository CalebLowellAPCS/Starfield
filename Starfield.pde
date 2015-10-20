//your code here
void setup()
{
	//your code here
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double myX, myY, mySpeed, myAngle;
	color myColor;

	NormalParticle(){

	}

	void move(){

		myX = myX + (cos(myAngle)*mySpeed);
		myY = myY + (sin(myAngle)*mySpeed);

	}

	void show(){
		
		myColor = fill(50, 50, 59);
	}

	//your code here
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

