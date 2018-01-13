class BirthControlPill extends FallingObject{

  BirthControlPill(){
    super();
    super.speed = random(4,5);
    super.type = "BirthControlPill";
    super.pointValue = 5;
  }

  void render(){
    if(super.notCaught){
      fill(255, 204, 0);
      ellipse(super.x, super.y, 30, 50);
    }
  }

}
