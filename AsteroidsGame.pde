Spaceship bob = new Spaceship();
Star [] nightSky = new Star [500];
ArrayList <Bullet> magazine = new ArrayList <Bullet> ();
ArrayList <Asteroid> asteroidField = new ArrayList <Asteroid> ();
public void setup() 
{
  size(500,500);
  for (int i = 0; i < 500; i++) {
  	nightSky[i] = new Star();
  }
  for (int i = 0; i < 10; i ++) {
  	asteroidField.add(new Asteroid());
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
    for (int i = 0; i < 10; i++) {
    	asteroidField.get(i).show();
    	asteroidField.get(i).move();
    }
    for (int i = 0; i < magazine.size(); i++) {
    	magazine.get(i).show();
    	magazine.get(i).move();
    }
}

public void keyPressed() {
	if (key == ' ') { //hyperspace
		bob.hyperspace();
	} else if (key == 'a') { //left
		bob.myPointDirection -=30; 
	} else if (key == 'd') {//right
		bob.myPointDirection +=30;
	} else if (key == 'w' && bob.myDirectionX < 20 && bob.myDirectionY < 20) { //accelerate
		bob.accelerate(.6);
	} else if (key == 's' && bob.myDirectionX < 20 && bob.myDirectionY < 20) {
		bob.accelerate(-.4);
	} else if (key == 'e') {
		magazine.add(new Bullet());
	}
}

