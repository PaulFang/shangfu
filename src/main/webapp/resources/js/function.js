/**
 * @author lb
 */
$.extend({
    /*
     * 判断字符串是否为空
     */
    isEmpty:function(str){
        if(str===undefined || str==null){
            return true;
        }
        str=$.trim(str);
        if(str==""){
            return true;
        }
        return false;
    },
    /*
     * 验证邮箱
     */
    isEmail:function(email){
        if (email.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)){
            return true;
        }else{
            return false;
        }
    },
    //获取ie版本
    getIE:function(){
        if ( /msie/.test(window.navigator.userAgent.toLowerCase()) ){
            if($.support.leadingWhitespace){
                return 9;
            }else{
                return 8;
            }
        }else{
            return false;
        }
    },
    //获得url参数
    GET:function(param){
        var url=document.URL;
        var paramList=url.split("?")[1];
        if(paramList){
            var arr=paramList.split("&");
            for(var i=0;i<arr.length;i++){
                var arr2=arr[i].split("=");
                if(arr2[0]==param){
                    return arr2[1];
                }
            }
        }
        return false;
    },
    /*
     * 生成范围随机数
     * min：最小范围
     * max：最大范围，如省略为生成0～min之间随机数
     */
    getRandom:function(min,max){
        var _max=max || min;
        var _min=max?min:0;
        return parseInt(Math.random()*(_max-_min+1)+_min);
    }

});


/**
 * 提示信息
 * @param options
 *      msg:信息内容
 *      closeTime:显示时间 默认2000,-1为不消失
 *      speed:淡入淡出速度，默认400
 *      p: position对象相对位置(有dom时起作用),T:顶部，D：底部，L：左，R：右 默认T
 * fn：显示信息后执行函数
 */
$.fn.msg = function(options,fn,fntime){
    var defaults = {
        msg:'',
        closeTime:2000,
        speed:400,
        p:'T'
    }
    var options = $.extend(defaults, options);
    this.each(function(){
        $("#tempMsg").remove();
        var _this=$(this);
        if($.tempMsgSetTimeout){
            clearTimeout($.tempMsgSetTimeout);
        };
        var _left=0;
        var _top=0;
        var _msg=$('<div id="tempMsg">'+options.msg+'</div>').appendTo("body");
        var _width = $("#tempMsg").outerWidth();
        var _height = $("#tempMsg").outerHeight();
        var _window=$(window);
        if(_this.is('body')){
            _left = (_window.width()-_width)/2+_window.scrollLeft();;
            _top = (_window.height()-_height)/2+_window.scrollTop();
        }else{
            switch (options.p){
                case "R":
                    _top = _this.offset().top;
                    _left = _this.offset().left + _this.outerWidth(true)+10;
                    break;
                case "L":
                    _top = _this.offset().top;
                    _left = _this.offset().left - _width - 10;
                    break;
                case "D":
                    _left = _this.offset().left + (_this.outerWidth(true)-_width)/2;
                    _top = _this.offset().top+_this.outerHeight(true)+10;
                    break;
                default :
                    _left = _this.offset().left + (_this.outerWidth(true)-_width)/2;
                    _top = _this.offset().top-_height-10;
            }
        }

        _msg.css({"left":_left,"top":_top});
        _msg.fadeIn(options.speed,function(){
            if(options.closeTime>-1){
                $.tempMsgSetTimeout=setTimeout(function(){
                    $("#tempMsg").fadeOut(options.speed,function(){
                        _msg.remove();
                    });
                },options.closeTime);
            }
            if(fn){
                var _fntime=fntime?fntime:10;
                setTimeout(fn,_fntime)
            }
        })
    });
};


/**
 * @param options 确认框
 * title:标题
 * content：内容(可html标签)
 * speed:速度
 * className:弹出额外className
 * bj:显示背景
 * bjClassName:背景额外className
 * opacity:背景透明度
 * bjClick：点击背景事件(默认关闭),true/false/function()
 * ok:点击成功按钮事件(默认关闭)
 * closed:点击关闭按钮事件（默认关闭）
 * cance:点击取消按钮事件（默认关闭）
 * okName:确认按钮名称
 * cancelName:取消按钮名称
 * closeShow: 右上关闭按钮显示
 * closeName:关闭按钮名称
 * uniqueness：是否唯一，true（默认），false
 * call:显示后回调函数
 */
