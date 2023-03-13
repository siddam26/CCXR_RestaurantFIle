import { LightningElement,wire,track } from 'lwc';
import getAccount from '@salesforce/apex/accountwithinactive.getAccount';
import deleteaccount from '@salesforce/apex/accountwithinactive.deleteaccount';
import { refreshApex } from '@salesforce/apex';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class Deleteaccounts extends LightningElement {
    @wire(getAccount) account;
    @track selectedCandidateList = [];
    @track message;
    @track columns=[
        {label:'Name',fieldName:'Name',type:'text'},
        {label:'Phone',fieldName:'Phone',type:'phone'},
        {label:'Type',fieldName:'Type',type:'text'},
        {label:'Industry',fieldName:'Industry',type:'text'}
    ];
    deleteSelRecords(){
        deleteaccount({selaccountid:this.selectedCandidateList})
        .then(result => {               
            this.dispatchEvent( 
                new ShowToastEvent({
                    title: 'Success',
                    message: 'Selected accounts are deleted!',
                    variant: 'success',
                }),
            );    
              
            this.template.querySelector('lightning-datatable').selectedRows = [];
  
            return refreshApex(this.account);        
        })
        .catch(error => {
            this.message = undefined;
            this.error = error;
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Error deleting records',
                    message: error.body.pageErrors[0].message,
                    variant: 'error',
                }),
            );
            console.log("error", JSON.stringify(this.error));
        });
    }
  
    prepareSelectedRows(event){
        const selectedRows=event.detail.selectedRows; 
        this.selectedCandidateList = []; 
        for (let i = 0; i < selectedRows.length; i++){           
            this.selectedCandidateList.push(selectedRows[i].Id);
        }  
        console.log(this.selectedCandidateList);   
    }
  
  }