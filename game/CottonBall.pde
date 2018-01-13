/*@pjs preload="cottonball.png";*/
class CottonBall extends FallingObject{
  PImage img;

  CottonBall(){
    super();
    super.speed = random(4,5);
    super.type = "CottonBall";
    img = loadImage("cottonball.png");
  }

  void render(){
    if(super.notCaught){
      fill(255);
      image(img, super.x-15, super.y-15, 30, 30);
    }
  }

}
