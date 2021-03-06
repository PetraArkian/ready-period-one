/*@pjs preload="padInfo.png";*/
class Cycle5 extends Cycle{

  Cycle5(){
    super();
    super.cycleName = "Reusable Pads";
  }

  FallingObject[] cycleObjects(Player p){ //a method that returns an array with all of the proper number and types of FallingObjects for this cycle
    if(cycleObjs == null){
      cycleObjs = new FallingObject[numThings];
      for(int i=0; i<numThings; i++){
        cycleObjs[i] = new ReusablePad();
      }
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
    super.progress -= 1;
    if(progress < 0){
      failed = true;
    }
  }

  Cycle getInfo(){
    infoImage = loadImage("padInfo.png");
    return new InfoCard("reusable pad", infoImage);
  }

  FallingObject[] powerUps(){

    FallingObject[] powerUps = new FallingObject[3];
    for(int i=0; i<3; i++){
      powerUps[i] = new ReusablePad();
    }
    return powerUps;
  }

  Cycle getNext(){
    return this;
  }
}
