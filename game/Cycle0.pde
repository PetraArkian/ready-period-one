/*@pjs preload="challenge.png";*/
class Cycle0 extends Cycle{

  Cycle0(){
    super();
    super.cycleName = "Explore!";
    img2 = loadImage("challenge.png");
    super.isMenu = true;
  }


  void render(){
    fill(255);    //fills with white
    background(102, 205, 170);
    drawChallenge();
    textSize(20);
    super.finished = false;
    super.failed = false;
    /*
    drawBubble(width/1.57, height/2.5, width/4, "Challenge", 48);
    drawBubble(width/2.2, height/3.8, width/9, "Cotton Balls", 20);
    drawBubble(width/2.5, height - height/3.2, width/5, "Condoms", 20);
    drawBubble(width - width/5.4, height/5.4, width/6, "Tampons", 15);
    drawBubble(width - width/2.5, height/8.3, width/9, "Pads", 14);
    drawBubble(width - width/3.2, height - height/4, width/5, "Birth Control", 15);
    drawBubble(width - width/8, height/2, width/5, "Menstrual Cups", 15);
    drawBubble(width/5, height/3, width/4, "IUD", 15);
    drawBubble(width/8.9, height/1.19, width/6.9, "Donate", 15);
    drawBubble(width/5.5, height/1.4, width/8, "D4G", 15);
    */
  }

  void drawChallenge(){
    image(img2, 0, 0, width, height);
  }

  //page location X, page location Y, bubble size, text, text size
  void drawBubble(float x, float y, float size, String t, int txSize){
    ellipseMode(CENTER);
    textSize(txSize);
    fill(255);
    ellipse(x, y, size, size);
    fill(0);
    text(t, x - size/2 + 10, y);
  }


  void getNext(){
    if(dist(width/1.57, height/2.5, mouseX, mouseY)<width/8){
      return new DefaultCycle(); //challenge
    }
    if(dist(width/2.2, height/3.8, mouseX, mouseY)<width/18){
      return new Cycle(); //cottonballs
    }
    if(dist(width/2.5, height - height/3.2, mouseX, mouseY)<width/10){
      return new Cycle2();//condoms
    }
    if(dist(width - width/5.4, height/5.4, mouseX, mouseY)<width/12){
      return new Cycle3();//tampons
    }
    if(dist(width - width/2.5, height/8.3, mouseX, mouseY)<width/18){
      return new Cycle5();//pads
    }
    if(dist(width - width/3.2, height - height/4, mouseX, mouseY)<width/10){
      return new Cycle1();//birth control
    }
    if(dist(width - width/8, height/2, mouseX, mouseY)<width/10){
      return new Cycle4();//menstrual cups
    }
    if(dist(width/5, height/3, mouseX, mouseY)<width/8){
      return new Cycle6();//IUD
    }
    if(dist(width/8.9, height/1.19, mouseX, mouseY)<width/14.8) {
      link("https://donate.daysforgirls.org/checkout/donation?eid=136291", "Donate");
      return this;
    }
    if(dist(width/5.5, height/1.4, mouseX, mouseY)<width/16){
      link("https://www.daysforgirls.org/dfg-our-approach", "About");
      return this;
    }
    else{
      return this;
    }
  }
}
