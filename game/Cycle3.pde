/*@pjs preload="tamponInfo.png";*/
class Cycle3 extends Cycle{

  Cycle3(){
    super();
    super.cycleName = "Tampons";
  }

  FallingObject[] cycleObjects(Player p){ //a method that returns an array with all of the proper number and types of FallingObjects for this cycle
    if(cycleObjs == null){
      cycleObjs = new FallingObject[numThings];
      for(int i=0; i<numThings; i++){
        cycleObjs[i] = new Tampon();
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

  Cycle getInfo(){
    infoImage = loadImage("tamponInfo.png");
    return new InfoCard("tampons", infoImage);
  }

  FallingObject[] powerUps(){

    FallingObject[] powerUps = new FallingObject[3];
    for(int i=0; i<3; i++){
      powerUps[i] = new Tampon();
    }
    return powerUps;
  }

  Cycle getNext(){
    return this;
  }


}
