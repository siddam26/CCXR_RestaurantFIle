import { LightningElement,track } from 'lwc';
import createJobapp from '@salesforce/apex/jobapplicationlwc.createJobapp';
import p_Position from '@salesforce/schema/Job_Application__c.Position__c' 
import p_candidate from '@salesforce/schema/Job_Application__c.Candidate__c';
import p_status from '@salesforce/schema/Job_Application__c.Status__c';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class jobApplicationlnsertion extends LightningElement {
    @track accountId;
    @track error;
    @track accountRecord={
        Position__c:p_Position,
        Candidate__c:p_candidate,
        Status__c:p_status
    };
    handleNameChange(event){
        this.accountRecord.Position__c=event.target.value;
    }
    handleTypeChange(event){
        this.accountRecord.Candidate__c=event.target.value;
    }
    handlePhoneChange(event){
        this.accountRecord.Status__c=event.target.value;
    }
    handleSaveAccount(){
        createJobapp({
            japp:this.accountRecord
        })
        .then(result=>{
            this.accountRecord={};
            this.accountId=result.Id;
            const toastEvent=new ShowToastEvent({
                title:'success',
                message:'Jobapplication Created Successfully!',
                variant:"success"
            });
            this.dispatchEvent(toastEvent)
            })
            .catch(error=>{
                this.error=error.meassage;
            });
    }
}