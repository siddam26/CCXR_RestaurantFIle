import { LightningElement,track,api,wire } from 'lwc';
import deleteTables from '@salesforce/apex/EmployeeData.deleteTable';
import getTables from '@salesforce/apex/TableController.getTableData';
import upTables from '@salesforce/apex/TableController.updateTable';
import BackgroundImg from '@salesforce/resourceUrl/logo2';
import { NavigationMixin } from "lightning/navigation";

const TABLES_COLS = [
    {
        label: "Name",
        type: "button",
        typeAttributes: { label: { fieldName: "Name" }, name: "gotoTables", variant: "base" }
    },
    {
        label: "Capacity",
        fieldName: "CCXR_Capacity__c"
    },
    {
        label: "Table Status",
        fieldName: "CCXR_Table_Status__c"
        
    },
    {
        label: "Edit",
        type: "button",
        typeAttributes: {
            label: "Edit",
            name: "editTables",
            variant: "brand"
        }
    }
];
export default class CcrTableContent extends LightningElement {
    imageUrl = BackgroundImg;
    @track getTab;
    @api drecordId;
    @api upRecordID;
    @track isShowModal = false;

    showModalBox() {  
        this.isShowModal = true;
    }

    hideModalBox() {  
        this.isShowModal = false;
    }

    @track showModalBox1 = false;
    showComp1() {
        this.showModalBox1 = true;
    }

    
    @wire(getTables)
    WiredItems({
         error,
         data
     }) {
         if (data) {
             this.getTab = data;
         } else if(error) {
             this.error = error;
         }
     }

     get getBackgroundImage(){
        return `background-image:url("${this.imageUrl}")`;
    }
    
    handleDelete(event) 
        {
            this.drecordId=event.target.value;
            deleteTables({tabRecordId:this.drecordId})
              .then(() => {
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Success',
                            message: 'Record deleted successfully.',
                            variant: 'success'
                        })
                    );
                })
                .catch(error => {
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Error',
                            message: 'Error deleting record: ' + error.body.message,
                            variant: 'error'
                        })
                    );
                });
                
        }
        
       /*
       handleUpdate(event){
            alert(this.upRecordID);
            this.upRecordID=event.target.value;
            upTables({upRecordId:this.upRecordID})
         
            .then(() => {
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Success',
                        message: 'Record Update successfully.',
                        variant: 'success'
                    })
                );
            })
            .catch(error => {
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Error',
                        message: 'Error deleting record: ' + error.body.message,
                        variant: 'error'
                    })
                );
            });
            alert(this.upRecordID);
        }
            */
        tablesCols = TABLES_COLS;

        @wire(getTables, {})
        tabless;
    
        handleRowAction(event) {
            if (event.detail.action.name === "gotoTables") {
                this[NavigationMixin.GenerateUrl]({
                    type: "standard__recordPage",
                    attributes: {
                        recordId: event.detail.row.Id,
                        actionName: "view"
                    }
                }).then((url) => {
                    window.open(url, "_blank");
                });
            }
            if (event.detail.action.name === "editTables") {
                this[NavigationMixin.Navigate]({
                    type: "standard__recordPage",
                    attributes: {
                        recordId: event.detail.row.Id,
                        actionName: "edit"
                    }
                });
            }
        }
}