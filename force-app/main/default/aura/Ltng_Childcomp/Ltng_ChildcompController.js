({
	childaction : function(component, event, helper) {
        var params = event.getParam('arguments');
        if(params)
        {
            var param1 =params.Mname;
            var param2 =params.Mage;
            var param3= params.Msalary;
             param1 =   param1+'cool';
             param2 = parseInt(param2)+1;
             param3 = parseInt(param3)+1000;
            component.set('v.Mname1',param1);
            component.set('v.Mage2',param2);
            component.set('v.Msalary3',param3);
            
            
        }
        
        
		
	}
})