({
    doInit : function(component, event, helper)
    {
        component.find("createConRecord").getNewRecord(
            "Contact" ,
            null,
            false,
            $A.getCallback(function(){
                var conrec=component.get("v.newContactRecord");
                var error=component.get("v.recordError");
                
                if(error||conrec == null)
                {
                    alert('Error in creation Contact');
                }
                else
                {
                    alert('Template Initilize successful');
                }
                
            })
            
        );	
    },
    createcontact : function(component, event, helper)
    {
        var aid=component.get("v.recordId");
        component.set("v.recordFieldToQuery.AccountId",aid);
        component.find("createConRecord").saveRecord($A.getCallback(function(saveResult)
                                                                    {
                                                                        if(saveResult.state=="SUCCESS" || saveResult.state=="DRAFT")
                                                                        {
                                                                            alert("Contact Created Successfully");  
                                                                        }
                                                                        else if(saveResult.state=="INCOMPLETE")
                                                                        {
                                                                            alert("Error in Contact record ");
                                                                        }
                                                                            else
                                                                            {
                                                                                alert("Problem in creating  Contct record "+JSON.stringify(saveResult.error));
                                                                            }
                                                                        
                                                                    }));
    }
})