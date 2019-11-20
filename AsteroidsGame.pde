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
	bob.move ();
    bob.show ();
    for (int i = 0; i < 500; i++) {
    	nightSky[i].show();
    }
}

public void keyPressed() {
	if (key == ' ') { //hyperspace
		bob.hyperspace();
	} else if (key == 'a') { //left
		bob.myPointDirection -=15; 
	} else if (key == 'd') {//right
		bob.myPointDirection +=15;
	} else if (key == 'w' && bob.myDirectionX < 20 && bob.myDirectionY < 20) { //accelerate
		bob.accelerate(.6);
	} else if (key == 's' && bob.myDirectionX < 20 && bob.myDirectionY < 20) {
		bob.accelerate(-.4);
	}
}

