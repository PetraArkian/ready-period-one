class DefaultCycle extends Cycle{

  DefaultCycle(){
    super();
    super.cycleName = "default";
  }

  FallingObject[] cycleObjects(Player p){ //a method that returns an array with all of the proper number and types of FallingObjects for this cycle
   if(cycleObjs == null){
      numThings = p.unlocked.size() * 3 + 10;
      cycleObjs = new FallingObject[numThings];
      int i=0;
      while(i<10){
        cycleObjs[i] = new CottonBall();
        i++;
      }
     for(String k : p.unlocked.keySet()){
        for(FallingObject o : p.unlocked.get(k).powerUps()){
          cycleObjs[i] = o;
          i++;
        }
      }
   }
    return cycleObjs;
  }

  //move one step forward in whatever progress happens for this cycle (will be called when an object is caught)
  void addProgress(){
     super.progress++;
  }

  void getInfo(){
    return this;
  }

  void removeProgress(){
    super.progress--;
  }

  FallingObject[] powerUps(){
    super.powerUps = new FallingObject[3];
    for(int i=0; i<3; i++){
      super.powerUps[i] = new BirthControlPill();
    }
    return super.powerUps;
  }

}
