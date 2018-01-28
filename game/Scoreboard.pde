//a scoreboard class to keep track of player progress
class Scoreboard{
  int score; //the main score
  int birthControlCount;
  Player p;

  //constructor, starts score at zero
  Scoreboard(Player p){
    this.score = 0;
    this.birthControlCount = 0;
    this.p = p;
  }

  //incrementScore, increases the score by @param amount
  void incrementScore(FallingObject o){
    this.score += o.pointValue;
    if(o.type.equals("BirthControlPill")){
      birthControlCount++;
      if(birthControlCount >= 28){
        score += 100;
        birthControlCount = 0;
      }
    }
  }

  void removeProgress(FallingObject o){
    this.score -= o.pointValue;
    if(o.type.equals("BirthControlPill")){
      birthControlCount = 0;
    }
  }

  //getScore, returns the current score
  int getScore(){
    return this.score;
  }

  //render() draws the scorebaord to the upper left of the screen
  void render(){
    textSize(24);
    fill(255, 0, 0);
    text(this.score, width-100, 50);
    fill(0);
    if(this.p.unlocked.containsKey("Birth Control")){
      text("Birth Control : " + birthControlCount + "/28", width - 250, height/6);
    }
    textSize(36);
    text("Combo Mode!", width/2 - 200, height/12);
    textSize(24);
    text("Press SPACE BAR to view and unlock new cycles!", width/2 - 300, height/8);

    if(this.score < 0){
      rect(0,0,width,height);
      fill(255);
      textSize(48);
      text("Game Over :(", width/2 - 100, height/2);
    }

  }

}
