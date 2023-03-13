({
	handleClick : function(cmp, event, helper) {
        cmp.find("deleteRecord").deleteRecord($A.getCallback(function(saveResult){
            if(saveResult.state=="SUCCESS" || saveResult.state=="DRAFT")
            {
              alert("Account deleted successfully");  
            }
            else if(saveResult.state=="INCOMPLETE"){
               alert("Error in deleting Account record "); 
            }else{
                alert("Problem in deleting Account record "+JSON.stringify(saveresult.error)); 
            }
            
        }));

	}
})