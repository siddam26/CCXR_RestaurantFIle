import { LightningElement, wire, track,api} from 'lwc';
import { getPicklistValues } from 'lightning/uiObjectInfoApi';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import ACCOUNT_OBJECT from '@salesforce/schema/CCXR_Feedback__c';
import Type_FIELD from '@salesforce/schema/CCXR_Feedback__c.CCXR_Food_Quality__c';
import Type_FIELD2 from '@salesforce/schema/CCXR_Feedback__c.CCXR_Service_Quality__c';

export default class FeedbackForm extends LightningElement 
{
   
    @api objectApiName;
    @api fieldApiName;
    @api selectedValue;

    @track options1=[];

    @wire(getObjectInfo, { objectApiName: '$objectApiName' })
    objectInfo;

    @wire(getPicklistValues, { objectApiName: '$objectApiName', fieldApiName: Type_FIELD })
    wiredPicklistValues({ error, data }) {
      if (data) {
        this.options1 = data.values.map((item) => ({
          label: item.label,
          value: item.value,
        }));
      } else if (error) {
        console.error(error);
      }
    }

    handleValueChange(event) {
      this.selectedValue = event.target.value;
    }
  }