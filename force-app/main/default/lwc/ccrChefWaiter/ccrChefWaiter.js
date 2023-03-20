import { LightningElement,track,wire,api } from 'lwc';
import getEmpList from '@salesforce/apex/EmployeeData.getEmployeeList';
import deleteRecordById from '@salesforce/apex/EmployeeData.deleteEmp';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import BackgroundImg from '@salesforce/resourceUrl/logo2';

export default class CcrRS1 extends LightningElement {
    imageUrl = BackgroundImg;
    @track error ;
    @track empList;

    @api drecordId;

    columns = [
        { id:'1',label: 'Name', fieldName: 'CCXR_Name__c' },
        { id:'2',label: 'Type Of Employee', fieldName: 'CCXR_Type_of_Employee__c' },
        { id:'3',label: 'Phone Number', fieldName: 'CCXR_Phone__c', type: 'phone' },
        { id:'4',label: 'Email Address', fieldName: 'CCXR_Email__c', type: 'email' },
        { id:'5',label: 'Status', fieldName: 'CCXR_Chef_Statuses__r.CCXR_Chef_Current_Status__c' }
       ];

       @wire(getEmpList,{})
       wiredColumns({
           error,
           data
       }) {
           if (data) {
               this.empList = data;
           } else if(error) {
               this.error = error;
           }
       }

       get getBackgroundImage(){
        return `background-image:url("${this.imageUrl}")`;
    }
    
    handleDelete(event) 
    {
        this.drecordId=event.target.value;
        
        
        deleteRecordById({selRecordId:this.drecordId})
          .then(() => {
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Success',
                        message: 'Record deleted successfully.',
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
            
    }
    
    
}