<<<<<<< HEAD
/*@pjs preload="tampon.png";*/

class Tampon extends FallingObject{
  PImage img;
=======
PImage image;

class Tampon extends FallingObject{
>>>>>>> 63a9f87c2c2f1b4b1f25694eb5f1e6793db6537c

  Tampon(){
    super();
    super.speed = random(4,5);
    super.type = "Tampon";
<<<<<<< HEAD
    super.pointValue = 5;
    img = loadImage("tampon.png");
=======
    image = loadImage("tampon.png");
>>>>>>> 63a9f87c2c2f1b4b1f25694eb5f1e6793db6537c
  }

  void render(){
    if(super.notCaught){
      fill(255);
<<<<<<< HEAD
      image(img, super.x-25, super.y-25, 50, 50);
=======
      image(image, super.x, super.y, 50, 50);
>>>>>>> 63a9f87c2c2f1b4b1f25694eb5f1e6793db6537c
    }
  }

}
