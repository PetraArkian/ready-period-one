class InfoCard extends Cycle{
  String title;
  PImage cottonimage;

  InfoCard(){
    super();
    super.isSpecial = true;
  }

  InfoCard(String t, PImage i){
    super();
    title = t;
    cottonimage = i;
    super.isSpecial = true;
  }

  Cycle getNext(){
    return new Cycle0();
  }

  void render(){
    background(0, 0, 255);
    fill(255);
    text(title, width/2, height/2);
    image(cottonimage, 0, 0, width, height);
  }
}
