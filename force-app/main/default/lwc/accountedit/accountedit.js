import { LightningElement, wire, api } from 'lwc';
import lwcAddEditButtonToTable from '@salesforce/apex/customTable.getAllAccounts';
import { NavigationMixin } from 'lightning/navigation';
    const columns = [
        {
            type:"button",
            fixedWidth: 150,
            typeAttributes: {
                label: 'Edit',
                name: 'edit',
                variant: 'brand',
                onclick: '{handleClick}'
            }
        },       
        {label: 'Order Name', fieldName: 'CCXR_Order_Id__r.Name', type: 'text'},
        {label: 'Asssigned To', fieldName: 'CCXR_Accepted_By_Chef__c', type: 'text'},
    
    ];
export default class LwcAddEditButtonToTable extends NavigationMixin(LightningElement){
    @api recordId;
    @api issueLogData;
    @api coulumList = columns;
    @api error;
 
    @wire(lwcAddEditButtonToTable)
        wiredData({error, data }){
            if (data){
                console.log('Data \n', data);
                this.issueLogData = data;
                this.error = undefined;
            }
            else if (error){
                console.error('Error:', error);
            }
        }

        handleClick(){
            // eslint-disable-next-line no-alert
            alert('Remove clicked');
            alert(this.recordId);
        }
}