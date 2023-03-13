({
    openPrompt: function(cmp, event) {
        this.LightningPrompt.open({
            theme:'success: green',
            message: 'this is the prompt message',
            defaultValue: 'default input value',
             label: 'Please Respond',
            variant: 'header'
           
            
        }).then(function(result) {
            alert(result);
           
            console.log('prompt result is', result);
        });
    }
});