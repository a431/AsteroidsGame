class Asteroid extends Floater {
	private int rotSpeed;
	public Asteroid () {
		corners = 4;
		xCorners = new int [corners];
		yCorners = new int [corners];
		xCorners[0] = -10;
		yCorners[0] = 10;
		xCorners[1] = 10;
		yCorners[1] = 10;
		xCorners[2] = 10;
		yCorners[2] = -10;
		xCorners[3] = -10;
		yCorners[3] = -10;
		myColor = (255);
        myCenterX = Math.random() * 500;
        myCenterY = Math.random() * 500;
        myDirectionX = 3;
        myDirectionY = 3;
        myPointDirection = 0;
        rotSpeed = 4;
    }
		
	
	public void move() {
		turn(rotSpeed);
		super.move();
	}
}