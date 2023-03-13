import { LightningElement,wire,api} from 'lwc';
import getTableData from '@salesforce/apex/TableController.getTableData';
export default class TableDetails extends LightningElement 
{
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

    handleClick(event) {
        // Handle detail button click here
    }
}