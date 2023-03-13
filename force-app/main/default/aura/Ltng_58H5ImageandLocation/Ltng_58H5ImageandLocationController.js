({
    init: function (cmp, event, helper) {
        cmp.set('v.mapMarkers', [
            {
                location: {
                     Latitude:'17.419699',
                    Longitude:'78.604232'
                },

                title: 'My House',
                description: 'Shashank home'
            }
        ]);
        cmp.set('v.zoomLevel', 16);
    }
});