//a scoreboard class to keep track of player progress
class Scoreboard{
  int score; //the main score

  //constructor, starts score at zero
  Scoreboard(){
    this.score = 0;
  }

  //incrementScore, increases the score by @param amount
  void incrementScore(int amount){
    this.score += amount;
  }

  //getScore, returns the current score
  int getScore(){
    return this.score;
  }

  //render() draws the scorebaord to the upper left of the screen
  void render(){
    textSize(24);
    text(this.score, 50, 50);
  }

}
