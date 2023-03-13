import { LightningElement,api,track,wire } from 'lwc';
import getAllAccountsas from '@salesforce/apex/customertable.getAllAccountsas';

export default class Cheforderscreen extends LightningElement {
    @api records;
    @api errors;
    @api itemId;
    
    @wire(getAllAccountsas,{ } )
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
    

    
}