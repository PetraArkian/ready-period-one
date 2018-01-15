class InfoCard extends Cycle{
  String title;
  PImage cottonimage;

  InfoCard(){
    super();
    super.isSpecial = true;
    super.cycleName = "Info Card";
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

  Cycle exit(){
    return new Cycle0();
  }

  void render(){
    image(cottonimage, 0, 0, width, height);
  }
}
