import { LightningElement, api,track } from 'lwc';

export default class ProgressBarChildComponen extends LightningElement {
   
    @api firstnumber;
    @api secondnumber;
    @track result=0

    addittionHandler() {
        this.result=Math.pow(parseInt(this.firstnumber),parseInt(this.secondnumber))
      }
}