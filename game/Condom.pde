class Condom extends FallingObject{

  Condom(){
    super();
  }

  void render(){
    if(super.notCaught){
      fill(255);
      ellipse(super.x, super.y, 30, 30);
    }
  }

}
