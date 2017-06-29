<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/base.css" rel="stylesheet" type="text/css">

<link href="css/other.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<title>关于尚孚-尚孚茶油</title>
</head>
<body>
<!--<div class="load" id="ioad">
<span class="l1"></span>
<span class="l2"></span>
<span class="l3"></span></div> -->
<script type="text/javascript">
    var loads=document.getElementById("ioad").getElementsByTagName("span");
    var loadIndex=0;
    var loadLen=loads.length;
    setInterval(function(){
        loadIndex++;
        loadIndex=loadIndex>9?0:loadIndex;
        for(var i=0;i<loadLen;i++){
            var dom=loads[i];
            if(dom){
                dom.style.backgroundPosition="center -"+(40*loadIndex)+"px";
            }
        }
    },40);
</script>
<div class="header">
    <div class="main">
        <div class="logo"><a href="<c:url value="index" />"></a></div>
		<div style="width:650px;float:left;">
			<ul class="nav" style="margin-top: 14px;">
				<li><a href="about" class="current">${info.menuItem1}</a></li>
				<li><a href="product" >${info.menuItem2}</a></li>
				<li><a href="honor" >${info.menuItem3}</a></li>
				<li><a href="news" >${info.menuItem4}</a></li>
				<li><a href="contact" >${info.menuItem5}</a></li>
				<li>
					<c:choose>
   						<c:when test="${\"zh-CN\".equals(info.language)}"> 
         					<a id="language" href="">English</a>     
   						</c:when>
   						<c:otherwise>
     						<a id="language" href="">中文</a>
   						</c:otherwise>
					</c:choose>
				</li>
			</ul>
		</div>
        
        <div class="slogan" > <a href="index"><img src="images/slogan.png" style="width:280px;height:59px;"></a> </div>
    </div>
</div>
<div class="wrapper">
    <div class="banner" style="background-image: url(images/neck_banner/about_banner.jpg)"></div>
    <br/><br/>
    <div class="main">
        <div class="location">
            <a href="index">首页</a>
            <em>&gt;</em>
            <span>${info.menuItem1}</span>
        </div>
        <br/><br/>
        <div class="con">
        	${profile.profileTxt}
			</div>
		
    </div>
</div>
<div class="footer">
    <div class="main">
        <div class="tel">${info.footerTelNum}</div>
        <div class="right">
            <ul class="menu-foot">
                <li><a href="about" class="current">${info.menuItem1}</a></li>
                <li><a href="product" >${info.menuItem2}</a></li>
                <li><a href="honor" >${info.menuItem3}</a></li>
                <li><a href="news" >${info.menuItem4}</a></li>
                <li><a href="contact" >${info.menuItem5}</a></li>
            </ul>
            <div class="copyright">
                <strong>${info.footerCopyright}</strong>
            </div>
        </div>
    </div>
</div>
<input type="hidden" id="la" value="$_COOKIE['think_language']"/>
<script type="text/javascript" src="js/function.js"></script>
<script type="text/javascript" src="js/public.js"></script>

<script>
   $(function(){
			$('.main').each(function(){
				var $this=$(this);
				$('.location ul li a',$this).each(function(i){$(this).data('tagindex',i);})
				$('.location ul li a',$this).click(function(){var j=$(this).data('tagindex');
				$('.location ul li a',$this).removeClass('on');$(this).addClass('on');
				$('.con',$this).hide();$('.con:eq('+j+')',$this).fadeIn(300);
				return false;
				});
			})
			$('.conH').click(function(){
				$('.conV').not($(this).next('.conV')).hide();
				$('.conJob').not($(this).parent('.conJob')).removeClass('conCur');
				$(this).next('.conV').slideToggle(200);
				$(this).parent('.conJob').toggleClass('conCur');
			});
   });

</script>
<script>
$(function(){
			var _urlid=getUrlParam('location');
			$('.newTab li').eq(_urlid).click();
			 var url = window.location.toString();
			 var id = url.split("#")[1];
			 if(id){
				var t = $("#"+id).offset().top;
				$('html,body').animate({scrollTop:t},300);
		 } 
		});
</script>
</body>
</html>