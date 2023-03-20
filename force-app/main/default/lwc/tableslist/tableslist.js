import { LightningElement ,wire,track} from 'lwc';
import getTableData from '@salesforce/apex/TableController.getTableData';


export default class Tableslist extends LightningElement {
    
    @track tableColumns = [
        { label: 'Name', fieldName: 'Name', type: 'text' },       
        { label: 'Capacity', fieldName: 'CCXR_Capacity__c', type: 'text'},
        { label: 'Employee Name', fieldName: 'CCXR_Restaurant_Employee__c', type: 'text' },
        { label: 'Image Link', fieldName: 'Table_Image_Link__c', type: 'url'},
        { label: 'Status', fieldName: 'CCXR_Table_Status__c', type: 'text' }
   ]
    
    @track errors;
    @track data ;
    @wire(getTableData) 
      gettable({error,data}){
        if (data) {
            this.data = data;
        } else if (error) {
            this.errors = undefined;
        }
    }
}