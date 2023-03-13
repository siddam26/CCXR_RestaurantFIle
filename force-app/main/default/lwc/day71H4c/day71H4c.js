import { LightningElement, api, track } from 'lwc';

export default class MyLwcComponent extends LightningElement {
    @api b1;
    @api e1;
@track  result
    get result() {
        return Math.pow(this.b1, this.e1);
    }
}