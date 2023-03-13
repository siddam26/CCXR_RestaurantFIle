import { LightningElement } from 'lwc';

export default class LifeCycleParent extends LightningElement {
    isChildVisible=false 
    constructor()
    {
        super()
        console.log('Parent Constructor called')
    }
    connectedCallback()
    {
        console.log('Parent connected Callback Called')
    }
    renderedCallback()
    {
        console.log('Parent Render Callback Called')
    }
    handleClick()
    {
        this.isChildVisible=!this.isChildVisible
    }
    changeHandler(event)
    {
        this.name=event.target.value
    }
    errorCallback(error,stack)
    {
        console.log(error.message)
        console.log(stack)
    }
}