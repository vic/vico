/* -*- javascript -*- */
(function() {
    var tabs = new Ext.TabPanel({
        renderTo : 'im-content',
        width : 400,
        height : 400,
        activeTab : 0,
        items : [{
            title : 'GTalk',
            autoLoad : '/im/gtalk'
        }, {
            title : 'Digsby',
            autoLoad : '/im/digsby'
        }, {
            title : 'TokBox',
            autoLoad : '/im/tokbox'
        }]
    });

//    tabs.render();

})();

