import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class SourceComponent extends NavigationMixin(LightningElement) {
         
    handleLWCNavigate() {
        this[NavigationMixin.Navigate]({
            type: "standard__component",
            attributes: {
                componentName: "c__TargetComponent"
            },
            state: {
                c__amount: 1000
            }
        });
    }
}