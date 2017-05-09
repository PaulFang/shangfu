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

	<form>
		<table style="width: 1000px; " border="1">
		  	<tr height=25px>
		    	<td width="80">属性</td>
		    	<td width="250">属性说明</td>
		    	<td width="350">修改后的值</td>
		    	<td>当前值</td>
		  	</tr>
		  	<tr style="display:none">
		    	<td>ID</td>
		    	<td>ID</td>
		    	<td><input name="id" id="id" type="hidden" value=${info.id}></td>
		    	<td>${info.id}</td>
		  	</tr>
		  	<tr>
		    	<td>资源语言</td>
		    	<td>语言版本(不可修改)</td>
		    	<td><input name="langugae" id="langugae" type="text" disabled=true value=${info.language}></td>
		    	<td>${info.language}</td>
		  	</tr>
		  	
		  	<tr>
		    	<td>公司名称</td>
		    	<td>公司名称（index/cotact中的公司名称）</td>
		    	<td><input name="companyName" id="companyName" type="text" value=${info.companyName}></td>
		    	<td>${info.companyName}</td>
		  	</tr>
		  	<tr>
		    	<td>公司电话</td>
		    	<td>公司电话（index/cotact中的联系电话）</td>
		    	<td width="300"><input name="telNum" id="telNum" type="text" value="${info.telNum}"></td>
		    	<td>${info.telNum}</td>
		  	</tr>
		  	<tr>
		    	<td>公司主页</td>
		    	<td>公司主页（index/cotact中的公司网站）</td>
		    	<td><input name="homePage" id="homePage" type="text" value=${info.homePage}></td>
		    	<td>${info.homePage}</td>
		  	</tr>
		  	<tr>
		    	<td>公司QQ</td>
		    	<td>公司QQ（index/cotact中的公司QQ）</td>
		    	<td><input name="qq" id="qq" type="text" value=${info.qq}></td>
		    	<td>${info.qq}</td>
		  	</tr>
		  	<tr>
		    	<td>公司邮箱</td>
		    	<td>公司邮箱（index/cotact中的公司Email）</td>
		    	<td><input name="eMail" id="eMail" type="text" value=${info.eMail}></td>
		    	<td>${info.eMail}</td>
		  	</tr>
		  	<tr>
		    	<td>公司地址</td>
		    	<td>公司地址（index/cotact中的公司地址）</td>
		    	<td><input name="addr" id="addr" type="text" value=${info.addr}></td>
		    	<td>${info.addr}</td>
		  	</tr>
		  	<tr>
		    	<td>公司微信</td>
		    	<td>公司微信（index/cotact中的微信图片）</td>
		    	<td><input name="wechat" id="wechat" type="text" value=${info.wechat}></td>
		    	<td>${info.wechat}</td>
		  	</tr>
		  	<tr>
		    	<td>购买标签</td>
		    	<td>购买标签（产品页中的点击购买标签）</td>
		    	<td><input name="orderLabel" id="orderLabel" type="text" value=${info.orderLabel}></td>
		    	<td>${info.orderLabel}</td>
		  	</tr>
		  	<tr>
		    	<td>页脚电话</td>
		    	<td>页脚电话（页脚部分共用的联系电话）</td>
		    	<td><input name="footerTelNum" id="footerTelNum" type="text" value=${info.footerTelNum}></td>
		    	<td>${info.footerTelNum}</td>
		  	</tr>
		  	<tr>
		    	<td>页脚版权</td>
		    	<td>页脚版权（页脚部分共用的版权信息）</td>
		    	<td><input name="footerCopyright" id="footerCopyright" type="text" value=${info.footerCopyright}></td>
		    	<td>${info.footerCopyright}</td>
		  	</tr>
		  	<tr>
		    	<td></td>
		    	<td></td>
		    	<td></td>
		    	<td><input type="button" id="button_submit" value="保存修改" >  </td>
		  	</tr>
		  		
		  	
		</table>
	</form>
	<div id="editResult"></div>
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

<script type="text/javascript">  
$(document).ready(function(){  
    $("#button_submit").click(function(){  
        var id = 		  $("#id").val();  
        var companyName = $("#companyName").val();
        var telNum = 	  $("#telNum").val();
        var homePage =    $("#homePage").val();
        var qq = 		  $("#qq").val();
        var eMail = 	  $("#eMail").val();
        var addr = 		  $("#addr").val();
        var wechat = 	  $("#wechat").val();
        var orderLabel =  $("#orderLabel").val();
        var footerTelNum = $("#footerTelNum").val();
        var footerCopyright = $("#footerCopyright").val();
        
        var info = {id:id,companyName:companyName,homePage:homePage,
        		qq:qq, eMail:eMail, addr:addr, wechat:wechat, orderLabel:orderLabel,
        		footerTelNum:footerTelNum, footerCopyright:footerCopyright};
        
        var token = $("meta[name='_csrf']").attr("content");
    	var header = $("meta[name='_csrf_header']").attr("content");
    	$(document).ajaxSend(function(e, xhr, options) {
    		xhr.setRequestHeader(header, token);
    	});
        
        /* alert(info);   */
        $.ajax({  
            type:"POST",  
            url:"${pageContext.request.contextPath}/edit/contact/save",  
            data:info,

            success:function(data){
            	$("#editResult").text("");
            	$("#editResult").text("修改成功，你可以刷新页面继续修改内容并保存");
            	$("#editResult").css("background-color","#00FF00");
            	$("input").attr('disabled',"true");
            },  
            error:function(e) {  
            	$("#editResult").text("");
            	$("#editResult").text("修改失败： " + e);
            	$("#editResult").css("background-color","#FF0000");
            }  
        });  
    });  
});  
</script>

</body>
</html>