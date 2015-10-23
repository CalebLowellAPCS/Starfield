NormalParticle [] potato;
//your code here
void setup()
{
	size(512, 512);

	//your code here
	potato = new NormalParticle [1000];
	for (int i = 0; i < potato.length; i++){
		
		potato[i] = new NormalParticle();
	}
}
void draw()
{
	background(0);
	for (int i = 0; i < potato.length; i++){

		potato[i].move();
		potato[i].show();
	}
	//your code here

}
class NormalParticle implements Particle
{
  double dX, dY, dSpeed, dAngle;
  color dColor;

  NormalParticle(){
    
    dX = 256;
    dY = 256;
    dSpeed = (Math.random() * 7) + 1;
    dAngle = (Math.random() * (2 * Math.PI));
    dColor = (255);



	}

	public void move(){

		if((dX > 512 || dX < 0) || (dY > 512 || dY < 0)){

	    	dX = 256;
	    	dY = 256;
		    dSpeed = (Math.random() * 7) + 1;
		    dAngle = (Math.random() * (2 * Math.PI));

	    }
    
    dX = dX + (cos((float)(dAngle)) * dSpeed);
    dY = dY + (sin((float)(dAngle)) * dSpeed);

	}
	public void show(){
		
      stroke(dColor);
      strokeWeight(2);
      point((int) dX, (int) dY);
	}

	//your code here
}
interface Particle
{
	public void show();
	public void move();
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