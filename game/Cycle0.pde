class Cycle0 extends Cycle{

  Cycle0(){
    super();
    super.cycleName = "Explore!";
  }

  //SHOULD BE WHATEVER THE PLAYER CHOOSES
  /*Cycle getNext(){
    return new Cycle2();
  }*/

  void render(){
    fill(255);    //fills with white
    background(102, 205, 170);
    textSize(20);
    drawBubble(width/4, height/1.5, width/6, "Home", 48);
    drawBubble(width/3, height/3, width/8, "Cotton Balls", 20);
    drawBubble(width/2, height/4, width/10, "Birth Control", 15);
    drawBubble(width/1.5, height/3, width/12, "Condoms", 14);
    textSize(48);
    fill(255);
    text(this.cycleName, width/2 - 60, height/2);
  }

  void drawBubble(float x, float y, float size, String t, int txSize){
    ellipseMode(CENTER);
    textSize(txSize);
    fill(255);
    ellipse(x, y, size, size);
    fill(0);
    text(t, x - size/2 + 10, y);
  }

  void getNext(){
    if(dist(width/4, height/1.5, mouseX, mouseY)<width/12){
      return null;
    }
    if(dist(width/3, height/3, mouseX, mouseY)<width/16){
      return new Cycle();
    }
    if(dist(width/2, height/4, mouseX, mouseY)<width/20){
      return new Cycle1();
    }
    if(dist(width/1.5, height/3, mouseX, mouseY)<width/24){
      return new Cycle2();
    }
    else{
      return new Cycle0();
    }
  }
}
