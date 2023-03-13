import { LightningElement } from 'lwc';
import Candidate_FirstName from'@salesforce/schema/Candidate__c.First_Name__c';
import Candidate_LastName from'@salesforce/schema/Candidate__c.Last_Name__c';
import Candidate_Adhar from'@salesforce/schema/Candidate__c.Aadhar_number__c';
import Candidate_SSN from'@salesforce/schema/Candidate__c.SSN__c';
import Candidate_Btech from'@salesforce/schema/Candidate__c.B_Tech_Discipline__c';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import {NavigationMixin} from 'lightning/navigation';

export default class AccountDataUsingRecordForm extends NavigationMixin(LightningElement) 
{

    objectApiName='Candidate__c';
    fieldList=[Candidate_FirstName,Candidate_LastName,Candidate_Adhar,Candidate_SSN,Candidate_Btech];
    handleAccountCreate(event){
        const evt= new ShowToastEvent({
            title:"Candidate Record Created Successfully",
            message:"Reecord id :"+event.detail.id,
            variant:"success",
        });
    
    this.dispatchEvent(evt);
    this[NavigationMixin.Navigate]({
        type:'standard__recordPage',
        attributes:{
            recordId:event.detail.id,
            objectApiName:'Candidate__c',
            actionName:'view'
        },
    });
  }
}