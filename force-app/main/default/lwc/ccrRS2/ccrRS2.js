import { LightningElement,track,wire } from 'lwc';
import getItmList from '@salesforce/apex/EmployeeData.getItemList';

export default class CcrRS2 extends LightningElement {
    @track error;
    @track  itmList;

    itmList = [
        { id:'1',label: 'Item Name', fieldName: 'CCXR_Item_Name__c' },
        { id:'2',label: 'Item Status', fieldName: 'CCXR_Item_Status__c' },
        { id:'3',label: 'Item Image', fieldName: 'Item_Image_Link__c' },
        { id:'4',label: 'Item Description', fieldName: 'CCXR_Description__c' },
        { id:'5',label: 'Item Description', fieldName: 'CCXR_Price__c' }
       ];

       @wire(getItmList)
       WiredItems({
            error,
            data
        }) {
            if (data) {
                this.itmList = data;
            } else if(error) {
                this.error = error;
            }
        }

}