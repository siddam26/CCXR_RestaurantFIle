import { LightningElement,track,wire } from 'lwc';
import getAccs from '@salesforce/apex/AccountLWCController1.getAccount';

export default class AccountDataUsingController extends LightningElement {
    @track data 
    @track error 
    
    @track columns=[
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
        }
    ];
    connectedCallback(){
        getAccs()
        .then(result=>{
            this.data=result
        })
        .catch(error=>{
            this.error=error
        })
    }
}