/* -*- javascript -*- */
(function() {
    var VicoUtil = {
        createMsgBox : function(t, s){
            return ['<div class="msg">',
                    '<div class="x-box-tl"><div class="x-box-tr"><div class="x-box-tc"></div></div></div>',
                    '<div class="x-box-ml"><div class="x-box-mr"><div class="x-box-mc"><h3>', t, '</h3>', s, '</div></div></div>',
                    '<div class="x-box-bl"><div class="x-box-br"><div class="x-box-bc"></div></div></div>',
                    '</div>'].join('');
        },

        msg : function(title, format){
            if(!this.msgCt){
                this.msgCt = Ext.DomHelper.insertFirst(document.body, {id:'msg-div'}, true);
            }
            this.msgCt.alignTo(document, 't-t');
            var s = String.format.apply(String, Array.prototype.slice.call(arguments, 1));
            var m = Ext.DomHelper.append(this.msgCt, {html:this.createMsgBox(title, s)}, true);
            m.slideIn('t').pause(1).ghost("t", {remove:true});
        },

        scratche : function(opts) {
            var obj = {
                eval : function(options, success, response) {
                    this.options = options;
                    this.success = success;
                    this.response = response;
                    if (success) {
                        this.result = eval(response.responseText);
                    }
                    return this;
                }
            };
            opts.callback = function(options, success, response) {
                return obj.eval.createDelegate(obj, [options, success, response])();
            };
            opts.async = false;
            Ext.Ajax.request(opts);
            return obj;
        },

        scratch : function(opts){
            var scratch = Ext.get('ux-scratch');
            return scratch.load(Ext.apply(opts, { scripts : true }));
        }
    };

    var VicoDesktop = new Ext.app.App({
        user : function() {
        },

	init : function(){
	    Ext.QuickTips.init();
	},

	getModules : function(){
	    return [  ];
        },
        
        // config for the start menu
        getStartConfig : function(){
            return {
                title: 'vic',
                iconCls: 'user',
                toolItems: [{
                    text: 'Settings',
                    iconCls:'settings',
                    scope: this,
                    handler : function() {
                        MyDesktop.scratch({ url : '/settings/panel' });
                    }
                }, '-',{
                    text:'Refresh',
                    iconCls:'logout',
                    scope:this,
                    handler: function() {
                        window.location = "/";
                    }
                }
             ]
            };
        }
        
    });
                                      
})();