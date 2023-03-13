({
    doInit : function(component, event, helper)
    {
        component.find("createPosRecord").getNewRecord(
            "Position__c" ,
            "0125g000000ZxYY",
            false,
            $A.getCallback(function(){
                var posrec=component.get("v.newPositionRecord");
                var error=component.get("v.recordError");
                
                if(error||posrec == null)
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
    createPosition : function(component, event, helper)
    {
       
        component.find("createPosRecord").saveRecord($A.getCallback(function(saveResult)
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