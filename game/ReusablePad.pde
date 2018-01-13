/*@pjs preload="reusable-pad.png";*/
class ReusablePad extends FallingObject{
  PImage img;

  ReusablePad(){
    super();
    super.speed = random(4,5);
    super.type = "ReusablePad";
    //img = loadImage("reusable-pad.png");
  }

  void render(){
    if(super.notCaught){
      fill(255);
      ellipse(super.x, super.y, 10, 10);
      //image(img, super.x-15, super.y-15, 30, 30);
    }
  }

}
