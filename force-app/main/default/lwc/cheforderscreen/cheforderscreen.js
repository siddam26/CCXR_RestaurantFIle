import { LightningElement,api,track,wire } from 'lwc';
import getAllAccounts from '@salesforce/apex/customTable.getAllAccounts';
import updatecheforderstatus from '@salesforce/apex/customTable.updatecheforderstatus';
import updatecheforderstatus1 from '@salesforce/apex/customTable.updatecheforderstatus1';
import updatechefemployeestatus1 from '@salesforce/apex/customTable.updatechefemployeestatus1';
import getAccountNames from '@salesforce/apex/customTable.getAccountNames';
import { refreshApex } from '@salesforce/apex';

export default class Cheforderscreen extends LightningElement{
  
    @api button1v;
    @api button2v;
    @api records;
    @api errors;
    @api itemId;
    @api itemIdr;
    @api chefidd;
    @api accountName
    @track showButton=true;
    @track showButton1=false;
    accountOptions = [];
    @wire(getAllAccounts,{ } )
    wiredCases(result)
    {
      this.wiredData = result;
      this.records = result.data;
      this.errors = result.error;
    

    }
    handleSelection(event) 
    {
      this.chefidd = event.target.value;
    }
    handleButtonClick(event) {
      alert('loh');
      this.button1v=true;
      this.button2v=false;
      this.itemId = event.target.value;
      updatecheforderstatus({ cat: this.itemId, cat1: this.chefidd,but1 :this.button1v,but2 :this.button2v })
        .then(() => {
          // Refresh the data
          return refreshApex(this.wiredData);
        })
        .catch((error) => {
          console.error(error);
        });
      updatechefemployeestatus1({cid :this.chefidd})
        alert(this.chefidd);
      }
    handleButtonClick11(event)
    {
      
      this.button2v=true;
      this.itemIdr = event.target.value;
      updatecheforderstatus1({cat:this.itemIdr,but2 : this.button2v})
      .then(() => {
        // Refresh the data
        return refreshApex(this.wiredData);
      })
      .catch((error) => {
        console.error(error);
      });
      
      
    }
    connectedCallback() 
    {
      getAccountNames({accountName:this.itemId})
      .then(result => {
        this.accountOptions = result.map(account => ({
          label: account.Name+' , '+account.CCXR_Name__c+' , '+account.CCXR_Type_Of_Chef__c,
          value: account.Id
        }));
      })
      
    }
    /*
    handleMouseOver()
    {
      getAccountNames({accountName:this.itemId})
      .then(result => {
        this.accountOptions = result.map(account => ({
          label: account.Name+' , '+account.CCXR_Name__c+' , '+account.CCXR_Type_Of_Chef__c,
          value: account.Id
        }));
      })

    }
    */
  }