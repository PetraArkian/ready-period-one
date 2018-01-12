PImage img;

class CottonBall extends FallingObject{

  CottonBall(){
    super();
    super.speed = random(4,5);
    super.type = "CottonBall";
    img = loadImage("cottonball.png");
  }

  void render(){
    if(super.notCaught){
      fill(255);
      image(img, super.x, super.y, 50, 50);
    }
  }

}
