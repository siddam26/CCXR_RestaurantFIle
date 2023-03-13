import { LightningElement,wire,api} from 'lwc';
import getTableData from '@salesforce/apex/TableController.getTableData';
export default class Table extends LightningElement 
{
    @api message
    @api className
    @api recordId;
    @api  tables;
    @wire(getTableData)
    wiredContacts({ error, data }) {
        if (data) {
            this.tables = data;
        } else if (error) {
            console.error(error);
        }
    }
    get statusClassName() {
        return this.className ? 'status ' + this.className : 'status'
    }
    
}