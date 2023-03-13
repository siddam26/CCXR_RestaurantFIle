import { LightningElement, track } from 'lwc';
import saveAccounts from '@salesforce/apex/AccountCreation.createAccounts';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import Industry from '@salesforce/schema/Account.Industry';
export default class AddRemoveDynamicRows extends LightningElement {
    @track keyIndex=1;
    @track error;
    @track message;
    @track accountRecList=[
        {
            Name: '',
            Industry: '',
            Phone:''
        }
    ];
    //Add Row
    addRow(){
        this.keyIndex+1;
        this.accountRecList.push({
            Name:'',
            Industry:'',
            Phone:''
        });
    }
    changeHandler(event){
        if(event.target.name==='accName'){
            this.accountRecList[event.target.accessKey].Name=event.target.value;
        }
        else if(event.target.name==='accIndustry'){
            this.accountRecList[event.target.accessKey].Industry=event.target.value;
        }
        else if(event.target.name==='accPhone'){
            this.accountRecList[event.target.accessKey].Phone=event.target.value;
        }
    }
    //save Accounts
    saveMultipleAccounts(){
        saveAccounts({accountList:this.accountRecList})
        .then(result=>{
            this.message=result;
            this.error=undefined;
            this.accountRecList.forEach(function(item){
                item.Name='',
                item.Industry='',
                item.Phone=''
            });
            if(this.message!=undefined){
                this.dispatchEvent(
                    new ShowToastEvent({
                        title:'Success!',
                        message:'Accounts Created!',
                        variant:'success',
                    }),
                );
            }
        })
        .catch(error=>{
            this.message=undefined;
            this.error=error;
            this.dispatchEvent(
                new ShowToastEvent({
                    title:'Error Creating records',
                    message:IsReductionOrder.body.message,
                    variant:'error'
                }),
            );
        });
    }
    removeRow(event){
        if(this.accountRecList.length>=1){
            this.accountRecList.splice(event.target.accessKey,1);
            this.keyIndex-1;
        }
    }
}