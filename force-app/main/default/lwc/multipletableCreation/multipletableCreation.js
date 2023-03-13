import { LightningElement } from 'lwc';
import CCXR_TableID from '@salesforce/schema/CCXR_Table__c.Name';
import CCXR_Capacity from '@salesforce/schema/CCXR_Table__c.CCXR_Capacity__c';
import CCXR_Restaurant_Employee from '@salesforce/schema/CCXR_Table__c.CCXR_Restaurant_Employee__c';
import CCXR_Table_Status from '@salesforce/schema/CCXR_Table__c.CCXR_Table_Status__c';
import CCXR_Booked_Time from '@salesforce/schema/CCXR_Table__c.CCXR_Booked_Time__c';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class MultipletableCreation extends LightningElement
{
    objectApiName='CCXR_Table__c';
    fieldList=[CCXR_TableID,CCXR_Capacity,CCXR_Restaurant_Employee,CCXR_Table_Status,CCXR_Booked_Time];
    handleTableCreate(event){
        const evt=new ShowToastEvent({
            title:"Table Create",
            message:"Record ID: "+event.detail.id,
            variant:"success"
        });
    }
}