import { LightningElement,track } from 'lwc';
export default class MainMenu extends LightningElement {
    @track isShowModal=false;

    showModalBox() {  
        this.isShowModal = true;
    }

    hideModalBox() {  
        this.isShowModal = false;
    }

    @track isShowModal2 = false;

    showModalBox1() {  
        this.isShowModal2 = true;
    }

    hideModalBox1() {  
        this.isShowModal2 = false;
    }
  }