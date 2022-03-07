import React, { Component } from 'react';
import { Multiselect } from 'multiselect-react-dropdown';
import './FormField.css'
export default class FormField extends Component {
  constructor(props){
    super(props);
    this.state = {
      options: [{name: ' +  | 90%-100% positive', id: 1},
                {name: '[+] | 76%-89% positive', id: 2},
                {name: ' d  | 26%-75% positive', id: 3},
                {name: '[-] | 11%-25% positive', id: 4},
                {name: ' -  | 0%-10% positive', id: 5}]
    };
    this.onSelect = this.onSelect.bind(this);
    this.onRemove = this.onRemove.bind(this);
  }


  onSelect(selectedList, selectedItem) {
    console.log("Item selected \n")
    console.log(selectedList + "\n") 
    this.props.action(selectedList, this.props.keyValue)
  }
 
  onRemove(selectedList, removedItem) {
    console.log("Item removed \n")
    console.log(selectedList + "\n") 
    this.props.action(selectedList, this.props.keyValue)
  }   
  
    render() {
      const mystyle = {
        multiselectContainer: {
          width: "95%"
        },
        option: {
          color: "green",
          fontSize: "60%"
        },
      };
        return(
          <div class="input-block">
            <div class="bacteria-title-wrapper">
              <p class="bacteria-titles">{this.props.title}</p>
            </div>
            <Multiselect
            id={this.props.keyValue}
            style={mystyle}
            options={this.state.options} // Options to display in the dropdown
            selectedValues={this.state.selectedValue} // Preselected value to persist in dropdown
            onSelect={this.onSelect} // Function will trigger on select event
            onRemove={this.onRemove} // Function will trigger on remove event
            displayValue={"name"} // Property name to display in the dropdown options
            avoidHighlightFirstOption="true"
            />
          </div>
        )
      }
}