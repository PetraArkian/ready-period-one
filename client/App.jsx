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
      <center>
        <canvas data-processing-sources="game/main.pde game/Player.pde game/Scoreboard.pde game/FallingObject.pde game/CottonBall.pde game/BirthControlPill.pde game/Condom.pde game/Tampon.pde game/Cycle.pde game/Cycle0.pde game/Cycle1.pde game/Cycle2.pde game/Cycle3.pde game/EndCycle.pde"></canvas>
      </center>
      </div>
      )
  }
}

export default App;
