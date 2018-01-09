final int NUMTHINGS = 10; //the max number of falling objects we want at once
FallingObject[] fallingObjects = new FallingObject[NUMTHINGS]; //array of all of the objects that will be falling
Player player; //our player object
Scoreboard board; //a object to keep track of overall score

void setup(){
  background(255); //set background
  size(1000, 700); //set canvas size
  //initialize variables
  player = new Player(mouseX, mouseY); //creates a player at the bottom of the screen with
  for(int i=0; i<NUMTHINGS; i++){
    fallingObjects[i] = new FallingObject(); // note: falling objects start at a random point at top of screen in constructor
  }
  board = new Scoreboard();
}

void draw(){
  background(255);
  player.move(mouseX, mouseY); //move the player to the current mouse position
  for(FallingObject o : fallingObjects){ //for every falling object
    o.fall(); //fall downwards
    if(player.isTouching(o) && o.notCaught){ //if it collides with the player
      o.isCaught(); //then it is caught
      board.incrementScore(o.pointValue); // and we increment the score by the amount of points
      //catching this object is worth
    }
    o.render(); //draw the object
  }
  player.render(); //draw the player
  board.render(); //draw the scoreboard
}