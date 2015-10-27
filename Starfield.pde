Particle [] potato;
//your code here
void setup()
{
	size(512, 512);

	//your code here
	potato = new Particle [1000];
	for (int i = 0; i < potato.length; i++){
		
		potato[i] = new NormalParticle();
		potato[0] = new OddballParticle();
          potato[1] = new JumboParticle();
	}
}
void draw()
{
	background(0);
	for (int i = 0; i < potato.length; i++){

		potato[i].move();
		potato[i].show();
          potato[0].move();
          potato[0].show();
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

class OddballParticle implements Particle //uses an terface
{
	double cX, cY, cSpeed, cAngle;
  	color cColor;
	OddballParticle(){

    cX = 256;
    cY = 256;
    cSpeed = (Math.random() * 7) + 1;
    cAngle = (Math.random() * (2 * Math.PI));
    cColor = color(255, 0, 0);

	}

	public void move(){

		if((cX > 512 || cX < 0) || (cY > 512 || cY < 0)){

	    	cX = 256;
	    	cY = 256;
		    cSpeed = (Math.random() * 7) + 1;
		    cAngle = (Math.random() * (2 * Math.PI));

	    }
    
    	cX = cX + (cos((float)(cAngle)) * cSpeed);
    	cY = cY + (sin((float)(cAngle)) * cSpeed);

	}

	public void show(){

      stroke(cColor);
      strokeWeight(5);
      point((int) cX, (int) cY);

	}
	//your code here
}
class JumboParticle extends NormalParticle //uses inheritance
{
	public void show()
{
     stroke(dColor);
     strokeWeight(25);
     point((int) dX, (int) dY);
	}
	//your code here
}