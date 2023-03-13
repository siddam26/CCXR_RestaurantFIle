({
    init: function (component, event, helper) {
        var pi=component.get('v.recordId');
        
        var action = component.get('c.positons');
        action.setParams({
            pid:pi
        });
          action.setCallback(this,function(response)
                           {
                               var Status=response.getState();
                               var Result=response.getReturnValue();
                               if(Status=="SUCCESS")
                               {
                                   
                                   component.set('v.Location',Result);
                                   helper.secondfun(component, event, helper) ;
                                  
                                    
                               }
                           });
      
        $A.enqueueAction(action);

    }
});