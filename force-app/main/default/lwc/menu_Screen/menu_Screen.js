import { LightningElement,track } from 'lwc';
import saveItems from '@salesforce/apex/ItemCreationController.createItems';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
//import Industry from '@salesforce/schema/Account.Industry';
export default class Menu_Screen extends LightningElement {
    @track keyIndex=1;
    @track error;
    @track message;
    @track itemRecList=[
        {
            CCXR_Item_Name__c: '',
            CCXR_Item_Category__c: '',
            CCXR_Item_SubCategory__c:'',
            CCXR_Price__c:'',
            Item_Image_Link__c:''

        }
    ];
    //Add Row
    addRow(){
        this.keyIndex+1;
        this.itemRecList.push({
            CCXR_Item_Name__c: '',
            CCXR_Item_Category__c: '',
            CCXR_Item_SubCategory__c:'',
            CCXR_Price__c:'',
            Item_Image_Link__c:''
        });
    }
    changeHandler(event){
        if(event.target.name==='itmName'){
            this.itemRecList[event.target.accessKey].CCXR_Item_Name__c=event.target.value;
        }
        else if(event.target.name==='itmCat'){
            this.itemRecList[event.target.accessKey].CCXR_Item_Category__c=event.target.value;
        }
        else if(event.target.name==='itemSubCat'){
            this.itemRecList[event.target.accessKey].CCXR_Item_SubCategory__c=event.target.value;
        }
        else if(event.target.name==='itemPrice'){
            this.itemRecList[event.target.accessKey].CCXR_Price__c=event.target.value;
        }
        else if(event.target.name==='ItemLink'){
            this.itemRecList[event.target.accessKey].Item_Image_Link__c=event.target.value;
        }
    }
    //save Items
    saveMultipleItems(){
        saveItems({itemList:this.itemRecList})
        .then(result=>{
            this.message=result;
            this.error=undefined;
            this.itemRecList.forEach(function(item){
                item.CCXR_Item_Name__c='',
                item.CCXR_Item_Category__c='',
                item.CCXR_Item_SubCategory__c='',
                item.CCXR_Price__c='',
                item.Item_Image_Link__c=''
            });
            if(this.message!=undefined){
                this.dispatchEvent(
                    new ShowToastEvent({
                        title:'Success!',
                        message:'Items Created!',
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
        if(this.itemRecList.length>=1){
            this.itemRecList.splice(event.target.accessKey,1);
            this.keyIndex-1;
        }
    }
}