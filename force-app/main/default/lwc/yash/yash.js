import { LightningElement,api,track,wire } from 'lwc';
import getAllAccountsas from '@salesforce/apex/customertable.getAllAccountsas';
import status from '@salesforce/apex/customertable.setstatus';
import getAccountNames from '@salesforce/apex/customertable.getAccountNames';
export default class Cheforderscreen extends LightningElement {
    @api records;
    @api errors;
    @api itemId;
    @api recordid;
    accountOptions = [];
    handleButtonClick(event)
    {
        this.recordid=event.target.value;
        status({recid : this.recordid})

    }
    
    @wire(getAllAccountsas,{} )
    wiredCases({data,error}){
    if(data)
    {
        this.records = data;
        this.errors = undefined;
    }
    if(error)
    {
        this.errors = error;
        this.records = undefined;
        }
    }
    connectedCallback() 
    {
      getAccountNames()
      .then(result => {
        this.accountOptions = result.map(account => ({
          label: account.Name,
          value: account.Id
        }));
      })
      
    }

    
}