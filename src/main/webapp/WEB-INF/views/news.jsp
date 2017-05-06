<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/base.css" rel="stylesheet" type="text/css">

<link href="css/other.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<title>${info.menuItem4}-尚孚茶油</title>
</head>
<body>
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
        <div class="logo"><a href="index"></a></div>
		<div style="width:650px;float:left;">
			<ul class="nav" style="margin-top: 14px;">
				<li><a href="about" >${info.menuItem1}</a></li>
				<li><a href="product" >${info.menuItem2}</a></li>
				<li><a href="honor" >${info.menuItem3}</a></li>
				<li><a href="news" class="current">${info.menuItem4}</a></li>
				<li><a href="contact" >${info.menuItem4}</a></li>
			</ul>
		</div>
        
        <div class="slogan" > <a href="index"><img src="images/slogan.png" style="width:280px;height:59px;"></a> </div>
    </div>
</div>
<div class="wrapper">
    <div class="banner" style="background-image: url(images/neck_banner/news_banner.jpg)">
        <!--<div class="title-bj">
            <div class="main">
                <div class="title"><strong>新闻资讯</strong></div>
            </div>
        </div> -->
    </div>
    <div class="main">
        <div class="location">
		    <a href="index">首页</a>
			<em>&gt;</em>
		    <span><a href="news">${info.menuItem4}</a></span>
        </div>
        
        <ul class="newsList">
            <c:forEach items="${newsList}" var="news" >  
        		<li>
        			<div class="imgs"><a href="news/${news.id}"><img src="${news.previewPic}"></a></div>
        			<div class="texts">
        				<h3><a href="news/${news.id}">${news.title}</a></h3>
        				<h4><fmt:formatDate value="${news.issuedTime}"  pattern="yyyy-MM-dd" type="date" dateStyle="long" /> </h4>
        				<p>${news.contentAbstract}</p>
        				<h6><a href="news/${news.id}" target="_blank">MORE</a></h6>
        			</div>
        		</li>
        	</c:forEach>
          </ul>
          
        <!-- <div class="pages"></div> -->
    </div>
</div>
<div class="footer">
    <div class="main">
        <div class="tel">${info.footerTelNum}</div>
        <div class="right">
            <ul class="menu-foot">
                <li><a href="about" >${info.menuItem1}</a></li>
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
</body>
</html>