import { LightningElement } from 'lwc';

export default class ToggleButton extends LightningElement {
    istoggle=false
    toggleclick(event)
    {
        this.istoggle=true
    }
}