class Player{
  final float COLLIDERSIZE = 15; //an adjustable variable to change the sensitivity for collisions
  float x; //the x coordinate of the player
  float y; //the y coordinate of the player

  //constructor, takes in the initial x and y values
  Player(float x, float y){
    this.x = x;
    this.y = y;
  }

  //sets the x and y coordinates to new values
  void move(float x, float y){
    this.x = x;
    this.y = y;
  }

  //returns true if the player is touching a given object, false if it is not
  //note: this method should be improved upon for smooth gameplay
  boolean isTouching(FallingObject o){
    if( (abs(o.getX() - x) < COLLIDERSIZE) && (abs(o.getY() - y) < COLLIDERSIZE) ){
      return true;
    }
    return false;
  }

  //draws the player on the screen (currently just a red dot)
  void render(){
    fill(200, 50, 50);
    ellipse(x, y, 50, 50);
  }

}
