/*@pjs preLoad="Cuterus.png"*/
class Player{
  final float COLLIDERSIZE = 30; //an adjustable variable to change the sensitivity for collisions
  float x; //the x coordinate of the player
  float y; //the y coordinate of the player
  Cycle[] unlocked;
  Cycle currentCycle;
  boolean centralized = false;   //state of being centralized (i.e. site map); initialize to false

  //constructor, takes in the initial x and y values
  Player(float x, float y){
    this.x = x;
    this.y = y;
    unlocked = new Cycle[3];
    unlocked[0] = new Cycle();
    unlocked[1] = new Cycle1();
    unlocked[2] = new Cycle2();
    unlocked[3] = new Cycle3();
    //currentCycle = new Cycle1();
    currentCycle = new Cycle1();
    cute = loadImage("Cuterus.png");
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
    //fill(200, 50, 50);
    //ellipse(x, y, 50, 50);
    image(cute, x - 50, y - 30, 80, 60);
  }

  //method to render the "centralized" screen (i.e. the site map)
  void centralize() {
    centralized = true;
  }


}