(function(){
    $.fn.confirm = function(options,fun){
        var defaults = {
            title:"确认",
            content:"",
            speed:200,
            className:false,
            bj:true,
            bjClassName:false,
            opacity:0.6,
            bjClick:true,
            ok:function(){$.confirm.close();},
            closed:function(){$.confirm.close();},
            cance:function(){$.confirm.close();},
            okName:"确定",
            cancelName:"取消",
            closeShow:true,
            closeName:"×",
            uniqueness:true,
            call:false
        }
        var options = $.extend(defaults, options);
        this.each(function(){
            if(options.uniqueness){
                $(".tempConfirmShade").remove();
                $(".tempConfirm").remove();
            }
            var _this=$(this);
            var bj,dlg,buttonBox;
            var title=false;
            var closeButton=false;
            var cancelButton=false;
            var okButton=false;
            if(options.bj){
                bj =$('<div class="tempConfirmShade"></div>').appendTo("body");
                if(options.bjClassName){
                    bj.addClass(options.bjClassName);
                }

            }
            dlg=$('<div class="tempConfirm"></div>').appendTo("body");
            if(options.title!==false){
                title=$('<div class="title"><strong class="titleCount">'+options.title+'</strong></div>').appendTo(dlg);
                if(options.closeShow){
                    closeButton=$('<a class="tempConfirmCloes">'+options.closeName+'</a>').appendTo(title);
                }
            }
            dlg.append('<div class="tempConfirmContents">'+options.content+'</div>');
            buttonBox=$('<div class="tempConfirmButtonBox"></div>').appendTo(dlg);
            if(options.buttonClass){
                buttonBox.addClass(options.buttonClass);
            }
            if(options.cancelName){
                cancelButton=$('<a href="javascript:void(0)">'+options.cancelName+'</a>').appendTo(buttonBox);
            }
            okButton=$('<a href="javascript:void(0)">'+options.okName+'</a>').appendTo(buttonBox);
            if(options.bj){
                bj.fadeTo(options.speed,options.opacity,function(){
                    dlg.css({"top":($(window).height()-dlg.outerHeight(true))/2+$(window).scrollTop(),"left":($(window).width()-dlg.outerWidth(true))/2+$(window).scrollLeft()}).fadeIn(options.speed,function(){
                        if($.isFunction(options.bjClick)){
                            bj.click(function(){
                                options.bjClick();
                            });
                        }else if(options.bjClick){
                            bj.click(function(){
                                $(document).confirm.close();
                            });
                        }
                        if($.isFunction(options.call)){
                            options.call();
                        }
                    });

                });
            }else{
                dlg.css({"top":($(window).height()-dlg.outerHeight(true))/2+$(window).scrollTop(),"left":($(window).width()-dlg.outerWidth(true))/2+$(window).scrollLeft()}).fadeIn(options.speed,function(){
                    if($.isFunction(options.call)){
                        options.call();
                    }
                });
            }
            if(closeButton){
                closeButton.bind("click",function(){
                    options.closed();
                });
            }
            if(okButton){
                okButton.bind("click",function(){
                    options.ok();
                });
            }
            if(cancelButton){
                cancelButton.bind("click",function(){
                    options.cance();
                });
            }
            $.fn.confirm.close=function(fn){
                bj.fadeOut(options.speed);
                dlg.fadeOut(options.speed,function(){
                    if($.isFunction(fn)){
                        fn();
                    }
                    bj.remove();
                    dlg.remove();
                });
            }
        });
    }
    $.extend({
        confirm:function(options){
            $(window).confirm(options);
        }
    })
    $.confirm.close=function(fn){
        $.fn.confirm.close(fn);
    }
})(jQuery)

/*
 *   首页轮播
 *  speed:速度，默认1000ms
 *  time:间隔时间 默认5000
 *  isSum:是否显示数字，默认true
 */
