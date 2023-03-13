({
	saveacc : function(component, event, helper) {
        component.find("saveRecord").saveRecord($A.getCallback(function(saveResult)
          {
              if (saveResult.state == "SUCCESS" || saveResult.state == "DRAFT") 
               {
                alert("account updated successfully");
                } 
              else if (saveResult.state == "INCOMPLETE") 
                {
                  alert("User is offline, device doesn't support drafts.");
                }
              else
              {
                  alert("problem in updating account"+JSON.stringify(saveResult.error));
                  
              }
                                                                   
          }));
		
                                                               
    }})