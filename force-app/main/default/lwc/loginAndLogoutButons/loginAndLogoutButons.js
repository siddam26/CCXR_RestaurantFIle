import { LightningElement } from 'lwc';

export default class LoginAndLogoutButons extends LightningElement {
    checkSubmit=false
    checkSubmit1=true
    loginlick(event)
    {
        this.checkSubmit=true
        this.checkSubmit1=false

    }
    logoutlick(event)
    {
        this.checkSubmit=false
        this.checkSubmit1=true
    }

}