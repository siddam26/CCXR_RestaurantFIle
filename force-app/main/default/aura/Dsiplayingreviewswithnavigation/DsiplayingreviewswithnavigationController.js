({
	doinit : function(component, event, helper) {
        var pid = component.get('v.recordId');
        alert(pid);
        component.set('v.columns',[
            {label: 'Name', fieldName: 'Name', type: 'text'},
            {label: 'Rating',fieldName: 'Rating__c',type: 'Number'}
        ]);
        
      var action=component.get('c.reviews');
        action.setParams({
            jaid:pid
        });
        action.setCallback(this,function(response)
                           {
                               var Status=response.getState();
                               var Result=response.getReturnValue();
                               if(Status=="SUCCESS")
                               {
                                   component.set('v.tabledata',Result);
                               }
                           });
        $A.enqueueAction(action);	
        
		
	},
     showselectedrows  : function(component, event, helper)
    {
        var selectedRows = event.getParam('selectedRows');
        var selectedRowsArray=[];
        for(var i=0;i<selectedRows.length;i++)
        {
            alert(selectedRows[i].Rating__c);
            selectedRowsArray.push(selectedRows[i]);
        }
        component.set('v.selectedJAS',selectedRowsArray);
        component.set('v.selected',true);
    },
    
    handleClick: function(cmp, event, helper) {
        var navService = cmp.find("navService");
        var pageReference = cmp.get("v.pageReference");
        event.preventDefault();
        navService.navigate(pageReference);
    }

})