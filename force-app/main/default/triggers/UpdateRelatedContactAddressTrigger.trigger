//Update the contact address when account address changed
trigger UpdateRelatedContactAddressTrigger on Account (after update) {
    
     List<Contact> updateCons = new List<Contact>();
    for(Account newa : trigger.new){
        Account a= trigger.oldmap.get(newa.id);
        if(a.id == newa.Id && a.BillingCity!= newa.BillingCity){
            List<Contact> cons =[Select AccountId, mailingCity from Contact where Accountid =: newa.id];
            
            for(Contact c: cons){
                c.mailingcity = newa.BillingCity;
                updateCons.add(c);
            }
        }
    }
    update updateCons;

}