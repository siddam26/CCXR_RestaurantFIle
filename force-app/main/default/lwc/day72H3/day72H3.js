import { LightningElement,api } from 'lwc';
import JP_Position from'@salesforce/schema/Job_Application__c.Position__c';
import JP_Candidate from'@salesforce/schema/Job_Application__c.Candidate__c';
import JP_Status from'@salesforce/schema/Job_Application__c.Status__c';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class PositionDataUsingRecordForm extends LightningElement 
{
    @api recordId;
    @api objectApiName;
    
    fieldList=[JP_Position,JP_Candidate,JP_Status];
    handleJobUpdate(event){
        const evt= new ShowToastEvent({
            title:"Account Created",
            message:"Job application id : "+ event.detail.id +" is Successfullly updated",
            variant:"success",
        });
        this.dispatchEvent(evt);
    }
}