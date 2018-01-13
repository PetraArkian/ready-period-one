/* @pjs preload="pill1.png,pill2.png,pill3.png,pill4.png,pill5.png,pill6.png,pill7.png,pill8.png,pill9.png"; */
class BirthControlPill extends FallingObject{

  BirthControlPill(){
    super();
    super.speed = random(4,5);
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
