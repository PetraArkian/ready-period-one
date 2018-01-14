/*@pjs preload="menstrual_cup.png";*/
class MenstrualCup extends FallingObject{

  PImage img;

  MenstrualCup(){
    super();
    super.speed = random(4,5);
    super.type = "MenstrualCup";
    img = loadImage("menstrual_cup.png");
  }

  void render(){
    if(super.notCaught){
      fill(255);
      image(img, super.x-25, super.y-25, 50, 50);
    }
  }
}
