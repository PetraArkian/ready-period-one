/*@pjs preload="tampon.png";*/

class Tampon extends FallingObject{
  PImage img;

  Tampon(){
    super();
    super.speed = random(4,5);
    super.type = "Tampon";
    super.pointValue = 5;
    img = loadImage("tampon.png");
  }

  void render(){
    if(super.notCaught){
      fill(255);
      ellipse(super.x, super.y, 50, 50);
      //image(img, super.x-25, super.y-25, 50, 50);
    }
  }

}
