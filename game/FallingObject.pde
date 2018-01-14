class FallingObject{
  float x; //the x coord of the object
  float y; //the y coord of the object
  boolean notCaught; //whether or not the object is currently visible
  float speed; //the speed at which the object falls down the page
  int pointValue;
  int pointDecrease;
  boolean dropped;
  String type;

  //constructor, initializes the object at the top of the screen with a starting speed
  FallingObject(){
    this.init();
    speed = random(2,3);
    pointValue = 1;
    dropped = false;
    type = "default";
  }

  //moves the object one frame down the screen and deals with falling off the bottom
  void fall(int v){
    y += speed*v;
    dropped = false;
    if(y > height){ //if the object falls off the bottom of the screen, reset it and put it back at the top
      if(this.notCaught){
        dropped = true;
      }
      this.init();
    }
  }

  //changes the object to caught
  void isCaught(){
    notCaught = false;
  }

  //draws the object (will be overridden by subclasses)
  void render(){
    if (this.notCaught){
      fill(255);
      ellipse(x, y, 30, 30);
    }
  }

  //returns the x coordinate
  float getX(){
    return this.x;
  }

  //returns the y coordinate
  float getY(){
    return this.y;
  }

  //initializes the object at the top of the screen
  void init(){
    this.y = random(height) * -1; //sets a random "delay" before the object enters the screen
    this.x = random(width); //set x to a random float in the range of the width of the canvas
    this.notCaught = true;
  }

}
