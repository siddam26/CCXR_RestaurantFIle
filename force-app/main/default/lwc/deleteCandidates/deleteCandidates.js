import { LightningElement,wire,track } from 'lwc';
import getCandidate from '@salesforce/apex/candidatecontroller.getCandidate';
import deleteCandidates from '@salesforce/apex/candidatecontroller.deleteCandidates';
import { refreshApex } from '@salesforce/apex';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class DeleteCandidates extends LightningElement {
  @wire(getCandidate) candidates;
  @track selectedCandidateList = [];
  @track message;
  @track columns = [
      {label:'First Name',fieldName:'First_Name__c',type:'text'},
      {label:'Last Name',fieldName:'Last_Name__c',type:'text'},
      {label:'Email',fieldName:'Email__c',type:'text'}, 
      {label:'Phone',fieldName:'Phone__c',type:'text'}
  ];
  deleteSelRecords(){
      deleteCandidates({selCandidateId:this.selectedCandidateList})
      .then(result => {               
          this.dispatchEvent( 
              new ShowToastEvent({
                  title: 'Success',
                  message: 'Selected Candidates are deleted!',
                  variant: 'success',
              }),
          );    
            
          this.template.querySelector('lightning-datatable').selectedRows = [];

          return refreshApex(this.candidates);        
      })
      .catch(error => {
          this.message = undefined;
          this.error = error;
          this.dispatchEvent(
              new ShowToastEvent({
                  title: 'Error creating records',
                  message: error.body.pageErrors[0].message,
                  variant: 'error',
              }),
          );
          console.log("error", JSON.stringify(this.error));
      });
  }

  prepareSelectedRows(event){
      const selectedRows=event.detail.selectedRows; 
      this.selectedCandidateList = []; 
      for (let i = 0; i < selectedRows.length; i++){           
          this.selectedCandidateList.push(selectedRows[i].Id);
      }  
      console.log(this.selectedCandidateList);   
  }

}