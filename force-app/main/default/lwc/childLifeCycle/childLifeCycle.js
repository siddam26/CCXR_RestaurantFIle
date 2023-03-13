import { LightningElement } from 'lwc';

export default class LifeCycleChild extends LightningElement {
    constructor()
    {
        super()
        console.log('Child Constructor called')
    }
    connectedCallback()
    {
        console.log('Child connected Callback Called')
    }
    renderedCallback()
    {
        console.log('Child Render Callback Called')
    }
    disconnectedCallback()
    {
        alert('child Disconnected callback')
        window.removeEventListener('click',this.handleClick)
    }
}