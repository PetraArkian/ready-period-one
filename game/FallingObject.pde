class FallingObject{
  float x; //the x coord of the object
  float y; //the y coord of the object
  boolean notCaught; //whether or not the object is currently visible
  float speed; //the speed at which the object falls down the page
  int pointValue;

  //constructor, initializes the object at the top of the screen with a starting speed
  FallingObject(){
    this.init();
    speed = random(2,3);
    pointValue = 1;
  }

  void fall(){
    y += speed;
    if(y > height){ //if the object falls off the bottom of the screen, reset it and put it back at the top
      this.init();
    }
  }

  void isCaught(){
    notCaught = false;
  }


  void render(){
    if (this.notCaught){
      fill(255);
      ellipse(x, y, 30, 30);
    }
  }

  float getX(){
    return this.x;
  }

  float getY(){
    return this.y;
  }

  //initializes the object at the top of the screen
  void init(){
    this.y = random(height) * -1;
    this.x = random(width); //set x to a random float in the range of the width of the canvas
    this.notCaught = true;
  }

}
