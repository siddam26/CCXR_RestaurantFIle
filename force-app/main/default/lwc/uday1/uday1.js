import { LightningElement, wire } from 'lwc';
import getAccountNames from '@salesforce/apex/AccountController54.getAccountNames';

export default class AutoPopulateAccount extends LightningElement {
  accountOptions = [];

  handleChange(event) {
    const accountName = event.target.value;
    getAccountNames({ accountName })
      .then(result => {
        this.accountOptions = result.map(account => ({
          label: account.Name,
          value: account.Id
        }));
      })
      .catch(error => {
        console.error(error);
      });
  }

  handleSelection(event) {
    // Handle selected account
  }
}