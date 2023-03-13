({
	doinit : function(component, event, helper)
    {
        component.set('v.columns',[
            {label: 'Candidate Name',fieldName: 'Last_Name__c', type: 'text'},
            {label: 'Aadhar number',fieldName: 'Aadhar_number__c',type:'text'},
            {label:'Btech Discipline',fieldName:'B_Tech_Discipline__c',type:'text'},
           {label:'Status',fieldName:'Status__c',type:'text'}
            
            
        ]);
        
      var action=component.get('c.candrec');
       
       
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
        
		
	}
})