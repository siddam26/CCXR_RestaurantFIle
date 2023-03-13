({
	createcontact : function(component, event, helper) 
    {
        var fname=component.get('v.FirstName');
        var lname=component.get('v.LastName');
        var ph=component.get('v.Phone');
        var em=component.get('v.Email');
        var accid=component.get('v.recordId');
        var action=component.get('c.createcon');
        action.setParams({
           FN :fname,
           LN :lname,
           PH :ph,
            EM:em,
            aid:accid
        });
        action.setCallback('this',function(Response)
                           {
                               var status=Response.getState();
                               var result=Response.getReturnValue();
                               alert(status);
                               if(status=="SUCCESS")
                               {
                                  alert("contactt created suuccessfully");
                               }
                           })
        $A.enqueueAction(action);
	}
})