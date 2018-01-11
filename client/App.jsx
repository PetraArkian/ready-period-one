import React from 'react';
//processing-sources = "game/main.pde game/Player.pde game/Scoreboard.pde game/FallingObject.pde game/CottonBall.pde game/BirthControlPill.pde game/Cycle.pde game/Cycle1.pde game/Cycle2.pde game/EndCycle.pde"

class App extends React.Component{


  constructor(){
    super()
    this.state = {}
  }

  render(){
    console.log("render")
    return (
      <div className="container">
        <h1>Got . ?</h1>
        <canvas data-processing-sources="game/main.pde game/Player.pde game/Scoreboard.pde game/FallingObject.pde game/CottonBall.pde game/BirthControlPill.pde game/Cycle.pde game/Cycle1.pde game/Cycle2.pde game/EndCycle.pde"></canvas>
      </div>
      )
  }
}

export default App;
