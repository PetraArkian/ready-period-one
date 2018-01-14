class Cycle4 extends Cycle{

  Cycle4(){
    super();
    super.cycleName = "Menstrual Cups";
  }

  FallingObject[] cycleObjects(){ //a method that returns an array with all of the proper number and types of FallingObjects for this cycle
    FallingObject[] cycleObjs = new FallingObject[numThings];
    for(int i=0; i<numThings; i++){
      cycleObjs[i] = new MenstrualCup();
    }
    return cycleObjs;
  }

  //move one step forward in whatever progress happens for this cycle (will be called when an object is caught)
  void addProgress(){
     super.progress++;
     if(super.progress >= 50){
        finished = true;
     }
  }

  void removeProgress(){
    super.progress -= 10;
    if(progress < 0){
      failed = true;
    }
  }

  FallingObject[] powerUps(){

    FallingObject[] powerUps = new FallingObject[3];
    for(int i=0; i<3; i++){
      powerUps[i] = new MenstrualCup();
    }
    return powerUps;
  }

  Cycle getNext(){
    return this();
  }
}
