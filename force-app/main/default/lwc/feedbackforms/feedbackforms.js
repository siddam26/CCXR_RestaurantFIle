import { LightningElement } from 'lwc';
import Candidate_FirstName from'@salesforce/schema/CCXR_Feedback__c.CCXR_Food_Quality__c';
import Candidate_LastName from'@salesforce/schema/CCXR_Feedback__c.CCXR_Service_Quality__c';
import Candidate_Adhar from'@salesforce/schema/CCXR_Feedback__c.CCXR_Suggestions__c';
import order from'@salesforce/schema/CCXR_Feedback__c.CCXR_Order__c';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import {NavigationMixin} from 'lightning/navigation';

export default class Feedbackforms extends NavigationMixin(LightningElement) 
{objectApiName='CCXR_Feedback__c';
fieldList=[Candidate_FirstName,Candidate_LastName,Candidate_Adhar,order];
handleAccountCreate(event){
    const evt= new ShowToastEvent({
        title:"Feedback  Record Created Successfully",
        message:"Reecord id :"+event.detail.id,
        variant:"success",
    });

this.dispatchEvent(evt);
this[NavigationMixin.Navigate]({
    type:'standard__recordPage',
    attributes:{
        recordId:event.detail.id,
        objectApiName:'CCXR_Feedback__c',
        actionName:'view'
    },
});
}

}