class Cycle{
  int cycleNum; //the "level number"
  String cycleName; //the name of the cycle
  int numThings; //the total number of falling objects in the level
  Cycle next; //the following cycle to go to after this one
  boolean finished; //whether or not the cycle has been completed

  int progress;

  Cycle(){
    this.cycleNum = 1;
    this.cycleName = "cotton balls";
    this.numThings = 10;
    this.next = null;
    this.finished = false;
    this.progress = 0;
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
    //do nothing
  }

  Cycle getNext(){
    return new Cycle1();
  }

  void render(){
    fill(0);
    text(this.cycleName + " : " + this.progress, width/2 - 60, 40);
  }

}
