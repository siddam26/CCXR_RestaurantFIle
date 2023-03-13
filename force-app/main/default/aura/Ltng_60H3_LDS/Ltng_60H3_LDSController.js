({
	handleClick : function(cmp, event, helper) {
        cmp.find("deleteRecord").deleteRecord($A.getCallback(function(saveResult){
            if(saveResult.state=="SUCCESS" || saveResult.state=="DRAFT")
            {
              alert("EmploymentWebsite record deleted successfully");  
            }
            else if(saveResult.state=="INCOMPLETE"){
               alert("Error in deleting Employmentwebsite record "); 
            }else{
                alert("Problem in deleting Employmentwebsite record "+JSON.stringify(saveresult.error)); 
            }
            
        }));

	}
})