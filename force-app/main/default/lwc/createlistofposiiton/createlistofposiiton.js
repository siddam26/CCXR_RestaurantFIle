import { LightningElement,track } from 'lwc';
import saveAccounts from '@salesforce/apex/listpositions.createAccounts';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class Createlistofposiiton extends LightningElement {
    @track keyIndex=1;
    @track error;
    @track message;
    @track accountRecList=[
        {
            Name: '',
            Status__c: '',
            Functional_Area__c:'',
            Min_Pay__c: '',

        }
    ];
    //Add Row
    addRow(){
        this.keyIndex+1;
        this.accountRecList.push({
            Name: '',
            Status__c: '',
            Functional_Area__c:'',
            Min_Pay__c: '',
        });
    }
    changeHandler(event){
        if(event.target.name==='posName'){
            this.accountRecList[event.target.accessKey].Name=event.target.value;
        }
        else if(event.target.name==='PosStatus'){
            this.accountRecList[event.target.accessKey].Status__c=event.target.value;
        }
        else if(event.target.name==='PosFunctionalArea'){
            this.accountRecList[event.target.accessKey].Functional_Area__c=event.target.value;
        }
        else if(event.target.name==='PosMinPay'){
            this.accountRecList[event.target.accessKey].Min_Pay__c=event.target.value;
        }
        
    }

    saveMultipleAccounts(){
        
        saveAccounts({accountList:this.accountRecList})
        .then(result=>{
            
            this.message=result;
            this.error=undefined;
            this.accountRecList.forEach(function(item){
                item.Name='',
                item.Status__c='',
                item.Functional_Area__c='',
                item.Min_Pay__c=''
            });
            if(this.message!=undefined){
                this.dispatchEvent(
                    new ShowToastEvent({
                        title:'Success!',
                        message:'Positions Created!',
                        variant:'success'
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