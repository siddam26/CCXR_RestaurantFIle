import { LightningElement,track,wire } from 'lwc';
import getAcc1 from '@salesforce/apex/getcheforder.getcherfobap';
export default class Chefscreen extends LightningElement {
    @track columns = [{
        label: 'Order Status',
        fieldName: 'Order_status__c',
        type: 'text',
        sortable: true
    },
  
    {
        label: 'Chef assigned',
        fieldName: 'CCXR_Accepted_By_Chef__c',
        type: 'text',
        sortable: true
    }];
    @track accountList;
    @track data 
     
    @wire(getAcc1) getcherfobap({error,data}){
        if (data) {
            this.accountList = data;
        } else if (error) {
            this.data = undefined;
        }
    }
 
    
}