$.fn.indexWheel = function(options){
    var defaults = {
        speed:1000,
        time:5000,
        isSum:true
    }
    var options = $.extend(defaults, options);
    this.each(function(){
        var _this=$(this);
        var _ul=_this.find(".contents");
        var _butLeft=_this.find(".butLeft");
        var _butRight=_this.find(".butRight");
        var sums=_this.find(".sums");
        var index = 0;
        var oIndex=0;
        var _list=_ul.children("li");
        var _len=_list.size();
        var _thisWidth=0;
        var _width=0;
        setWidth();
        $(window).resize(function(){
            setWidth();
            wheelGo();
        });
        function setWidth(){
            var height=$(window).height()-50;
            _thisWidth=$(window).width();
            _width=_thisWidth;
            _ul.height(height);
            _ul.find("li").height(height);
            _this.parents(".page").height(height);
        }
        for(var i=0;i<_len;i++){
            var emStr='';
            if(i==0){
                emStr+='<em class="current">';
            }else{
                emStr+='<em>';
            }
            emStr+="</em>";
            sums.append(emStr);
        }
        sums.find("em").on("click",function(){
            oIndex=index;
            index=$(this).index();
            wheelGo();
        });
        var trundle=setTimeout(function(){
            toNext()
        },options.time);

        _butLeft.click(function(){
            toPrev();
        });
        _butRight.click(function(){
            toNext();
        });
        function toNext(){
            oIndex=index;
            index++;
            index=index>=_len?0:index;
            wheelGo();
        }
        function toPrev(){
            oIndex=index;
            index--;
            index=index<0?_len-1:index;
            wheelGo();
        }
        function wheelGo(){
            clearTimeout(trundle);
            sums.find("em").removeClass("current").eq(index).addClass("current");
            _list.css({"z-index":0});
            _list.eq(oIndex).css({"z-index":1});
            _list.eq(index).fadeTo(0,0).css({"z-index":2}).fadeTo(options.speed,1,function(){
                trundle=setTimeout(function(){
                    toNext()
                },options.time);
            });
        }
    });
};
/*
 *   左右轮播
 *  speed:速度，默认1000ms
 *  time:间隔时间 默认5000, 不自动移动为0
 *  moveNumber:每次移动个数
 *  butFade:按钮是否淡入效果
 */
$.fn.custoersWheel = function(options) {
    var defaults = {
        speed: 300,
        time: 2000,
        moveNumber: 1,
        butFade:true
    }
    var options = $.extend(defaults, options);
    this.each(function() {
        var _this = $(this);
        var _butLeft = _this.find(".butLeft");
        var _butRight = _this.find(".butRight");
        var _div = _this.find(".contents");
        var _windowWidth=_div.width();
        var _ul = _div.find("ul");
        var _list = _ul.children("li");
        var _len = _list.size();
        var _liWidth = _list.eq(0).outerWidth(true);
        var _ulWidth = _liWidth * _len;
        var isClick=true;
        var isMove =_ulWidth<(_windowWidth+_liWidth/4)?false:true;
        var pageSum = Math.ceil(_len / 2);
        _ul.width(_ulWidth);
        var trundle;
        if(options.time>0){
            trundle = setInterval(function() {
                wheelGo(1)
            }, options.time);
        }
        _this.hover(
            function() {
                clearInterval(trundle);
            },
            function() {
                if(options.time>0){
                    trundle = setInterval(function() {
                        wheelGo(1)
                    }, options.time);
                }
            }
        );
        if(isMove){
            if(options.butFade){
                _butLeft.fadeTo(300, 0);
                _butRight.fadeTo(300, 0);
                _this.hover(
                    function() {
                        _butLeft.stop().fadeTo(300, 0.8);
                        _butRight.stop().fadeTo(300, 0.8);
                    },
                    function() {
                        _butLeft.stop().fadeTo(300, 0);
                        _butRight.stop().fadeTo(300, 0);
                    }
                );
            }else{
                _butLeft.show();
                _butRight.show();
            }
            _butLeft.click(function() {
                wheelGo(-1)
            });
            _butRight.click(function() {
                wheelGo(1)
            });
        }
        function wheelGo(d) {
            if(isMove && isClick){
                isClick=false;
                if(d==1){
                    _ul.stop().animate({"left": -_liWidth * options.moveNumber}, options.speed,function(){
                        var dom=_ul.find("li").slice(0,options.moveNumber);
                        _ul.append(dom);
                        _ul.css({"left":0});
                        isClick=true;
                    });
                }else{
                    var dom=_ul.find("li").slice(-options.moveNumber);
                    _ul.prepend(dom);
                    _ul.css({"left":-_liWidth * options.moveNumber});
                    _ul.stop().animate({"left": 0}, options.speed,function(){
                        isClick=true;
                    });
                }
            }
        }
    });
};
