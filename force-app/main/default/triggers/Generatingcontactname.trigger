trigger Generatingcontactname on Account (after insert) {
   
    list<contact> c1 =new list<contact>();
    for(account a:trigger.new)
    {
        contact c =new contact(lastname=a.Name+'contact',phone='5555',AccountId=a.Id,email='katapally.uday@gmail.com');
        
        c1.add(c);
    }
    insert c1;
    list<account> a3 = new list<account>();
    list<account> a1=[select Name,Contact_Name__c,
                (select lastname from contacts limit 1)
                 from account where id IN:trigger.new];
    for(account a2:a1)
    {
        contact c4 =[select lastname from contact where accountid=:a2.Id];
        a2.Contact_Name__c = c4.LastName;
        
        a3.add(a2);
        
    }
    update a3;
    
   
        

}