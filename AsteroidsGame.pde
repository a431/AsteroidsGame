//your variable declarations here
Spaceship bob = new Spaceship();
Star [] nightSky = new Star [500];
public void setup() 
{
  size(500,500);
  for (int i = 0; i < 500; i++) {
  	nightSky[i] = new Star();
  }
}
public void draw() 
{
	background(0);
	bob.move();
    bob.show();
    for (int i = 0; i < 500; i++) {
    	nightSky[i].show();
    }
}

public void keyPressed() {
	if (key == ' ') {
		//bob.hyperspace();
	}
}

