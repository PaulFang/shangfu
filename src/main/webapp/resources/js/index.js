/**
 * @author lb
 */
$(function(){
    $(".indexWheel").indexWheel();
    $(".page-wrapper").pageLoad({speed:1000});
    $(".product").hover(
        function(){
            $(this).find(".shade,.texts").fadeToggle(300);
        },
        function(){
            $(this).find(".shade,.texts").fadeToggle(300);
        }
    );
    $(".certificate a").hover(
        function(){
            $(this).find("span,em").fadeToggle(300);
        },
        function(){
            $(this).find("span,em").fadeToggle(300);
        }
    );
    $(document).on("click",".toTop",function(){
       $("html,body").animate({scrollTop:0},600);
    });
    $("a[rel='certificate']").colorbox({opacity:0.9,rel:"certificate",photo:true,maxWidth:"95%",maxHeight:"90%"});
    $(document).on("click",".honor .tab li",function(){
        var _this=$(this);
        var _index=_this.index();
        _this.addClass("on").siblings("li").removeClass("on");
        var certificate=$(".honor .contents .certificate");
        certificate.removeClass("certOn").eq(_index).addClass("certOn");
        certificate.eq(_index).css({"top":-416}).animate({"top":0},{
            duration: 600,
            easing: "easeOutCirc"
        })
    });
});
$.fn.pageLoad = function(options,fn){
    var defaults = {
        speed:1000
    }
    var options = $.extend(defaults, options);
    this.each(function(){
        var _this=$(this);
        var _window=$(window);
        var list=_this.children(".page");
        var len=list.size();
        var pageSum=$(".pageSum");
        var index=0;
        var ems=pageSum.find("em");
        _window.scroll(function(){
            var winTop=_window.scrollTop();
            list.each(function(i){
                if($(this).offset().top-200<=winTop){
                    index=i;
                }
            });
            anim();
        });
        ems.bind("click",function(){
           index=ems.index($(this));
            $("html,body").animate({scrollTop:list.eq(index).offset().top-51},{
                duration: options.speed,
                easing: "easeOutCirc"
            });
        });
        function  anim(){
            ems.removeClass("on").eq(index).addClass("on");
            list.eq(index).find(".pageTitle").addClass("pageTitleStart");
        }
    });

}


