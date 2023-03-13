import { LightningElement, wire, track,api} from 'lwc';
import { getPicklistValues } from 'lightning/uiObjectInfoApi';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import feedback_obj from '@salesforce/schema/CCXR_Feedback__c';
import foodquality from '@salesforce/schema/CCXR_Feedback__c.CCXR_Food_Quality__c';
import servicequality from '@salesforce/schema/CCXR_Feedback__c.CCXR_Service_Quality__c';
import table from '@salesforce/schema/CCXR_Feedback__c.CCXR_Table__c';
import order from '@salesforce/schema/CCXR_Feedback__c.CCXR_Order__c';
import getfeedback from '@salesforce/apex/feedbackcontroller.feedbackRecMethod';
import { ShowToastEvent } from 'lightning/platformShowToastEvent'; 

export default class FeedbackForm extends LightningElement 
{
    @track options1 = [];
    @track options2 = [];
    @track selectedValue1 = foodquality;
    @track selectedValue2 = servicequality;
    @track name = table;
    @track ord = order;
   

    feedback = {

        CCXR_Table__c : this.name,
        CCXR_Order__c : this.ord,
        CCXR_Food_Quality__c :this.selectedValue1,

        CCXR_Service_Quality__c:this.selectedValue2
    }

    
    @wire(getObjectInfo, { objectApiName: feedback_obj })
    objectInfo;
    
    @wire(getPicklistValues, { recordTypeId: '$objectInfo.data.defaultRecordTypeId', fieldApiName: foodquality})
    typePicklistValues({error, data}) {
        if(data) {
            this.options1 = data.values;
        }
       
    }
    handleChange1(event)
     {
        this.feedback.CCXR_Food_Quality__c = event.target.value;
        console.log(this.feedback.CCXR_Food_Quality__c);
    }

    @wire(getPicklistValues, { recordTypeId: '$objectInfo.data.defaultRecordTypeId', fieldApiName: servicequality})
    wiredPicklistValues({error, data}) {
        if(data) {
            this.options2 = data.values;
            
        }
    }
    handleChange2(event) {
        this.feedback.CCXR_Service_Quality__c = event.target.value;
        console.log(this.feeedback.CCXR_Service_Quality__c);
    }

    handelNamechange(event){
        this.feedback.CCXR_Table__c = event.target.value;
     
    }
    handelorderchange(event){
        this.feedback.CCXR_Order__c = event.target.value;
     
    }

    createfeedbackRec() {
        console.log(this.feedback.CCXR_Food_Quality__c);
        console.log(this.feedback.CCXR_Service_Quality__c);
        console.log(this.feedback.CCXR_Order__c);
        console.log(this.feedback.CCXR_Table__c);
        getfeedback({ accRec : this.feedback })
        
        .then(() => {
              this.dispatchEvent(
                  new ShowToastEvent({
                      title: 'Success',
                      message: 'Thanks For Ur Feedback!!!',
                      variant: 'success'
                  })
              );
          })
          .catch(error => {
              this.dispatchEvent(
                  new ShowToastEvent({
                      title: 'Error',
                      message: 'Error deleting record: ' + error.body.message,
                      variant: 'error'
                  })
              );
          });
    


}}