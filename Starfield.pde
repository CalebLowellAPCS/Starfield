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
  double dX, dY, dSpeed, dAngle;
  color dColor;

  NormalParticle(double x, double y){
    
    dX = x;
    dY = y;
    dSpeed = Math.random() * 10;
    dAngle = (Math.random() * (2 * Math.PI));

	}

	void move(){
     
    dX = dX + (cos((float)(dAngle)) * dSpeed);
    dY = dY + (sin((float)(dAngle)) * dSpeed);

	}

	void show(){
		
      fill(dColor);
	}

	//your code here
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an terface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}