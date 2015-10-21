NormalParticle [] potato;
//your code here
void setup()
{
	size(512, 512);
	background(0);

	//your code here
	potato = new NormalParticle [10];
	for (int i = 0; i < potato.length; i++){
		
		potato[i] = new NormalParticle();
	}
}
void draw()
{
	for (int i = 0; i < potato.length; i++){

		potato[i].move();
		potato[i].show();
	}
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
    dColor = (255);

	}

	void move(){
     
    dX = dX + (cos((float)(dAngle)) * dSpeed);
    dY = dY + (sin((float)(dAngle)) * dSpeed);

	}

	void show(){
		
      stroke(dColor);
      point((int) dX, (int) dY);
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