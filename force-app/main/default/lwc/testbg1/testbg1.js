import { LightningElement } from 'lwc';
import BackgroundImg from '@salesforce/resourceUrl/logo';

export default class BackgroundImage extends LightningElement {
    imageUrl = BackgroundImg;

    get getBackgroundImage(){
        return `background-image:url("${this.imageUrl}")`;
    }
}