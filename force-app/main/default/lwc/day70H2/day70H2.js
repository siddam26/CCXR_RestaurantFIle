import { LightningElement,track,wire } from 'lwc';
import accountType from '@salesforce/apex/accountIndustry.accountType';
import accountType1 from '@salesforce/apex/accountIndustry.accountType1';
export default class TypeAccounts extends LightningElement {
    @track acc1
    @track acc2
      @track data
    
      @wire(accountType)accountType({error,data})
      {
          if(data)
          {
              this.acc1=data
          }
          if(error)
          {
              this.data=undefined
          }
      }
      
      @wire(accountType1)accountType1({error,data})
      {
          if(data)
          {
              this.acc2=data
          }
          if(error)
          {
              this.data=undefined
          }   
      }
}