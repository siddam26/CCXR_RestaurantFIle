import { LightningElement, api,track,wire } from 'lwc';
import getaccs1 from '@salesforce/apex/AccountLWCController1.getAccount';

export default class AccountUsingSearchChild extends LightningElement {
    @api firstnumber
    @track result
   
    @track columns = [{
        label: 'Account name',
        fieldName: 'Name',
        type: 'text',
        sortable: true
    },
    {
        label: 'Annual Revenue',
        fieldName: 'AnnualRevenue',
        type: 'Currency',
        sortable: true
    },
    {
        label: 'Industry',
        fieldName: 'Industry',
        type: 'text',
        sortable: true
    }];
    

    @wire(getaccs1,{Keytext:this.firstnumber})
     getAccount({error,data})
    {
        if(data)
        {
            this.data=data
        }
        else if(error)
        {
            this.error=error
        }
    }

    
}