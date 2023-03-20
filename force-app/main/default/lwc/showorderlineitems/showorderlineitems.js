import { LightningElement ,wire,track,api} from 'lwc';
import showOrderLines from '@salesforce/apex/ShowOrderLines.showOrderLines';

export default class Showorderlineitems extends LightningElement {
    @track records;
    @track errors;
    
    @api recordId;

    @wire(showOrderLines,{orid:'a022w00000lwCx6AAE'} )
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