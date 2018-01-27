/*@pjs preLoad="Cuterus.png"*/
class Player{
  final float COLLIDERSIZE = 50; //an adjustable variable to change the sensitivity for collisions
  float x; //the x coordinate of the player
  float y; //the y coordinate of the player
  ArrayList<Cycle> cycleStack;
  HashMap<String, Cycle> unlocked;
  //Cycle[] unlocked;
  Cycle currentCycle;
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
    cycleStack.add(0, new Cycle0());
    unlocked = new HashMap<String, Cycle>();
    /*Cycle testCycle = new Cycle1();
    unlocked.put(testCycle.cycleName, testCycle);*/
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
      if( dist(mouseX, mouseY, o.getX(), o.getY()) < COLLIDERSIZE){
        return true;
      }
      return false;
    }

  void unlockNewCycle(Cycle cyc){
    unlocked.put(cyc.cycleName, cyc);
    unlockedCount++;
    /*boolean alreadyUnlocked = false;
    for(Cycle c : unlocked){
      if(c != null && cyc.cycleName.equals(c.cycleName)){
        alreadyUnlocked = true;
      }
    }
    if(!alreadyUnlocked){
      unlocked[unlockedCount] = cyc;
      unlockedCount++;
    }*/
    //alert("unlocking cycle " + cyc.cycleName);
  }

  //draws the player on the screen (currently just a red dot)
  void render(){
    image(cute, x - 50, y - 30, 80, 60); //image of the cuterus
  }

}
