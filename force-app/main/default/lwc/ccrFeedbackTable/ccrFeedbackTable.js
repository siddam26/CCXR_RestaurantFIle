import { LightningElement,wire,track } from 'lwc';
import getAllFeed from '@salesforce/apex/EmployeeData.getAllFeedback';

export default class CcrFeedbackTable extends LightningElement {

    @track records;
    @track errors;
    
    @wire(getAllFeed,{} )
    wiredCases({data,error}){
    if(data)
    {
        this.records = data;
        this.errors = undefined;
    }
    if(error)
    {
        this.errors = error;
        this.records = undefined;
        }
    }
}