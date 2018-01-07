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
      </div>
      )
  }
}

export default App;
