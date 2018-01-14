/*@pjs preload="condom.png";*/
class Condom extends FallingObject{
  PImage img;

  Condom(){
    super();
    super.speed = random(4,5);
    super.type = "Condom";
    img = loadImage("condom.png");
  }

  void render(){
    if(super.notCaught){
      fill(255);
      image(img, super.x-25, super.y-25, 50, 50);
    }
  }

}
