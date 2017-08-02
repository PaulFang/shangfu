<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" type="text/css" href="<c:url value="/css/base.css" />"  />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/other.css" />"  >

<script type="text/javascript" src="<c:url value="/js/jquery-1.9.1.min.js" />"></script>

<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>

<title>Page Not Found : 404</title>

</head>
<body>

<div class="header">
    <div class="main">
        <div class="logo"><a href="<c:url value="index" />"></a></div>
		<div style="width:650px;float:left;">
			<ul class="nav" style="margin-top: 14px;">
				<li><a href="<c:url value='/about' />" >关于尚孚</a></li>
				<li><a href="<c:url value='/product' />" >产品展示</a></li>
				<li><a href="<c:url value='/honor' />" >荣誉资质</a></li>
				<li><a href="<c:url value='/news' />"  >新闻资讯</a></li>
				<li><a href="<c:url value='/contact' />" >联系我们</a></li>
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
        
        <div class="slogan" > <img src="<c:url value="/images/slogan.png" />" style="width:280px;height:59px;"> </div>
        
    </div>
</div>

<br>
<div>
页面丢失
</div>

<div style="height:250px;"></div>

<div style="margin:0 auto; height:400px; width:700px; font-size: 30px" align="center">
		<h3><a href="/index">抱歉，未找到您要访问的页面<br><br>欢迎点击本页面logo 或菜单继续浏览！</a></h3><br>
		<h3><span id="show"></h3>
</div>


<div class="footer">
    <div class="main">
        <div class="tel">0713-8533399 17771339998</div>
        <div class="right">
            <ul class="menu-foot">
                <li><a href="about"   >关于尚孚</a></li>
                <li><a href="product" >产品展示</a></li>
                <li><a href="honor"   >荣誉资质</a></li>
                <li><a href="news"    >新闻资讯</a></li>
                <li><a href="contact" >联系我们</a></li>
            </ul>
            <div class="copyright">
                <strong>Copyright © 2017 www.xianpin365.com 粤ICP备15001240号 All Rights Reserved</strong>
            </div>
        </div>
    </div>
</div>
<input type="hidden" id="la" value="$_COOKIE['think_language']"/>
<script type="text/javascript" src="<c:url value="/js/function.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/public.js" />"></script>

<script>
$(document).ready(function(){
	var t = 4;
	setInterval(function(){
		if(t==0){
			location="http://xianpin365.com";
		}
		$("#show").html("" + t + " 秒后将自动跳转到首页"); // 显示倒计时 
		t--; // 计数器递减 
	}, 1000);
});



</script>

</body>
</html>