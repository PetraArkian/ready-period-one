/*@pjs preLoad="Cuterus.png"*/
/*@pjs preLoad="cup_full.png"*/
/*@pjs preLoad="cup_outline.png"*/
/*@pjs preLoad="smallBack.png"*/
class Player{
  final float COLLIDERSIZE = 50; //an adjustable variable to change the sensitivity for collisions
  float x; //the x coordinate of the player
  float y; //the y coordinate of the player
  ArrayList<Cycle> cycleStack; //the stack containing all the cycles currently in play with the top item equal to the currentCycle
  HashMap<String, Cycle> unlocked; //a map of all of the unlocked cycles with the name of the cycle followed by the cycle object
  //Cycle[] unlocked;
  Cycle currentCycle; //the current cycle also the top item of cycleStack
  //boolean centralized = false;   //state of being centralized (i.e. site map); initialize to false
  int unlockedCount;

  //constructor, takes in the initial x and y values
  Player(float x, float y){
    /*this.x = x;
    this.y = y;
    unlocked = new Cycle[5];
    unlockedCount = 0;
    currentCycle = new Cycle();*/
    this.x = x;
    this.y = y;
    cycleStack = new ArrayList<Cycle>();
    cycleStack.add(new DefaultCycle());
    cycleStack.add(0, new Cycle());
    unlocked = new HashMap<String, Cycle>();
    unlockedCount = 0;
    /*Cycle testCycle = new Cycle1();
    unlocked.put(testCycle.cycleName, testCycle);*/
    //cute = loadImage("Cuterus.png");
    fullCup = loadImage("cup_full.png");
    cupOutline = loadImage("cup_outline.png");
    backgroundColor = loadImage("smallBack.png");
    fillLevel = 10;
  }

  //sets the x and y coordinates to new values
  void move(float x, float y){
    this.x = x;
    this.y = y;
  }

  //returns true if the player is touching a given object, false if it is not
    //note: this method should be improved upon for smooth gameplay
    boolean isTouching(FallingObject o){
      if( dist(mouseX, mouseY, o.getX(), o.getY()) < COLLIDERSIZE){
        return true;
      }
      return false;
    }

  void unlockNewCycle(Cycle cyc){
    if(!unlocked.containsKey(cyc.cycleName)){
      unlocked.put(cyc.cycleName, cyc);
      unlockedCount++;
    }
  }

  //draws the player on the screen (currently just a red dot)
  void render(){
  //  image(cute, x - 50, y - 30, 80, 60); //image of the cuterus
      image(fullCup, x - 45, y - 50, 90, 100);
      image(backgroundColor, x - 45, y - 50 - fillLevel, 90, 1);
      image(cupOutline, x - 45, y - 50, 90, 100);
      if(fillLevel < 99){
        fillLevel++;
      }
  }

}
