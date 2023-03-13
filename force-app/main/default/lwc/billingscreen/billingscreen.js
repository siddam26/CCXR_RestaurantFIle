import { LightningElement ,api,wire,track} from 'lwc';
import ordername from '@salesforce/schema/CCXR_Order__c.Name';
import Customer from '@salesforce/schema/CCXR_Order__c.CCXR_Customer__c';
import Table from '@salesforce/schema/CCXR_Order__c.CCXR_Table__c';
import datetime from '@salesforce/schema/CCXR_Order__c.CCXR_Order_Date_Time__c';
import ordergrandtotal from '@salesforce/schema/CCXR_Order__c.CCXR_Grand_Total__c';
import ordertax from '@salesforce/schema/CCXR_Order__c.CCXR_Tax__c';
import orderdiscount from '@salesforce/schema/CCXR_Order__c.CCXR_Discount__c';
import ordernettotal from '@salesforce/schema/CCXR_Order__c.CCXR_Net_Total__c';
import displayoederlineitems from '@salesforce/apex/getorderstatuses.orderstatuses'; 



export default class Billingscreen extends LightningElement {
    @api recordId;
    @track error  ;
    @track Orderlineitems ;
    orders;
    @api objectApiName;
   /* connectedCallback() {
        console.log(this.recordId);
        displayoederlineitems({
            orderid:this.recordId
            
         })
      }*/
     // Expose a field to make it available in the template
     Name = ordername;
     Customer = Customer;
     Table = Table;
     grandtotal = ordergrandtotal;
     Tax = ordertax;
     Discount = orderdiscount;
     Nettotal = ordernettotal;
     Datetime = datetime
     // Flexipage provides recordId and objectApiName
     
    columns = [
        { id:'1',label: 'ItemId', fieldName: 'Name' },
        { id:'2',label: 'Name', fieldName: 'CCXR_Item_Name__c' },
        { id:'3',label: 'Quantity', fieldName: 'CCXR_Quantity__c' },
        { id:'4',label: 'Price', fieldName: 'CCXR_Price__c' },
        { id:'5',label: 'Total', fieldName: 'CCXR_Total__c' }
       ];
     
       @wire(displayoederlineitems,{orderid: '$recordId'})
    wiredColumns({
        error,
        data
    }) {
        if (data) {
            this.Orderlineitems = data;
        } else if(error) {
            this.error = error;
        }
    }
    
}