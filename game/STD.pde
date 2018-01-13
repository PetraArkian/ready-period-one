class STD extends FallingObject{

  STD(){
    super();
  }

  void render(){
    if(super.notCaught){
      fill(20, 250, 20);
      ellipse(super.x, super.y, 25, 25);
    }
  }

}
