import { LightningElement,track  } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Job_Posting__c.Employement_Website_Name__c';
import PHONE_FIELD from '@salesforce/schema/Job_Posting__c.Position__c';
import accountRecMethod from '@salesforce/apex/jobpostingcontroller.accountRecMethod';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class Insertingjobposting extends LightningElement {
    @track name = NAME_FIELD;
    @track phone = PHONE_FIELD;


    recAccount = {

        Employement_Website_Name__c : this.name,
        Position__c : this.phone,
      
    }

    handelNamechange(event){
        this.recAccount.Employement_Website_Name__c = event.target.value;
     
    }
    handelPhonechange(event){
        this.recAccount.Position__c = event.target.value;
       
    }
    createAccRec() {
        debugger;
        accountRecMethod({ accRec : this.recAccount })
            .then(result => {
                this.message = result;
                this.error = undefined;
                if(this.message !== undefined) {
                    this.recAccount.Name = '';
                    this.recAccount.Industry = '';
                
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Success',
                            message: 'Jobposting created',
                            variant: 'success',
                        }),
                    );
                }
                
                console.log(JSON.stringify(result));
                console.log("result", this.message);
            })
            .catch(error => {
                this.message = undefined;
                this.error = error;
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Error creating record',
                        message: error.body.message,
                        variant: 'error',
                    }),
                );
                console.log("error", JSON.stringify(this.error));
            });
    }
}