import React, { Component } from 'react';
import FormField from './FormField';
import './FullForm.css';
import Results from './Results.js';
import {
  BrowserView,
  MobileView,
  isBrowser,
  isMobile
} from "react-device-detect";
export default class FullForm extends Component {
    
    constructor(props) {
        super(props)
        this.handler = this.handler.bind(this);

        this.state = {
            messageShown: false,
            resultList: []
        };
        this.currentSelected = new Map()
        this.url = process.env.REACT_APP_BACKEND_URL + "/"
        this.resultList = this.getAllResults()
    }

    // Makes API call to fetch all bacteria
    getAllResults() {
      var requestOptions = {
          method: 'GET',
          redirect: 'follow'
        };

      fetch(this.url + "all",requestOptions).then(response => response.json()).then(json=>{
          console.log("Making an API call")
          console.log("parsed json response", json)

          console.log("Bacteria matching the criteria", json.results)
          this.setState({resultList: json.results})
        })
    }

    // Makes API call to fetch bacteria results
    getResults() {
        if (this.currentSelected.size === 0){
          this.getAllResults()
          return
        }
        var searchParams = new URLSearchParams(this.currentSelected)

        var requestOptions = {
            method: 'GET',
            redirect: 'follow'
          };

        fetch(this.url + "query?"+searchParams,requestOptions).then(response => response.json()).then(json=>{
            console.log("Making an API call")
            console.log("parsed json response", json)

            console.log("Bacteria matching the criteria", json.results)
            this.setState({resultList: json.results})
          })
    }

    // Converts the value of the selectedList map into a comma separated string
    getCommaSeparatedList(selectedList){
      var stringifiedList = ""
      for (const [key, value] of Object.entries(selectedList)) {
        stringifiedList = stringifiedList + value.id + ","
      }

      if (stringifiedList.charAt(stringifiedList.length - 1) == ',') {
        stringifiedList = stringifiedList.substr(0, stringifiedList.length - 1);
      }

      console.log("stringified list", stringifiedList)
      return stringifiedList
    }

    // Called on every update to any form field
    handler(selectedList, keyValue) {
        console.log("FormField updated!")
        var commaSeparatedList = this.getCommaSeparatedList(selectedList)
        if (commaSeparatedList == "" && this.currentSelected.has(keyValue)) {
          this.currentSelected.delete(keyValue)
        } else {
          this.currentSelected.set(keyValue,commaSeparatedList)
        }
        console.log(this.currentSelected)
        this.getResults()
    }

    render() {
        return(
          <div id="full-section">
            <div class="section-selections">
            <FormField title="Indole production" keyValue="indole" action={this.handler}/>
            <FormField title="Methyl Red" keyValue="methyl_red" action={this.handler}/>
            <FormField title="Voges-Proskauer" keyValue="voges_proskauer" action={this.handler}/>
            <FormField title="Citrate, Simmons" keyValue="citrate_simmons" action={this.handler}/>  
            <FormField title="Hydrogen Sulfide on TSI" keyValue="hydrogen_sulfide" action={this.handler}/> 

            <FormField title="Urease, Christensen's" keyValue="urease" action={this.handler}/>  
            <FormField title="Phenylalanine deaminase" keyValue="phenylalanine_deaminase" action={this.handler}/>  
            <FormField title="Lysine decarboxylase" keyValue="lysine_decarboxylase" action={this.handler}/>  
            <FormField title="Arginine dihydrolase" keyValue="arginine_dihydrolase" action={this.handler}/>  
            <FormField title="Ornithine decarboxylase" keyValue="ornithine_decarboxylase" action={this.handler}/> 
            
            <FormField title="Motility" keyValue="motility" action={this.handler}/>
            <FormField title="Gelatin Liquefaction at 22C" keyValue="gelatin" action={this.handler}/> 
            <FormField title="KCN, growth in" keyValue="kcn" action={this.handler}/> 
            <FormField title="Malonate Utilization" keyValue="malonate_utilization" action={this.handler}/> 
            <FormField title="D-Glucose, acid production" keyValue="acid_production" action={this.handler}/> 
            
            <FormField title="D-Glucose, gas production" keyValue="gas_production" action={this.handler}/> 
            <FormField title="Lactose" keyValue="lactose" action={this.handler}/> 
            <FormField title="Sucrose" keyValue="sucrose" action={this.handler}/> 
            <FormField title="D-Mannitol" keyValue="dmannitol" action={this.handler}/> 
            <FormField title="Dulcitol" keyValue="dulcitol" action={this.handler}/> 

            <FormField title="Salicin" keyValue="salicin" action={this.handler}/> 
            <FormField title="D-Adonitol" keyValue="dadonitol" action={this.handler}/> 
            <FormField title="myo-Inositol" keyValue="myo_inositol" action={this.handler}/> 
            <FormField title="D-Sorbitol" keyValue="dsorbitol" action={this.handler}/> 
            <FormField title="L-Arabinose" keyValue="larabinose" action={this.handler}/> 
            
            <FormField title="Raffinose" keyValue="raffinose" action={this.handler}/>
            <FormField title="L-Rhamnose" keyValue="lrhamnose" action={this.handler}/> 
            <FormField title="Maltose" keyValue="maltose" action={this.handler}/> 
            <FormField title="D-Xylose" keyValue="dxylose" action={this.handler}/> 
            <FormField title="Trehalose" keyValue="trehalose" action={this.handler}/> 
            
            <FormField title="Cellobiose" keyValue="cellobiose" action={this.handler}/> 
            <FormField title="α-Methyl-D-glucoside" keyValue="methyl_glucoside" action={this.handler}/> 
            <FormField title="Esculin hydrolysis" keyValue="esculing" action={this.handler}/> 
            <FormField title="Melibiose" keyValue="melibiose" action={this.handler}/>

            <FormField title="D-Arabitol" keyValue="darabitol" action={this.handler}/> 
            <FormField title="Mucate" keyValue="mucate" action={this.handler}/> 
            <FormField title="Lipase, corn oil" keyValue="lipase" action={this.handler}/> 
            <FormField title="Deoxyribonuclease at 25C" keyValue="drn" action={this.handler}/> 
            <FormField title="NO3- -> NO2-" keyValue="nitrate" action={this.handler}/> 
            <FormField title="Oxidase, Kovacs'" keyValue="oxidase" action={this.handler}/> 
            <FormField title="ONPG β-galactosidase" keyValue="onpg" action={this.handler}/> 

            <FormField title="Yellow pigment" keyValue="yellow" action={this.handler}/> 
            <FormField title="D-Mannose" keyValue="dmannose" action={this.handler}/> 
            </div>

            <div id="results" class="section-results">
            <Results resultList={this.state.resultList}></Results>
            </div>

          </div>
        )
      }
}