({
    simulateServerRequest: function (onResponse) {
        setTimeout(function () {
            var serverResponse = {
                selectedColorId: 2,
                colors: [
                    { id: 1, label: 'Red' },
                    { id: 2, label: 'Green', selected: true },
                    { id: 3, label: 'Blue' }
                ]
            };

            onResponse.call(null, serverResponse);
        }, 2000);
    }
});