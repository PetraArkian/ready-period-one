/*@pjs preload="condom.jpg";*/
class Condom extends FallingObject{
  PImage img;

  Condom(){
    super();
    super.speed = random(4,5);
    super.type = "Condom";
    img = loadImage("condom.jpg");
  }

  void render(){
    if(super.notCaught){
      fill(255);
      ellipse(super.x, super.y, 50, 50);
      image(img, super.x-15, super.y-15, 30, 30);
    }
  }

}
