<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" type="text/css" href="<c:url value="/css/base.css" />"  />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/other.css" />"  >

<script type="text/javascript" src="<c:url value="/js/jquery-1.9.1.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/preview.js" />"></script>

<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>

<title>管理员登录</title>

<!-- 鼠标跟踪图片放大 -->
<style type="text/css">
*{margin:0;padding:0;}
a,img{border:0;}
ul,li{list-style-type:none;}
/* demo */
.demo{width:600px;margin:40px auto;}
.demo h2{font-size:14px;height:62px;color:#3366cc;}
.demo a{font-size:14px;color:#333;text-decoration:none;}
.demo a img{border:solid 1px #ddd;margin:0 5px;}
/* previewShowWindow */
.previewShowWindow{position:absolute;border:1px solid #dadade;background:#95959d;padding:5px;display:none;color:#fff;text-align:center;z-index:999;}
</style>
<!-- 鼠标跟踪图片放大 -->

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

<div align="center">
		编辑联系我们，请选择要编辑的语言版本：	
		<select id="contactSelect">
			<option value ="zh-CN">中文-中国区</option>
			<option value ="en-US">英文-美国区</option>
		</select>
		<input type="button" id="queryContact" value="确认" >
</div>
<br><br><br>


<div style="margin:0 auto; height:500px; width:1000px; ">

	<form>
		<table id="contactTable" style="width: 1000px; display: none" border="5">
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
		    	<td id="curId"></td>
		  	</tr>
		  	<tr height=35px>
		    	<td>资源语言</td>
		    	<td>此项不可修改</td>
		    	<td><input name="langugae" id="languageVer" type="text" style="width:250px;"/>
		    	<td id="curLanguage">${info.language}</td>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>产品预览</td>
		    	<td>产品预览标签</td>
		    	<td><input name="menuItem0" id="menuItem0" type="text" style="width:250px;"/>
		    	<td id="curMenuItem0"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>关于尚孚</td>
		    	<td>关于尚孚标签</td>
		    	<td><input name="menuItem1" id="menuItem1" type="text" style="width:250px;"/>
		    	<td id="curMenuItem1"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>产品展示</td>
		    	<td>产品展示标签</td>
		    	<td><input name="menuItem2" id="menuItem2" type="text" style="width:250px;"/>
		    	<td id="curMenuItem2"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>荣誉资质</td>
		    	<td>荣誉资质标签</td>
		    	<td><input name="menuItem3" id="menuItem3" type="text" style="width:250px;"/>
		    	<td id="curMenuItem3"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>新闻资讯</td>
		    	<td>新闻资讯标签</td>
		    	<td><input name="menuItem4" id="menuItem4" type="text" style="width:250px;"/>
		    	<td id="curMenuItem4"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>联系我们</td>
		    	<td>联系我们标签</td>
		    	<td><input name="menuItem5" id="menuItem5" type="text" style="width:250px;"/>
		    	<td id="curMenuItem5"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>资源语言</td>
		    	<td>此项不可修改</td>
		    	<td><input name="aboutBanner" id="aboutBanner" type="text" style="width:250px;"/>
		    	<td><a id="curAboutBanner" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>资源语言</td>
		    	<td>此项不可修改</td>
		    	<td><input name="productBanner" id="productBanner" type="text" style="width:250px;"/>
		    	<td><a id="curProductBanner" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  	</tr>
		  	
		  	
		  	<tr height=35px>
		    	<td>资源语言</td>
		    	<td>此项不可修改</td>
		    	<td><input name="honorBanner" id="honorBanner" type="text" style="width:250px;"/>
		    	<td><a id="curHonorBanner" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  	</tr>

			<tr height=35px>
		    	<td>资源语言</td>
		    	<td>此项不可修改</td>
		    	<td><input name="newsBanner" id="newsBanner" type="text" style="width:250px;"/>
		    	<td><a id="curNewsBanner" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>资源语言</td>
		    	<td>此项不可修改</td>
		    	<td><input name="contactBanner" id="contactBanner" type="text" style="width:250px;"/>
		    	<td><a id="curContactBanner" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>资源语言</td>
		    	<td>此项不可修改</td>
		    	<td><input name="menuSlogan" id="menuSlogan" type="text" style="width:250px;"/>
		    	<td><a id="curMenuSlogan" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  	</tr>

		  	<tr height=35px>
		    	<td>公司名称</td>
		    	<td>index/contact中的公司名称</td>
		    	<td><input name="companyName" id="companyName" type="text" style="width:250px;"/>
		    	<td id="curCompanyName"/>
		  	</tr>
		  	<tr height=35px>
		    	<td>公司电话</td>
		    	<td>index/contact中的联系电话</td>
		    	<td width="300"><input name="telNum" id="telNum" type="text" style="width:250px;"/>
		    	<td id="curTelNum"/>
		  	</tr>
		  	<tr height=35px>
		    	<td>公司主页</td>
		    	<td>index/contact中的公司网站</td>
		    	<td><input name="homePage" id="homePage" type="text" style="width:250px;"/>
		    	<td id="curHomePage"/>
		  	</tr>
		  	<tr height=35px>
		    	<td>公司QQ</td>
		    	<td>index/contact中的公司QQ</td>
		    	<td><input name="qq" id="qq" type="text" style="width:250px;"/>
		    	<td id="curQq"/>
		  	</tr>
		  	<tr height=35px>
		    	<td>公司邮箱</td>
		    	<td>index/contact中的公司Email</td>
		    	<td><input name="eMail" id="eMail" type="text" style="width:250px;"/>
		    	<td id="curEMail"/>
		  	</tr>
		  	<tr height=35px>
		    	<td>公司地址</td>
		    	<td>index/contact中的公司地址</td>
		    	<td><input name="addr" id="addr" type="text" style="width:250px;"/>
		    	<td id="curAddr"/>
		  	</tr>
		  	<tr height=35px>
		    	<td>公司微信</td>
		    	<td>index/contact中的微信图片(大小 302x171 px)</td>
		    	<td><input name="wechat" id="wechat" type="text" style="width:250px;"/>
		    	<td id="curWechat"/>
		  	</tr>
		  	<tr height=35px>
		    	<td>购买标签</td>
		    	<td>产品页中的点击购买标签</td>
		    	<td><input name="orderLabel" id="orderLabel" type="text" style="width:250px;"/>
		    	<td id="curOrderLabel"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>购买标签</td>
		    	<td>产品页中的点击购买标签</td>
		    	<td><input name="homeLabel" id="homeLabel" type="text" style="width:250px;"/>
		    	<td id="curHomeLabel"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>购买标签</td>
		    	<td>产品页中的点击购买标签</td>
		    	<td><input name="timeLabel" id="timeLabel" type="text" style="width:250px;"/>
		    	<td id="curTimeLabel"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>购买标签</td>
		    	<td>产品页中的点击购买标签</td>
		    	<td><input name="fromLabel" id="fromLabel" type="text" style="width:250px;"/>
		    	<td id="curFromLabel"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>购买标签</td>
		    	<td>产品页中的点击购买标签</td>
		    	<td><input name="companyLabel" id="companyLabel" type="text" style="width:250px;"/>
		    	<td id="curCompanyLabel"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>购买标签</td>
		    	<td>产品页中的点击购买标签</td>
		    	<td><input name="seriesLabel" id="seriesLabel" type="text" style="width:250px;"/>
		    	<td id="curSeriesLabel"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>购买标签</td>
		    	<td>产品页中的点击购买标签</td>
		    	<td><input name="packagingLabel" id="packagingLabel" type="text" style="width:250px;"/>
		    	<td id="curPackagingLabel"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>购买标签</td>
		    	<td>产品页中的点击购买标签</td>
		    	<td><input name="specificationsLabel" id="specificationsLabel" type="text" style="width:250px;"/>
		    	<td id="curSpecificationsLabel"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>页脚电话</td>
		    	<td>页脚部分共用的联系电话</td>
		    	<td><input name="footerTelNum" id="footerTelNum" type="text" style="width:250px;"/>
		    	<td id="curFooterTelNum"/>
		  	</tr>
		  	<tr height=35px>
		    	<td>页脚版权</td>
		    	<td>页脚部分共用的版权信息</td>
		    	<td><input name="footerCopyright" id="footerCopyright" type="text" style="width:250px;"/>
		    	<td id="curFooterCopyright"/>
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
	<div id="saveResult" style="width:500px;height:30px;text-align:center;line-height:30px; "></div>
</div>

<script type="text/javascript" src="<c:url value="/js/function.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/public.js" />"></script>

<script type="text/javascript">  
$(document).ready(function(){
	
	$(function(){
		if($('a.preview').length){
			var img = preloadIm();
			imagePreview(img);
		}
	})
	
	$("#queryContact").click(function(){
		
		if($("#saveUpdate").prop("disabled") == false){	
			var con = confirm("请确认你已保存修改，未保存的修改信息，在切换后将丢失！放弃编辑请选择 确定， 否则请选择 取消"); //在页面上弹出对话框
			if(con==false){
				return;
			}
		}
		
		$("#saveResult").text("");
    	$("#saveResult").css("background-color","");
    	
    	$("#resultClue").text("");
    	$("#editResult").css("background-color","");
		
		var value = $("#contactSelect").children('option:selected').val();
		var data = {language:value};
		
		var token = $("meta[name='_csrf']").attr("content");
    	var header = $("meta[name='_csrf_header']").attr("content");
    	$(document).ajaxSend(function(e, xhr, options) {
    		xhr.setRequestHeader(header, token);
    	});
    	
    	$.ajax({  
            type:"POST",  
            url:"${pageContext.request.contextPath}/edit/toUpdateContact",  
            data:data,

            success:function(info){
            	
            	enabledDataFileds(info);
            	
            	$("#saveResult").text("");
            	$("#saveResult").css("background-color","");
            	
            	$("#profileTable").show();
            },  
            error:function(e) {  
            	$("#editResult").text("");
            	$("#editResult").text("修改失败： " + e);
            	$("#editResult").css("background-color","#FF0000");
            }  
        });  
		
	});
	
	
	
    $("#saveUpdate").click(function(){  
        var id = $("#id").val();  
        var language = $("#languageVer").val();
        var neckBanner = $("#neckBanner").val();
        var profileTxt =    $("#profileTxt").val();
        
        var profile = {id:id, 
        			language : language, 
        			neckBanner : neckBanner,
        			profileTxt : profileTxt};
        
        var token = $("meta[name='_csrf']").attr("content");
    	var header = $("meta[name='_csrf_header']").attr("content");
    	$(document).ajaxSend(function(e, xhr, options) {
    		xhr.setRequestHeader(header, token);
    	});
        
        $.ajax({  
            type:"POST",  
            url:"${pageContext.request.contextPath}/edit/about/save",  
            data:profile,

            success:function(data){

            	$("#id").attr('disabled',true);
            	$("#languageVer").attr('disabled',true);
            	$("#neckBanner").attr('disabled',true);
            	$('#profileTxt').attr("disabled",true);
            	$("#saveUpdate").attr('disabled',true);
            	
            	$("#saveResult").text("");
            	$("#saveResult").text("恭喜，你的修改保存成功，你可以内容继续更新");
            	$("#saveResult").css("background-color","#00FF00");
            	
            	//$("body").css("background-color","#00FF00"); 
            	
            },  
            error:function(e) {  
            	$("#editResult").text("");
            	$("#editResult").text("非常抱歉，你的修改保存失败,但修改前的原数据仍然有效，请联系管理员处理 ");
            	$("#editResult").css("background-color","#FF0000");
            }  
        });  
    });  
});

function enabledDataFileds(info){
	
	$("#id").val(info.id);
	$("#curId").val(info.id);
	
	$("#languageVer").val(info.language);
	$('#languageVer').attr("disabled",true);
	$("#curLanguage").text(info.language);

	
	$("#menuItem0").val(info.menuItem0);
	$("#curMenuItem0").text(info.menuItem0);

	$("#menuItem1").val(info.menuItem1);
	$("#curMenuItem1").text(info.menuItem1);

	$("#menuItem2").val(info.menuItem2);
	$("#curMenuItem2").text(info.menuItem2);

	$("#menuItem3").val(info.menuItem3);
	$("#curMenuItem3").text(info.menuItem3);

	$("#menuItem4").val(info.menuItem4);
	$("#curMenuItem4").text(info.menuItem4);

	$("#menuItem5").val(info.menuItem5);
	$("#curMenuItem5").text(info.menuItem5);

	var location = (window.location+'').split('/'); 
	var ctx = location[0]+'//'+location[2] + "/";

	$("#aboutBanner").val(info.aboutBanner);
	var aboutBannerImgPath = ctx + info.aboutBanner; 
	$("#curAboutBanner").attr('href', aboutBannerImgPath);
	$("#curAboutBanner").attr('path', aboutBannerImgPath);


	$("#productBanner").val(info.productBanner);
	var productBannerImgPath = ctx + info.productBanner; 
	$("#curProductBanner").attr('href', productBannerImgPath);
	$("#curProductBanner").attr('path', productBannerImgPath);

	$("#honorBanner").val(info.honorBanner);
	var honorBannerImgPath = ctx + info.honorBanner; 
	$("#curHonorBanner").attr('href', honorBannerImgPath);
	$("#curHonorBanner").attr('path', honorBannerImgPath);

	$("#newsBanner").val(info.newsBanner);
	var newsBannerImgPath = ctx + info.newsBanner; 
	$("#curNewsBanner").attr('href', newsBannerImgPath);
	$("#curNewsBanner").attr('path', newsBannerImgPath);

	$("#contactBanner").val(info.contactBanner);
	var contactBannerImgPath = ctx + info.contactBanner; 
	$("#curContactBanner").attr('href', contactBannerImgPath);
	$("#curContactBanner").attr('path', contactBannerImgPath);

	$("#menuSlogan").val(info.menuSlogan);
	var menuBannerImgPath = ctx + info.menuSlogan; 
	$("#curMenuSlogan").attr('href', menuBannerImgPath);
	$("#curMenuSlogan").attr('path', menuBannerImgPath);

	$("#companyName").val(info.companyName);
	$("#curCompanyName").text(info.companyName);

	$("#telNum").val(info.telNum);
	$("#curTelNum").text(info.telNum);
	
	$("#telNum").val(info.telNum);
	$("#curTelNum").text(info.telNum);
	
	$("#homePage").val(info.homePage);
	$("#curHomePage").text(info.homePage);
	
	$("#qq").val(info.qq);
	$("#curQq").text(info.qq);
	
	$("#eMail").val(info.eMail);
	$("#curEMail").text(info.eMail);
	
	$("#addr").val(info.addr);
	$("#curAddr").text(info.addr);
	
	$("#orderLabel").val(info.orderLabel);
	$("#curOrderLabel").text(info.orderLabel);
	
	$("#wechat").val(info.wechat);
	$("#curWechat").text(info.wechat);
	
	$("#homeLabel").val(info.homeLabel);
	$("#curHomeLabel").text(info.homeLabel);
	
	$("#timeLabel").val(info.timeLabel);
	$("#curTimeLabel").text(info.timeLabel);
	
	$("#fromLabel").val(info.fromLabel);
	$("#curFromLabel").text(info.fromLabel);
	
	$("#companyLabel").val(info.companyLabel);
	$("#curCompanyLabel").text(info.companyLabel);
	
	$("#seriesLabel").val(info.seriesLabel);
	$("#curSeriesLabel").text(info.seriesLabel);
	
	$("#packagingLabel").val(info.packagingLabel);
	$("#curPackagingLabel").text(info.packagingLabel);
	
	$("#specificationsLabel").val(info.specificationsLabel);
	$("#curSpecificationsLabel").text(info.specificationsLabel);
	
	$("#footerTelNum").val(info.footerTelNum);
	$("#curFooterTelNum").text(info.footerTelNum);
	
	$("#footerCopyright").val(info.footerCopyright);
	$("#curFooterCopyright").text(info.footerCopyright);	

	$("#contactTable").show();
	
	/* var imgPath = $("#curNeckBanner").attr('href');
	
	$("#profileTxt").val(profile.profileTxt);
	$('#profileTxt').attr("disabled",false);
	$("#curProfileTxt").text(profile.profileTxt); */
	
	$("#saveUpdate").attr('disabled',false);
}

</script>

</body>
</html>