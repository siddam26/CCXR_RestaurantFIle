import { LightningElement,api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import r_assement from '@salesforce/schema/Review__c.Assesment__c';
import r_ratin from '@salesforce/schema/Review__c.Rating__c';
import r_job from '@salesforce/schema/Review__c.Job_Application__c';

export default class Day72H4 extends LightningElement {
    @api recordId
    @api objectApiName

    fieldList = [r_ratin, r_assement,r_job];

    handleSuccess(event) {
        const evt = new ShowToastEvent({
            title: "Review created",
            message: "Record ID: " + event.detail.id,
            variant: 'success'
        });

}
}