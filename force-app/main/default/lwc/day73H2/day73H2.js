import { LightningElement,track,api,wire} from 'lwc';
import productSearchs from '@salesforce/apex/productsearch.productSearchs';
export default class Day73H2 extends LightningElement {
    @track cat
    handleChange1(event) {
        this.cat=event.target.value;
      }
      @api cat
      @track data
      @track error
      
      @track columns=[
          {label:'ProductName',fieldName:'Product_Name__c',type:'text'},
          {label:'CurrentQuantity',fieldName:'CurrentQuantity__c',type:'integer'},
          
      ];
  
    
  addittionHandler(){
    productSearchs({cat:this.cat})
          .then(result=>{
              this.data=result;
          })
          .catch(error=>{
              this.error=error;
          })
  
  }
  }