/*@pjs preload="birthcontrolInfo.png";*/
class Cycle1 extends Cycle{

  Cycle1(){
    super();
    super.cycleName = "Birth Control";
  }

  FallingObject[] cycleObjects(Player p){ //a method that returns an array with all of the proper number and types of FallingObjects for this cycle
    if(cycleObjs == null){
      cycleObjs = new FallingObject[numThings];
      for(int i=0; i<numThings; i++){
        cycleObjs[i] = new BirthControlPill();
      }
    }
    return cycleObjs;
  }

  //move one step forward in whatever progress happens for this cycle (will be called when an object is caught)
  void addProgress(){
     super.progress++;
     if(super.progress >= 28){
        finished = true;
     }
  }

  void removeProgress(){
    super.progress = 0;
  }

  Cycle getInfo(){
    infoImage = loadImage("birthcontrolInfo.png");
    return new InfoCard("birth control", infoImage);
  }

  FallingObject[] powerUps(){
    FallingObject[] powerUps = new FallingObject[3];
    for(int i=0; i<3; i++){
      powerUps[i] = new BirthControlPill();
    }
    return powerUps;
  }

  Cycle getNext(){
    return this;
  }
}
