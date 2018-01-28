int numThings; //the max number of falling objects we want at once
//FallingObject[] fallingObjects; //array of all of the objects that will be falling
FallingObject[] cycleObjects;
Player player; //our player object
Scoreboard board; //a object to keep track of overall score
Cycle currentCycle;
int[] velocities = [1, 1.05, 1.1, 1.2, 1.4, 1.5, 1.5, 1.5, 1.5];
/*@pjs preload="Background.png";*/

void setup(){
  //alert("hi");
  img = loadImage("Background.png");
  drawBackground();
  //size(1000, 700); //set canvas size
  // move this to draw() to dynamically draw the canvas to adjust window size changes
  size(window.innerWidth * .7, window.innerHeight * .8);

  currentCycle = null;
  numThings = 20;
  //initialize variables
  player = new Player(mouseX, mouseY); //creates a player at the bottom of the screen with
  //player.cycleStack.add(new DefaultCycle());
  //player.cycleStack.add(0, new Cycle0());
  board = new Scoreboard(player);
  //updateFallingObjects();
  //currentCycle = player.currentCycle;
  menuCycle = new Cycle0();
}

void draw(){
  //background(245,255,250); //mint cream
  if(width != window.innerWidth){
    size(window.innerWidth * .7, window.innerHeight * .8);
  }
  drawBackground();
  currentCycle = player.cycleStack.get(0);
  cycleObjects = currentCycle.cycleObjects(player);
  player.move(mouseX, mouseY); //move the player to the current mouse position
  //if(currentCycle != null){
    if(currentCycle.finished){
      cycleObjects = null;
      player.unlockNewCycle(currentCycle);
      player.cycleStack.add(0, player.cycleStack.remove(0).getInfo());
    }else if(currentCycle.failed){
      cycleObjects = null;
      //player.cycleStack.remove(0);
      player.cycleStack.add(0, new Cycle0())
    }
    else{
      fall(cycleObjects);
      if(currentCycle.cycleName != "default"){
        currentCycle.render();
      }else{
        board.render();
      }
    }
  player.render(); //draw the player
}

void keyPressed(){
  player.cycleStack.add(0, new Cycle0())
}

void mouseClicked(){
  player.cycleStack.add(0, currentCycle.getNext());
  /*currentCycle = currentCycle.getNext();
  cycleObjects = null;*/
}

void drawBackground(){
  image(img, 0, 0, width, height);
}


void fall(FallingObject[] fallingThings){
  for(FallingObject o : fallingThings){ //for every falling object
    if(o != null){
      if(currentCycle.cycleName.equals("default")) {
        o.fall(velocities[player.unlockedCount]); //fall downwards
      } else{o.fall(1)}
      if(player.isTouching(o) && o.notCaught){ //if it collides with the player
        o.isCaught(); //then it is caught
        board.incrementScore(o); // and we increment the score by the amount of points catching this object is worth
        if(!currentCycle.cycleName.equals("default")){
          currentCycle.addProgress();
        }
      }
      if(o.dropped){
        if(!currentCycle.cycleName.equals("default")){
          currentCycle.removeProgress();
        }
        else{
          board.removeProgress(o);
        }
      }
      o.render(); //draw the object
    }
  }
}
