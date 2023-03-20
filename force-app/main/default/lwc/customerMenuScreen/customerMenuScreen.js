import { LightningElement,api,track,wire } from 'lwc';
import CustomerID from '@salesforce/schema/CCXR_Customer_Table_Status__c.CCXR_Customer__c';
import TableID from '@salesforce/schema/CCXR_Customer_Table_Status__c.CCXR_Table__c';
export default class CustomerMenuScreen extends LightningElement {
    @api recordId;
    Customer = CustomerID;
     Table = TableID;
}