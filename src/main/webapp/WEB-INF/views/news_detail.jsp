<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" type="text/css" href="<c:url value="/css/base.css" />"  />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/other.css" />"  >

<script type="text/javascript" src="<c:url value="/js/jquery-1.9.1.min.js" />"></script>

<title>${news.title}-${info.menuItem4}-尚孚茶油</title>

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
        <div class="logo"><a href="<c:url value="index" />"></a></div>
		<div style="width:650px;float:left;">
			<ul class="nav" style="margin-top: 14px;">
				<li><a href="<c:url value='/about' />" >${info.menuItem1}</a></li>
				<li><a href="<c:url value='/product' />" >${info.menuItem2}</a></li>
				<li><a href="<c:url value='/honor' />" >${info.menuItem3}</a></li>
				<li><a href="<c:url value='/news' />"  class="current">${info.menuItem4}</a></li>
				<li><a href="<c:url value='/contact' />" >${info.menuItem5}</a></li>
				<li><a href="">English</a></li>
			</ul>
		</div>
        
        <div class="slogan" > <img src="<c:url value="/images/slogan.png" />" style="width:280px;height:59px;"> </div>
        
    </div>
</div>
<div class="wrapper">
    <div class="banner" style="background-image: url(<c:url value='${news.neckBanner}' />)"></div>
    <br/><br/>
    <div class="main">
        <div class="location">
            <a href="<c:url value="/index" />">首页</a>
			<em>&gt;</em>
			<span><a href="<c:url value="/news" />">${info.menuItem4}</a></span>
			<em>&gt;</em>
			<span>${news.title}</span>
            
        </div>
        <div class="newsDetail">
            <h1>${news.title}</h1>
            <h3><span>时间：<fmt:formatDate value="${news.issuedTime}"  pattern="yyyy-MM-dd" type="date" dateStyle="long" /></span><span>来源：${news.from}</span><span>阅读：${news.pvCount}人</span></h3>
            <div class="newsContent">
				<p>${news.content}</p>
            <div class="crux">
                <span>本文关键字：</span>
				<a href="#" target="_blank">世家之交</a>
				<a href="#" target="_blank">一品生活</a>
				<a href="#" target="_blank">尚孚茶油</a>
			</div>
			
            <div class="attention">本文源于<a href="#" target="_blank">${news.from}</a>,转载请注明出处。</div>
            <div class="near">
			    <p><strong>上一篇：</strong><a href="#">${news.lastNewsTitle}</a></p>				            
			</div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="main">
        <div class="tel">${info.footerTelNum}</div>
        <div class="right">
            <ul class="menu-foot">
                <li><a href="about"   >${info.menuItem1}</a></li>
                <li><a href="product" >${info.menuItem2}</a></li>
                <li><a href="honor"   >${info.menuItem3}</a></li>
                <li><a href="news"    >${info.menuItem4}</a></li>
                <li><a href="contact" >${info.menuItem5}</a></li>
            </ul>
            <div class="copyright">
                <strong>${info.footerCopyright}</strong>
            </div>
        </div>
    </div>
</div>
<input type="hidden" id="la" value="$_COOKIE['think_language']"/>
<script type="text/javascript" src="<c:url value="/js/function.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/public.js" />"></script>
</body>
</html>