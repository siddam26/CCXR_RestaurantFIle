import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    isvisible=false
    handleClick(event)
    {
        this.isvisible=true
    }
    fullName="CommerceCx"
    age=25
    isIndian=true

    markList=[21,54,85,55]

    empData={
        ename:"shashank",
        eage:33,
        esal:93500
    }
}