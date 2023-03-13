import { LightningElement,track } from 'lwc';

export default class ProgressBarParentComponen extends LightningElement {
    @track firstnumber=0
    @track secondnumber=0
   
      handleChange1(event) {
        this.firstnumber=event.target.value;
      }
      handleChange2(event) {
        this.secondnumber=event.target.value;
      }
}