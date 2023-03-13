import { LightningElement,track,api } from 'lwc';
import productSearch1 from '@salesforce/apex/ProdController.productSearch';
export default class DisplayingProductwithfamily extends LightningElement {
    @track familys
    handleChange1(event) {
        this.familys=event.target.value;
      }
      @api familys
      @track data
      @track error
      
      @track columns=[
          {label:'ProductName',fieldName:'Name',type:'text'},
          {label:'Family',fieldName:'Family',type:'text'},
          {label:'Total Quantity',fieldName:'Total_Quantity__c',type:'integer'},
          
      ];
  
    
  addittionHandler(){
    productSearch1({familys:this.familys})
          .then(result=>{
              this.data=result;
          })
          .catch(error=>{
              this.error=error;
          })
  
  }
}