/*@pjs preload="Challenge.png";*/
class Cycle0 extends Cycle{

  Cycle0(){
    super();
    super.cycleName = "Explore!";
    img2 = loadImage("Challenge.png");
  }

  //SHOULD BE WHATEVER THE PLAYER CHOOSES
  /*Cycle getNext(){
    return new Cycle2();
  }*/

  void render(){
    fill(255);    //fills with white
    background(102, 205, 170);
    drawChallenge();
    textSize(20);
    /*drawBubble(width/2.1, height/2, width/3.1, "Challenge", 48);
    drawBubble(width/2.1, height/8, width/9, "Cotton Balls", 20);
    drawBubble(width/2.1, height - height/8, width/9, "Condoms", 20);
    drawBubble(width - width/5, height/4, width/5, "Tampons", 15);
    drawBubble(width/5.3, height - height/4, width/5, "Pads", 14);
    drawBubble(width - width/4.7, height - height/4, width/5, "Birth Control", 15);
    drawBubble(width/5.8, height/3.9, width/5, "Menstrual Cups", 15);*/

  }

  void drawChallenge(){
    image(img2, 0, 0, width, height);
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
    if(dist(width/2.1, height/2, mouseX, mouseY)<width/6.2){
      return null; //challenge
    }
    if(dist(width/2.1, height/8, mouseX, mouseY)<width/18){
      return new Cycle(); //cottonballs
    }
    if(dist(width/2.1, height - height/8, mouseX, mouseY)<width/18){
      return new Cycle2();//condoms
    }
    if(dist(width - width/5, height/4, mouseX, mouseY)<width/10){
      return new Cycle3();//tampons
    }
    //!!!!!!!!!!!!!!!!!!!!!!!!
    if(dist(width/5.3, height - height/4, mouseX, mouseY)<width/10){
      alert("pads");
      return new Cycle5();//pads //pads cycle currently not opperational
    }
    //!!!!!!!!!!!!!!!!!!!!!!!!!!
    if(dist(width - width/4.7, height - height/4, mouseX, mouseY)<width/10){
      return new Cycle1();//birth control
    }
    if(dist(width/5.8, height/3.9, mouseX, mouseY)<width/10){
      return new Cycle4();//menstrual cups
    }
    else{
      return new Cycle0();
    }
  }
}
