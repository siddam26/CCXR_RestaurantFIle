({
	changename : function(component, event, helper) {
        var accname=component.get('v.Name');
        var ph=component.get('v.Phone');
        var indd=component.get('v.Indsustry');
        alert(accname);
        alert(indd);
        var action=component.get('c.createcaccount');
        action.setParams({
            
            nam:accname,
            ph:ph,
            indus:indd,
            
        })
       
        action.setCallback(this,function(response){
            var status =response.getState();
            var result=response.getReturnValue();
            alert(status);
            if(status=="SUCCESS")
            {
                alert("Account created successfully");
                
            }
           })
        $A.enqueueAction(action);
		
		
	}
})