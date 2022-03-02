import React, { Component } from 'react';
import './Results.css'
export default class Results extends Component {
  constructor(props){
    super(props);
    console.log("Entered child component")
    console.log(this.props.resultList)
  }
  
  getGenus(name){
    var secondaryClass = name.split(" ")[0]
    if (secondaryClass.charAt(secondaryClass.length - 1) === '.') {
      secondaryClass = secondaryClass.substr(0, secondaryClass.length - 1);
    }

    return "result-element " + secondaryClass
  }

  getGenusWiki(name){
    var secondaryClass = name.split(" ")[0]
    if (secondaryClass.charAt(secondaryClass.length - 1) === '.') {
      secondaryClass = secondaryClass.substr(0, secondaryClass.length - 1);
    }
    if (name === "Cedecea davisoe"){name = "Cedecea davisae"}
    return "https://en.wikipedia.org/wiki/" + name.replace(" ", "_")
  }

  render() {
      if(this.props.resultList){
          return(  
          <div id="result-container">
              {this.props.resultList.map(name => (
              <a href={this.getGenusWiki(name)} class="result-href"><p class={this.getGenus(name)} id={name}><font size="2.5" color="black">{name}</font></p></a>
              ))}
          </div>
          )
      }
      return null
    }
}