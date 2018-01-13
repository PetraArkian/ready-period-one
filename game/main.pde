int numThings; //the max number of falling objects we want at once
FallingObject[] fallingObjects; //array of all of the objects that will be falling
FallingObject[] cycleObjects;
Player player; //our player object
Scoreboard board; //a object to keep track of overall score
Cycle currentCycle;
/*@pjs preload="cottonball.png";*/

void setup(){
  background(255); //set background
  size(1000, 700); //set canvas size
  //size(window.innerWidth * .8, window.innerHeight * .8);
  currentCycle = null;
  numThings = 20;
  //initialize variables
  player = new Player(mouseX, mouseY); //creates a player at the bottom of the screen with
  updateFallingObjects();
  board = new Scoreboard();
  currentCycle = player.currentCycle;
}

void draw(){
  background(245,255,250); //mint cream
  player.move(mouseX, mouseY); //move the player to the current mouse position
  if(currentCycle != null && cycleObjects == null){
    cycleObjects = currentCycle.cycleObjects();
  }
  if(currentCycle != null){
    if(currentCycle.finished){
      cycleObjects = null;
      currentCycle = null;
      updateFallingObjects();
      //currentCycle = player.currentCycle;
    }else{
      fall(cycleObjects);
      currentCycle.render();
    }
  }else{
    fall(fallingObjects);
    board.render(); //draw the scoreboard
  }
  player.render(); //draw the player
}

void keyPressed(){
  currentCycle = new Cycle0();
}

void mouseClicked(){
  currentCycle = currentCycle.getNext();
  cycleObjects = null;
}

void updateFallingObjects(){
  numThings = player.unlocked.length * 3 + 10;
  fallingObjects = new FallingObject[numThings];
  int i=0;
  while(i<10){
    fallingObjects[i] = new CottonBall();
    i++;
  }
  for(Cycle cyc : player.unlocked){
    for(FallingObject o : cyc.powerUps()){
          //alert("hey");
      fallingObjects[i] = o;
      i++;
    }
  }
}

void fall(FallingObject[] fallingThings){
  for(FallingObject o : fallingThings){ //for every falling object
    o.fall(); //fall downwards
    if(player.isTouching(o) && o.notCaught){ //if it collides with the player
      o.isCaught(); //then it is caught
      board.incrementScore(o); // and we increment the score by the amount of points catching this object is worth
      if(currentCycle != null){
        currentCycle.addProgress();
      }
    }
    if(o.dropped){
      if(currentCycle != null){
        currentCycle.removeProgress();
      }
      else{
        board.removeProgress(o);
      }
    }
    o.render(); //draw the object
  }
}
