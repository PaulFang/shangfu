<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/base.css" rel="stylesheet" type="text/css">

<link href="css/other.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<link href="css/colorbox.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.colorbox.js"></script>
<title>${info.menuItem3}-${info.companyLabel}</title>
</head>
<body>
<!-- <div class="load" id="ioad"><span class="l1"></span><span class="l2"></span><span class="l3"></span></div> -->
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
				<li><a href="about" >${info.menuItem1}</a></li>
				<li><a href="product" >${info.menuItem2}</a></li>
				<li><a href="honor" class="current">${info.menuItem3}</a></li>
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
    <div class="banner" style="background-image: url(images/neck_banner/honor_banner.jpg)"></div>
    <br/><br/>
    <div class="main">
        <div class="location">
            <a href="index">${info.homeLabel}</a>
            <em>&gt;</em>
            <span>${info.menuItem3}</span>
        </div>
        
        
        <ul class="honorList">
            
            
            
            <c:forEach items="${qualifications}" var="qualification" varStatus="status">  
        		<li <c:if test="${status.index==0 || status.index%3==0}">class="first"</c:if>  >
        			<a href="${qualification.src}" rel="${qualification.rel}" title="${qualification.title}" >
        				<img src="${qualification.src}"><span></span><em></em>
        			</a>
        		</li>
        	</c:forEach>
          
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
                <!--
                <div class="share">
                    <div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a></div>
                </div>
                -->
            </div>
        </div>
    </div>
</div>
<input type="hidden" id="la" value="$_COOKIE['think_language']"/>
<script type="text/javascript" src="js/function.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript">
    $(function(){
        $(".honorList a").hover(
                function(){
                    $(this).find("span,em").fadeToggle(300);
                },
                function(){
                    $(this).find("span,em").fadeToggle(300);
                }
        );
        $("a[rel='honor']").colorbox({opacity:0.9,rel:"honor",photo:true,maxWidth:"95%",maxHeight:"90%"});
    });
</script>
</body>
</html>