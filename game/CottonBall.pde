class CottonBall extends FallingObject{

  CottonBall(){
    super();
    super.speed = random(4,5);
  }

  void render(){
    if(super.notCaught){
      fill(255);
      ellipse(super.x - 6, super.y, 20, 20);
      ellipse(super.x + 3, super.y, 20, 20);
      ellipse(super.x, super.y -6, 20, 20);
    }
  }

}
