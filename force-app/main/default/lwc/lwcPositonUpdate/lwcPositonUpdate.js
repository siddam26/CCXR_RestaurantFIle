import { LightningElement,api } from 'lwc';
import Position_Name from'@salesforce/schema/Position__c.Name';
import Position_Location from'@salesforce/schema/Position__c.Location__c';
import Position_FunctionalArea from'@salesforce/schema/Position__c.Functional_Area__c';
import Position_MinPay from'@salesforce/schema/Position__c.Min_Pay__c';
import Position_MaxPay from'@salesforce/schema/Position__c.Max_Pay__c';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';


export default class PositionDataUsingRecordForm extends LightningElement 
{

    @api recordId;
    @api objectApiName;
    
    fieldList=[Position_Name,Position_Location,Position_FunctionalArea,Position_MinPay,Position_MaxPay];
    handleAccountCreate(event){
        const evt= new ShowToastEvent({
            title:"Account Created is Successfullly updated",
            variant:"success"
        });
    }
}