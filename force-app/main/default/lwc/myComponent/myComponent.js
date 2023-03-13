import { LightningElement , api} from 'lwc';

export default class MyComponent extends LightningElement {
    @api recordId;

    connectedCallback() {
      console.log('Record Id:', this.recordId);
    }
}