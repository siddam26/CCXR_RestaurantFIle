import { LightningElement,track,wire } from 'lwc';
import getreviews from '@salesforce/apex/reviewcontroller.getreviews';
import deletereviews from '@salesforce/apex/reviewcontroller.deletereviews';
import { refreshApex } from '@salesforce/apex';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class DeleteReviews extends LightningElement {
    @wire(getreviews) reviews;
  @track selectedreviewsList = [];
  @track message;
  @track columns = [
      {label:'Name',fieldName:'Name',type:'text'},
      
      {label:'Job Application',fieldName:'Job_Application__c',type:'id'}, 
      {label:'Rating',fieldName:'Rating__c',type:'number'}
  ];
  deleteSelRecords(){
    deletereviews({selreviewId:this.selectedreviewsList
    })
      .then(result => {               
          this.dispatchEvent( 
              new ShowToastEvent({
                  title: 'Success',
                  message: 'Selected Reviews are deleted!',
                  variant: 'success',
              }),
          );    
            
          this.template.querySelector('lightning-datatable').selectedRows = [];

          return refreshApex(this.reviews);        
      })
      .catch(error => {
          this.message = undefined;
          this.error = error;
          this.dispatchEvent(
              new ShowToastEvent({
                  title: 'Error Deleting records',
                  message: error.body.pageErrors[0].message,
                  variant: 'error',
              }),
          );
          console.log("error", JSON.stringify(this.error));
      });
  }

  prepareSelectedRows(event){
      const selectedRows=event.detail.selectedRows; 
      this.selectedreviewsList = []; 
      for (let i = 0; i < selectedRows.length; i++){           
          this.selectedreviewsList.push(selectedRows[i].Id);
      }  
      console.log(this.selectedreviewsList);   
  }

}