import { LightningElement,track} from 'lwc';
import Accrec1 from '@salesforce/apex/AccountController1.Accrec';
export default class Displayingaccountdatausingdatatable extends LightningElement {
    @track data
    @track columns=
    [
        {        
            label:'Account Name',
            fieldName:'Name',
            type:'text'
        },
        {
            label:'Account Type',
            fieldName:'Type',
            type:'text'
        },
        {
            label:'Account Industry',
            fieldName:'Industry',
            type:'text'
        },
        {
            label:'Active',
            fieldName:'Active__c',
            type:'text'
        }

    ];
    connectedCallback(){
        Accrec1()
        .then(result=>{
            this.data=result
        })
        .catch(error=>{
            this.error=error
        })
    }
}