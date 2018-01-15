/*@pjs preload="iudInfo.png";*/
class Cycle6 extends Cycle {

  Cycle6(){
    super();
    super.cycleName = "Intrauterine Device";
  }

  FallingObject[] cycleObjects(){ //a method that returns an array with all of the proper number and types of FallingObjects for this cycle
    FallingObject[] cycleObjs = new FallingObject[numThings];
    for(int i=0; i<numThings; i++){
      cycleObjs[i] = new IntrauterineDevice();
      //alert("hello");
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

  Cycle getInfo(){
    infoImage = loadImage("iudInfo.png");
    return new InfoCard("intrauterine device", infoImage);
  }


  FallingObject[] powerUps(){

    FallingObject[] powerUps = new FallingObject[3];
    for(int i=0; i<3; i++){
      powerUps[i] = new IntrauterineDevice();
    }
    return powerUps;
  }

}
