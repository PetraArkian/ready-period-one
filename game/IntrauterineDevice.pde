/*@pjs preload="intrauterine.png";*/
class IntrauterineDevice extends FallingObject{

  PImage img;

  IntrauterineDevice(){
    super();
    super.speed = random(4,5);
    super.type = "IntrauterineDevice";
    img = loadImage("intrauterine.png");
  }

  void render(){
    if(super.notCaught){
      fill(255);
      image(img, super.x-25, super.y-25, 50, 50);
    }
  }
}
