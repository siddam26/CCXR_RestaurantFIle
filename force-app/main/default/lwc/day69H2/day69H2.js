import { LightningElement,track } from 'lwc';

export default class Day69H2 extends LightningElement {

    @track FirstNumber=0
    @track SecondNumber=0
    result=0

    addHandler() {
        this.result=parseInt(this.FirstNumber)+parseInt(this.SecondNumber)
      }
      subHandler(){
        this.result=parseInt(this.FirstNumber)-parseInt(this.SecondNumber)
      }
      mulHandler(){
        this.result=parseInt(this.FirstNumber)*parseInt(this.SecondNumber)
    }
    divHandler(){
        this.result=parseInt(this.FirstNumber)/parseInt(this.SecondNumber)
    }

    handleChange1(event) {
        this.FirstNumber=event.target.value;
      }
      handleChange2(event) {
        this.SecondNumber=event.target.value;
      }
 
}