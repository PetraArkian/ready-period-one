import React from 'react';

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
        <canvas data-processing-sources="/game/main.pde game/Player.pde game/Scoreboard.pde game/FallingObject.pde"></canvas>
      </div>
      )
  }
}

export default App;
