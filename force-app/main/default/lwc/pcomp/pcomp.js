import { LightningElement, wire } from 'lwc';
import { CurrentPageReference } from 'lightning/navigation';
import { getQueryParameters } from '@salesforce/apex';

export default class TargetComponent extends LightningElement {
    @wire(CurrentPageReference) pageRef;

    inputValue;

    connectedCallback() {
        const query = getQueryParameters(this.pageRef);
        this.inputValue = query.inputvalue;
    }
}