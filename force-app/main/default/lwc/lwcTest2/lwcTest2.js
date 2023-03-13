import { LightningElement,track,wire } from 'lwc';
import accrec from'@salesforce/apex/AccountController1.getacc';
import deleteacc from'@salesforce/apex/AccountController1.deleteAcc';
import {refreshApex} from '@salesforce/apex';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class LwcTest2 extends LightningElement {
    @wire(accrec) accounts;
  @track selectedAccountList = [];
  @track message;
  @track columns = [
      {label:'Account Name',fieldName:'Name',type:'text'},
      {label:'Active',fieldName:'Active__c',type:'text'},
      {label:'Industry',fieldName:'Industry',type:'text'}, 
      {label:'Type',fieldName:'Type',type:'text'}
  ];
  deleteSelRecords(){
    deleteacc({selAccId:this.selectedAccountList})
      .then(result => {               
          this.dispatchEvent( 
              new ShowToastEvent({
                  title: 'Success',
                  message: 'Selected Accounts are deleted!',
                  variant: 'success',
              }),
          );    
            
          this.template.querySelector('lightning-datatable').selectedRows = [];

          return refreshApex(this.accounts);        
      })
      .catch(error => {
          this.message = undefined;
          this.error = error;
          this.dispatchEvent(
              new ShowToastEvent({
                  title: 'Error creating records',
                  message: error.body.pageErrors[0].message,
                  variant: 'error',
              }),
          );
          console.log("error", JSON.stringify(this.error));
      });
  }

  prepareSelectedRows(event){
      const selectedRows=event.detail.selectedRows; 
      this.selectedAccountList = []; 
      for (let i = 0; i < selectedRows.length; i++){           
          this.selectedAccountList.push(selectedRows[i].Id);
      }  
      console.log(this.selectedAccountList);   
  }
}