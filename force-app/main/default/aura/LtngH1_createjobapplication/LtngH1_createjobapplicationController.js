({
    createJob : function(component, event, helper) 
    {
        var status=component.find("st").get('v.value');
        var pid=component.get('v.recordId');
        
        var action = component.get('c.createjobap');	
        action.setParams
        ({
            status1:status,
            pid1:pid
        });
         action.setCallback(this,function(response)
                           {
                               var str1=response.getState();
                               var Result=response.getReturnValue();
                               alert(str1)
                               if(str1=="SUCCESS")
                               {
                                   alert('Job Application Created Successfully');
                                   
                               }
                               
                           });
        
        $A.enqueueAction(action);
    }
})