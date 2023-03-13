({
    doInit : function(component, event, helper)
    {
        component.find("createCandRecord").getNewRecord(
            "Candidate__c" ,
            null,
            false,
            $A.getCallback(function(){
                var conrec=component.get("v.newCandidateRecord");
                var error=component.get("v.recordError");
                
                if(error||conrec == null)
                {
                    alert('Error in creating Candidate');
                }
                else
                {
                    alert('Template Initilize successful');
                }
                
            })
            
        );	
    },
    createcandidate : function(component, event, helper)
    {
       
        component.find("createCandRecord").saveRecord($A.getCallback(function(saveResult)
                                                                    {
                                                                        if(saveResult.state=="SUCCESS" || saveResult.state=="DRAFT")
                                                                        {
                                                                            alert("Candidate Created Successfully");  
                                                                        }
                                                                        else if(saveResult.state=="INCOMPLETE")
                                                                        {
                                                                            alert("Error in creating Candidate record ");
                                                                        }
                                                                            else
                                                                            {
                                                                                alert("Problem in creating  Candidate record "+JSON.stringify(saveResult.error));
                                                                            }
                                                                       


                                                                        
                                                                    }));
         var navservice = component.find('navService');
        var pageref={
            type:'standard__objectPage',
            attributes:{
                objectApiName: 'Job_Application__c',
                actionName: 'list'
            },
            state:{
                filterName:'All'
            }
        };


navservice.navigate(pageref);
    }
    
})