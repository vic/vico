/* *-javascript-*- */
(function() {
    var im = Ext.extend(Ext.app.Module, {
        init : function() {
            this.launcher = {
                text : 'IM',
                iconCls: 'bogus',
                handler : this.createWindow,
                scope : this,
                windowId : 1
            };
        },

        createWindow : function(src) {
            var desktop = this.app.getDesktop();
            var win = desktop.getWindow('im-'+src.windowId);
            if (!win) {
                win = desktop.createWindow({
                    id : 'im-'+src.windowId,
                    title : 'Instant Messaging',
                    width : 640,
                    height : 480,
                    html : 'Loading',
                    iconCls : 'bogus'
                });
                win.body.load({ url : '/im', scripts : true });
            }
            win.show();
        }
    });
    
    vico.im = new im();
    vico.modules[0] = vico.im;
})();

