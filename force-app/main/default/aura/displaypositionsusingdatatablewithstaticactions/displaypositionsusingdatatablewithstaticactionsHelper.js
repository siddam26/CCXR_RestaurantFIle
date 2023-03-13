({
    
	removeBook: function (cmp, row) {
        var rows = cmp.get('v.tabledata');
        var rowIndex = rows.indexOf(row);

        rows.splice(rowIndex, 1);
        cmp.set('v.tabledata', rows);
    }
})