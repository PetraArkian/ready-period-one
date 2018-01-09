class Scoreboard{
  int score;

  Scoreboard(){
    this.score = 0;
  }

  void incrementScore(int amount){
    this.score += amount;
  }

  int getScore(){
    return this.score;
  }

  void render(){
    textSize(24);
    text(this.score, 50, 50);
  }

}
