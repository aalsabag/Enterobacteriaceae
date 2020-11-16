import React, { Component } from 'react';
import './Results.css'
export default class Results extends Component {
  constructor(props){
    super(props);
    console.log("Entered child component")
    console.log(this.props.resultList)
  }
    render() {
        return(
          <div id="result-container">
              {this.props.resultList.map(name => (
              <p class="result-element" id={name}><font size="3">{name}</font></p>
            ))}
          </div>
        )
      }
}