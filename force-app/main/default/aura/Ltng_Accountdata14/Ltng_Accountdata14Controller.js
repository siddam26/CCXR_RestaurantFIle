({
    getaccounts : function(component, event, helper) 
    {
        //1.calling apex class methods
        var action = component.get('c.readaccounts');
        //2.provide parameteres if needed
        //4.get the result from controller & set aura cmp attribute
        action.setCallback(this,function(response)
                           {
                               var status = response.getState();
                               var result = response.getReturnValue();
                               if(status=="SUCCESS")
                               {
                                   component.set('v.Accounts',result);
                               }
                               
                           });
        //3. add action to job queue for execution
        $A.enqueueAction(action);
        
    }
})