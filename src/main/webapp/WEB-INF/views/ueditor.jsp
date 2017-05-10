<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" type="text/css" href="<c:url value="/css/base.css" />"  />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/other.css" />"  >

<!-- 配置文件 -->  
<script type="text/javascript" src="<c:url value="js/ueditor/ueditor.config.js" />" ></script>  
<!-- 编辑器源码文件 -->  
<script type="text/javascript" src="<c:url value="js/ueditor/ueditor.all.min.js"/>" ></script>  
<script type="text/javascript">window.UEDITOR_HOME_URL="/resources/js/ueditor/"; </script>
<%-- 
<script type="text/javascript" src="<c:url value="/js/jquery-1.9.1.min.js" />"></script> --%>

<title>管理员登录</title>

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
			</ul>
		</div>
        
        <div class="slogan" > <img src="<c:url value="/images/slogan.png" />" style="width:280px;height:59px;"> </div>
        
    </div>
</div>

<br>
<div>
欢迎登录尚孚网站管理后台
</div>



<div style="height:100px;"></div>

<div style="margin:0 auto; height:500px; width:700px; ">

<script id="container" name="content" type="text/plain"></script>
<!-- 实例化编辑器 -->  
    <!-- 实例化编辑器 -->
	<script type="text/javascript">
	    var ue = UE.getEditor('container');
	    
	    UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;  
	    UE.Editor.prototype.getActionUrl = function(action) {  
	        if (action == 'uploadimage' || action == 'uploadscrawl' || action == 'uploadvideo') {  
	            return '${ctx}/fileupload';  
	        } else {  
	            return this._bkGetActionUrl.call(this, action);  
	        }  
	    } 
	    
	</script>
</div>


<div style="height:100px;"></div>


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
<!-- <script type="text/javascript" src="js/function.js"></script>
<script type="text/javascript" src="js/public.js"></script> -->

</body>
</html>