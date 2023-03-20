import { LightningElement,track,api,wire} from 'lwc';
import CustomerTableStatusData from '@salesforce/apex/CustomerTableStatusData.getCustomerTableStatusData';
import { NavigationMixin } from 'lightning/navigation';
import { encodeDefaultFieldValues } from 'lightning/pageReferenceUtils';
import BackgroundImg from '@salesforce/resourceUrl/welcomePageBG';
export default class WelcomePage extends NavigationMixin(LightningElement) {
    @api tokenNumber='';
    @api records;
    @api errors; 
    @track imageUrl = BackgroundImg;
   
    get getBackgroundImage(){
        return `background-image:url("${this.imageUrl}")`;
    }
    handleTokenChange(event) 
    {
        this.tokenNumber=event.target.value;
    }
    /*enter() {
        parseInt(this.tokenNumber)
        alert(this.tokenNumber);
         
        //Navigate to a specific CustomTab.
        this[NavigationMixin.Navigate]({
            type: 'standard__navItemPage',
            attributes: {
                apiName: 'CCXR_Menu_Screen'
            },
            state: {
                c__tokenNumber2:500
            }
        });
        
    }*/
    enter() 
    {
        CustomerTableStatusData({token:this.tokenNumber})
        .then(result=>{
            this.data=result;
          
          
        })
        .catch(error=>{
            this.error=error;
        })
       
       this[NavigationMixin.Navigate]({
            type: "standard__component",
            attributes: {
                componentName: "c__NavigationHelper"
            },
            state: {
                c__token: this.tokenNumber,
                c__table: this.data.CCXR_Table__r.Name,
                c__id: this.data.Id,
                c__cname:this.data.CCXR_Customer__r.Name
            }
        });
           
    }
 
    }