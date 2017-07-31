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
欢迎登录尚孚网站管理后台
</div>

<div style="height:100px;"></div>

<div  align="center">
	<a href="<c:url value='/edit/index'/>">编辑本站首页</a>
	<a href="<c:url value='/edit/product'/>">编辑产品展示</a>
	<a href="<c:url value='/edit/honor'/>">编辑荣誉资质</a><br><br>
	<a href="<c:url value='/edit/news'/>">编辑新闻资讯</a>
	<a href="<c:url value='/edit/about'/>">编辑关于尚孚</a>
	<a href="<c:url value='/edit/contact'/>">编辑联系我们</a><br><br>
</div>

<div style="margin:0 auto; height:500px; width:1000px; ">

	<form>
		<table style="width: 1000px; " border="5">
		  	<tr height=35px>
		    	<td width="80">属性</td>
		    	<td width="300">属性说明</td>
		    	<td width="350">修改为</td>
		    	<td>当前值</td>
		  	</tr>
		  	<tr style="display:none">
		    	<td>ID</td>
		    	<td>ID</td>
		    	<td><input name="id" id="id" type="hidden" value=${info.id}  style="width:250px;"></td>
		    	<td>${info.id}</td>
		  	</tr>
		  	<tr height=35px>
		    	<td>资源语言</td>
		    	<td>此项不可修改</td>
		    	<td><input name="langugae" id="langugae" type="text" disabled=true value=${info.language} style="width:250px;"></td>
		    	<td>${info.language}</td>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>公司名称</td>
		    	<td>index/contact中的公司名称</td>
		    	<td><input name="companyName" id="companyName" type="text" value=${info.companyName} style="width:250px;"></td>
		    	<td>${info.companyName}</td>
		  	</tr>
		  	<tr height=35px>
		    	<td>公司电话</td>
		    	<td>index/contact中的联系电话</td>
		    	<td width="300"><input name="telNum" id="telNum" type="text" value="${info.telNum}" style="width:250px;"></td>
		    	<td>${info.telNum}</td>
		  	</tr>
		  	<tr height=35px>
		    	<td>公司主页</td>
		    	<td>index/contact中的公司网站</td>
		    	<td><input name="homePage" id="homePage" type="text" value=${info.homePage} style="width:250px;"></td>
		    	<td>${info.homePage}</td>
		  	</tr>
		  	<tr height=35px>
		    	<td>公司QQ</td>
		    	<td>index/contact中的公司QQ</td>
		    	<td><input name="qq" id="qq" type="text" value=${info.qq} style="width:250px;"></td>
		    	<td>${info.qq}</td>
		  	</tr>
		  	<tr height=35px>
		    	<td>公司邮箱</td>
		    	<td>index/contact中的公司Email</td>
		    	<td><input name="eMail" id="eMail" type="text" value=${info.eMail} style="width:250px;"></td>
		    	<td>${info.eMail}</td>
		  	</tr>
		  	<tr height=35px>
		    	<td>公司地址</td>
		    	<td>index/contact中的公司地址</td>
		    	<td><input name="addr" id="addr" type="text" value=${info.addr} style="width:250px;"></td>
		    	<td>${info.addr}</td>
		  	</tr>
		  	<tr height=35px>
		    	<td>公司微信</td>
		    	<td>index/contact中的微信图片(大小 302x171 px)</td>
		    	<td><input name="wechat" id="wechat" type="text" value=${info.wechat} style="width:250px;"></td>
		    	<td>${info.wechat}</td>
		  	</tr>
		  	<tr height=35px>
		    	<td>购买标签</td>
		    	<td>产品页中的点击购买标签</td>
		    	<td><input name="orderLabel" id="orderLabel" type="text" value=${info.orderLabel} style="width:250px;"></td>
		    	<td>${info.orderLabel}</td>
		  	</tr>
		  	<tr height=35px>
		    	<td>页脚电话</td>
		    	<td>页脚部分共用的联系电话</td>
		    	<td><input name="footerTelNum" id="footerTelNum" type="text" value=${info.footerTelNum} style="width:250px;"></td>
		    	<td>${info.footerTelNum}</td>
		  	</tr>
		  	<tr height=35px>
		    	<td>页脚版权</td>
		    	<td>页脚部分共用的版权信息</td>
		    	<td><input name="footerCopyright" id="footerCopyright" type="text" value=${info.footerCopyright} style="width:250px;"></td>
		    	<td>${info.footerCopyright}</td>
		  	</tr>
		  	<tr>
		    	<td></td>
		    	<td></td>
		    	<td><input type="button" id="button_submit" value="=========保存修改========" style="width:250px;">  </td>
		    	<td></td>
		  	</tr>
		  		
		  	
		</table>
	</form>
	
</div>

<div align="center">
	<div id="editResult" style="width:500px;height:30px;text-align:center;line-height:30px; "></div>
</div>

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