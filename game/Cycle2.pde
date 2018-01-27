/*@pjs preload="condomInfo.png";*/
class Cycle2 extends Cycle{

  Cycle2(){
    super();
    super.cycleName = "Condoms";
  }

  FallingObject[] cycleObjects(Player p){ //a method that returns an array with all of the proper number and types of FallingObjects for this cycle
    if(cycleObjs == null){
      cycleObjs = new FallingObject[numThings];
      for(int i=0; i<numThings; i++){
        cycleObjs[i] = new Condom();
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
    super.progress -= 5;
    if(progress < 0){
      failed = true;
    }
  }

  Cycle getInfo(){
    infoImage = loadImage("condomInfo.png");
    return new InfoCard("condoms", infoImage);
  }

  FallingObject[] powerUps(){
    FallingObject[] powerUps = new FallingObject[3];
    for(int i=0; i<3; i++){
      powerUps[i] = new Condom();
    }
    return powerUps;
  }

  Cycle getNext(){
    return this;
  }
}
