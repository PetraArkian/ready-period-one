/*@pjs preload="reusablepad.png";*/
class ReusablePad extends FallingObject{
  PImage img;

  ReusablePad(){
    super();
    super.speed = random(4,5);
    super.type = "ReusablePad";
    img = loadImage("reusablepad.png");
  }

  void render(){
    if(super.notCaught){
      fill(255);
      image(img, super.x-15, super.y-15, 50, 50);
    }
  }

}
