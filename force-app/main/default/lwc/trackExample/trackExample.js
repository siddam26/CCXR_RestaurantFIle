import { LightningElement,track } from 'lwc';

export default class TrackExample extends LightningElement {
    @track greetings
    bye="bye..."
    hanldechange(event)
    {
        
        this.greetings=event.target.value
       console.log(this.greetings)
    }
    
}