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
