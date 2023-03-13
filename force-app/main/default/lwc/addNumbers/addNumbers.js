import { LightningElement,track } from 'lwc';

export default class AddNumbers extends LightningElement {
    @track FirstNumber=0
    @track SecondNumber=0
    result=0
    numberchange(event)
    {
        if(event.target.name==='fnumber')
        {
            this.FirstNumber=event.target.value
        }
        if(event.target.name==='snumber')
        {
            this.SecondNumber=event.target.value
        }
        this.result=parseInt(this.FirstNumber)+parseInt(this.SecondNumber)
    }

}