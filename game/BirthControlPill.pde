class BirthControlPill extends FallingObject{

  BirthControlPill(){
    super();
    super.speed = random(4,5);
  }

  void render(){
    if(super.notCaught){
      fill(50, 50, 255);
      ellipse(super.x, super.y, 50, 20);
    }
  }

}
