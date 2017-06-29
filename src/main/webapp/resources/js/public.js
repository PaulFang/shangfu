/**
 * @author lb
 */
$(window).load(function(){
    setTimeout(function(){
        var ioad=$("#ioad");
        ioad.find("span").hide();
        ioad.animate({"top":$(window).height()},600,function(){
            ioad.remove();
        });
    },100);
    setTimeout(function(){
        $(".logo a").addClass("on");
    },500);
});

$(function(){
    $('#language').click(function(){
    	switchToLang = "";
    	lang = $('#language').text();
    	if("English"==lang){
    		switchToLang = "en-US";
    	}else{
    		switchToLang = "zh-CN";
    	}
         $.ajax({
             type: "GET",
             url: "switchLanguage",
             data: {language:switchToLang},
             dataType: "json",
             success: function(data){
                        // 刷新整个页面
                        window.location.reload();
                      }
         });
    });
});
