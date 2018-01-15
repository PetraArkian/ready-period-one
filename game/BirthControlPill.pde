/* @pjs preload="pill1.png"; */
class BirthControlPill extends FallingObject{

  BirthControlPill(){
    super();
    super.speed = random(3,5);
    super.type = "BirthControlPill";
    super.pointValue = 5;
    pill = loadImage("pill1.png");
  }

  void render(){
    if(super.notCaught){
      //fill(255, 204, 0);
      //ellipse(super.x, super.y, 30, 50);
      image(pill, super.x-15, super.y-15, 30, 30);
    }
  }

}
