import { LightningElement,api,track,wire } from 'lwc';


import getCustomerTableStatus from '@salesforce/apex/CustomerTableStatus.getCustomerTableStatus';

export default class allCustomerStatus extends LightningElement {
    @api records;
    
    @api errors;

    

    @wire(getCustomerTableStatus,{ })
    wiredColumns({
        error,
        data
    }) {
        if (data) {
            this.records = data;
            
        } else if(error) {
            this.error = error;

        }
    }
  }