import { LightningElement, wire, track,api} from 'lwc';
import { getPicklistValues } from 'lightning/uiObjectInfoApi';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import feedback_obj from '@salesforce/schema/CCXR_Feedback__c';
import foodquality from '@salesforce/schema/CCXR_Feedback__c.CCXR_Food_Quality__c';
import servicequality from '@salesforce/schema/CCXR_Feedback__c.CCXR_Service_Quality__c';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class Feddbackformownorg extends LightningElement {
    @track options1 = [];
    @track options2 = [];
    @api selectedValue1;
    @api selectedValue2;
    @track imageUrl='https://commercecx62-dev-ed--c.vf.force.com/resource/1678776817000/restaurantlogo1';

    
    @wire(getObjectInfo, { objectApiName: feedback_obj })
    objectInfo;

    
    @wire(getPicklistValues, { recordTypeId: '$objectInfo.data.defaultRecordTypeId', fieldApiName: foodquality})
    typePicklistValues({error, data}) {
        if(data) {
            
            
            this.options1 = data.values;
            
        }
       
    }
   

    
    handleChange1(event) {
        this.selectedValue1 = event.detail.value;
    }

    @wire(getPicklistValues, { recordTypeId: '$objectInfo.data.defaultRecordTypeId', fieldApiName: servicequality})
    wiredPicklistValues({error, data}) {
        if(data) {
            
            
            this.options2 = data.values;
            
        }
       
    }
    handleChange2(event) {
        this.selectedValue2 = event.detail.value;
    }
    

    
}