import { LightningElement,api } from 'lwc';
import Contact_FirstName from '@salesforce/schema/Contact.FirstName';
import Contact_LastName from '@salesforce/schema/Contact.LastName';
import Contact_Email from '@salesforce/schema/Contact.Email';
import Contact_Phone from '@salesforce/schema/Contact.Phone';
import Contact_Account from '@salesforce/schema/Contact.AccountId';
export default class LwcContactCreation extends LightningElement {
    @api recordId;
    @api objectApiName;

    fieldList = [Contact_FirstName, Contact_LastName, Contact_Email,Contact_Phone,Contact_Account];

    handleSuccess(event) {
        const evt = new ShowToastEvent({
            title: "Contact Update",
            message: "Record ID: " + event.detail.id ,
            variant: 'success',
        });
        this.dispatchEvent(evt);
    }

}