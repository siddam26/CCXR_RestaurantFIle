({
	doinit : function(component, event, helper) {
        var pid = component.get('v.recordId');
        alert(pid);
        component.set('v.columns',[
            {label: 'Job Application Name', fieldName: 'Name', type: 'text'},
            {label: 'Job Application Status',fieldName: 'Status__c',type: 'text'},
            {label: 'Candidate Name',fieldName: 'Candidate__r.Last_Name__c',type: 'text'},
            {label: 'Postion Name',fieldName: 'Position__r.Name',type: 'text'}
        ]);
        
      var action=component.get('c.japp');
        action.setParams({
            posid:pid
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
            alert(selectedRows[i].Status__c);
            selectedRowsArray.push(selectedRows[i]);
        }
        component.set('v.selectedJAS',selectedRowsArray);
        component.set('v.selected',true);
    }
})