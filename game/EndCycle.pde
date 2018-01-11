class EndCycle extends Cycle{

  EndCycle(){
    super();
    super.cycleName = "Game Complete."
  }

  FallingObject[] cycleObjects(){ //a method that returns an array with all of the proper number and types of FallingObjects for this cycle
    return new FallingObject[0];
  }
  //move one step forward in whatever progress happens for this cycle (will be called when an object is caught)
  void addProgress(){
    //do nothing
  }

  Cycle getNext(){
    return null;
  }
}
