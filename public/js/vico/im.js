/* -*- javascript -*- */
(function() {
    var tabs = new Ext.Panel({
        layout : 'accordion',
        renderTo : 'im-content',
        width : 400,
        height : 400,
        items : [{
            title : 'GTalk',
            iconCls : 'tabs',
            contentEl : 'im-gtalk'
        }, {
            title : 'Digsby',
            iconCls : 'tabs',
            contentEl : 'im-digsby'
        }, {
            title : 'TokBox',
            iconCls : 'tabs',
            contentEl : 'im-tokbox'
        }],
        defaults : {autoScroll : true}
    });

    tabs.render();

})();

