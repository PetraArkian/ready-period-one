/*@pjs preload="cottonballInfo.png";*/
class Cycle{
  int cycleNum; //the "level number"
  String cycleName; //the name of the cycle
  int numThings; //the total number of falling objects in the level
  Cycle next; //the following cycle to go to after this one
  boolean finished; //whether or not the cycle has been completed
  boolean failed; //whether or not the cycle has been lost
  FallingObject[] powerUps; //an array containing the powerUp objects unlocked by this cycle
  boolean isSpecial; //is an infograph or main screen

  int progress;

  Cycle(){
    this.cycleNum = 1;
    this.cycleName = "Cotton Balls";
    this.numThings = 10;
    this.next = null;
    this.finished = false;
    this.failed = false;
    this.progress = 0;
    this.isSpecial = false;
  }

  FallingObject[] cycleObjects(){ //a method that returns an array with all of the proper number and types of FallingObjects for this cycle
    FallingObject[] cycleObjs = new FallingObject[numThings];
    for(int i=0; i<numThings; i++){
      cycleObjs[i] = new CottonBall();
    }
    return cycleObjs;
  }

  //move one step forward in whatever progress happens for this cycle (will be called when an object is caught)
  void addProgress(){
    progress++;
    if(progress >= 50){
      finished = true;
    }
  }

  void removeProgress(){
    progress--;
    if(progress < 0){
      failed = true;
    }
  }

  Cycle getNext(){
    return this;
  }

  Cycle getInfo(){
    infoImage = loadImage("cottonballInfo.png");
    return new InfoCard("cotton balls", infoImage);
  }

  void render(){
    fill(126,224,219);
    textSize(24);
    text(this.cycleName + " : " + this.progress, width/2 - 80, 70);
  }

  FallingObject[] powerUps(){
    FallingObject[] powerUps = new FallingObject[3];
    for(int i=0; i<3; i++){
      powerUps[i] = new CottonBall();
    }
    return powerUps;
  }

}
