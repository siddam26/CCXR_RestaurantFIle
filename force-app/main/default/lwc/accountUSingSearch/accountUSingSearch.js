import { LightningElement,track } from 'lwc';

export default class AccountUsingSearch extends LightningElement {
    @track firstnumber=0
  
   
      handleChange1(event) {
        this.firstnumber=event.target.value;
      }
     
}