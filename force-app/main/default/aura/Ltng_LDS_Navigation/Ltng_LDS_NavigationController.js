({
	Navigate : function(component, event, helper) {
        var navservice = component.find('navService');
        var pageref={
            type:'standard__objectPage',
            attributes:{
                objectApiName: 'Account',
                actionName: 'list'
            },
            state:{
                filterName:'MyAccounts'
            }
        };
        navservice.navigate(pageref);
		
	}
})