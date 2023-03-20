import { LightningElement,track,wire } from 'lwc';


export default class WaiterScreen extends LightningElement 
{
    @track customer=false;
    @track isShowModal = false;
    @track customerstatus= false;

    showModalBox() {  
        this.isShowModal = true;
    }

    hideModalBox() {  
        this.isShowModal = false;
    }

    AssignTable()
    {
        this.customer=true;
        this.customerstatus=false;
    }
    AllCustomerStatus()
    {
        this.customerstatus=true;
        this.customer=false;
    }
    
    
}