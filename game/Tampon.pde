PImage image;

class Tampon extends FallingObject{

  Tampon(){
    super();
    super.speed = random(4,5);
    super.type = "Tampon";
    image = loadImage("tampon.png");
  }

  void render(){
    if(super.notCaught){
      fill(255);
      image(image, super.x, super.y, 50, 50);
    }
  }

}
