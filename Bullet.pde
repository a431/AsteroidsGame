class Bullet extends Floater {
	Bullet () {
		myDirectionX = bob.getMyX();
        myDirectionY = bob.getMyY();
        myPointDirection = bob.getMyDirectionX();
        myCenterX = bob.getMyDirectionY();
        myCenterY = bob.getMyPointDirection();
        accelerate(.5);

	} 
	public void show() {
		fill(255);
		ellipse((float)myCenterX, (float)myCenterY, (float)10, (float)10);

	}
	public void move() {
		super.move();
	}

}
