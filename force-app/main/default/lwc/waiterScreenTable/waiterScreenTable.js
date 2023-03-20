import { LightningElement,api,track,wire } from 'lwc';
import getAllAccountss from '@salesforce/apex/waiterScreen.getAllAccountss';
import statuspick from '@salesforce/apex/waiterScreen.statuspick';
import statusser from '@salesforce/apex/waiterScreen.statusser';

import { refreshApex } from '@salesforce/apex';

export default class waiterScreenTable extends LightningElement{
  
  @api button1v;
  @api button2v;
    @api records;
    @api errors;
    @api itemId;
    @api itemIdr;
    @track showButton=true;
    @track showButton1=false;
    @api accountName

    accountOptions = [];
    @wire(getAllAccountss,{ } )
    wiredCases(result)
    {
      this.wiredData = result;
      this.records = result.data;
      this.errors = result.error;
    

    }
    
    handleButtonClick(event) {
        
      this.button1v=true;
      this.button2v=false;
      this.itemId = event.target.value;
      statuspick({ cat: this.itemId,but1 :this.button1v,but2 :this.button2v})
      .then(() => {
        // Refresh the data
        return refreshApex(this.wiredData);
      })
      .catch((error) => {
        console.error(error);
      });
        
      }
    handleButtonClick11(event)
    {
      this.button2v=true;
      
      this.itemIdr = event.target.value;
      statusser({cat:this.itemIdr,but2 : this.button2v})
      .then(() => {
        // Refresh the data
        return refreshApex(this.wiredData);
      })
      .catch((error) => {
        console.error(error);
      });
      
      
    }
    connectedCallback() 
    {
      getAllAccountss({accountName:this.itemId})
      .then(result => {
        this.accountOptions = result.map(account => ({
          label: account.Name+' , '+account.CCXR_Name__c+' , '+account.CCXR_Type_Of_Chef__c,
          value: account.Id
        }));
      })
      
    }
}