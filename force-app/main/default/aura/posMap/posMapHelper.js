({
secondfun : function(component, event, helper) {
        var selectedRows = component.get("v.Location");
    
    
     for(var i=0;i<selectedRows.length;i++)
        {
            var l=selectedRows[i].Location__c;
            component.set('v.mapMarkers', [
                    {
                        location: {
                            City:l,
                            State:l
                        }
                       
                    }
                ]);
         
                component.set('v.zoomLevel', 12);
          
  
        }
}
})