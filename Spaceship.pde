class Spaceship extends Floater  
{   
    public Spaceship() {
    	corners = 3;
    	xCorners = new int [corners];
    	yCorners = new int [corners];
    	xCorners[0] = -6;
    	yCorners[0] = -6;
    	xCorners[1] = 12;
    	yCorners[1] = 0;
    	xCorners[2] = -6;
    	yCorners[2] = 6;
        myColor = (255);
        myCenterX = 250;
        myCenterY = 250;
        myDirectionX = 0;
        myDirectionY = 0;
        myPointDirection = 0;
    }
    
    public void hyperspace() {
        myDirectionX = 0;
        myDirectionY = 0;
        myPointDirection = 0;
        myCenterX = Math.random() * 500;
        myCenterY = Math.random() * 500;
    }
    
    public float getX () {
        return (float)myCenterX;
    }
    public float getX () {
        return (float)myCenterX;
    }
    
}
