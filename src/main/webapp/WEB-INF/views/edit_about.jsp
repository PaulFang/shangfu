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
		编辑关于尚孚，请选择要编辑的语言版本：	
		<select id="aboutSelect">
			<option value ="zh-CN">中文-中国区</option>
			<option value ="en-US">英文-美国区</option>
		</select>
		<input type="button" id="queryAbout" value="确认" >
</div>
<br><br><br>

<div style="margin:0 auto; height:500px; width:1315px; ">

	<form>
		<table id="profileTable" style="width: 1315px; display: none" border="5">
		  	<tr height=35px>
		    	<td width="80">属性</td>
		    	<td width="200">属性说明</td>
		    	<td width="500">修改为</td>
		    	<td width="500">当前值</td>
		  	</tr>
		  	<tr style="display:none">
		    	<td>ID</td>
		    	<td>ID</td>
		    	<td><input name="id" id="id" type="hidden" style="width:250px;"></td>
		    	<td id="curId"></td>
		  	</tr>
		  	<tr height=35px>
		    	<td>资源语言</td>
		    	<td>此项不可修改</td>
		    	<td><input name="languageVer" id="languageVer" type="text" disabled=true style="width:250px;"></td>
		    	<td id="curLanguage"></td>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>颈部标语图片</td>
		    	<td>about页面中的颈部标语图片</td>
		    	<td><input name="neckBanner" id="neckBanner" type="text" style="width:250px;"></td>
		    	<td><a id="curNeckBanner" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  	</tr>
		
			<tr height=35px>
		    	<td>公司介绍</td>
		    	<td>about页面公司介绍(如需要段落效果，请将文字放在&lt;p&gt; &lt;/p&gt;中间，需要换行处请加&lt;br&gt;</td>
		    	<td><textarea name="profileTxt" id="profileTxt" cols=30 rows=15 style="width:500px;"></textarea></td>
		    	<td><textarea name="profileTxt" id="curProfileTxt" cols=30 rows=15 style="width:500px;" disabled ="true"></textarea></td>
		  	</tr>
		  	<tr>
		    	<td></td>
		    	<td></td>
		    	<td><input type="button" id="saveUpdate" value="=========保存修改========" style="width:250px;">  </td>
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
	
	$("#queryAbout").click(function(){
		
		if($("#saveUpdate").prop("disabled") == false){	
			var con = confirm("请确认你已保存修改，未保存的修改信息，在切换产品后将丢失！放弃编辑请选择 确定， 否则请选择 取消"); //在页面上弹出对话框
			if(con==false){
				return;
			}
		}
		
		$("#saveResult").text("");
    	$("#saveResult").css("background-color","");
    	
    	$("#resultClue").text("");
    	$("#editResult").css("background-color","");
		
		var value = $("#aboutSelect").children('option:selected').val();
		var data = {language:value};
		
		var token = $("meta[name='_csrf']").attr("content");
    	var header = $("meta[name='_csrf_header']").attr("content");
    	$(document).ajaxSend(function(e, xhr, options) {
    		xhr.setRequestHeader(header, token);
    	});
    	
    	$.ajax({  
            type:"POST",  
            url:"${pageContext.request.contextPath}/edit/toUpdateAbout",  
            data:data,

            success:function(profile){
            	
            	enabledDataFileds(profile);
            	
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

function enabledDataFileds(profile){
	$("#id").val(profile.id);
	$("#curId").val(profile.id);
	
	$("#languageVer").val(profile.language);
	$('#languageVer').attr("disabled",true);
	$("#curLanguage").text(profile.language);
	
	$("#neckBanner").val(profile.neckBanner);
	$('#neckBanner').attr("disabled",false);

	var location = (window.location+'').split('/'); 
	var imgPath = location[0]+'//'+location[2]+'/' + profile.neckBanner; 	
	$("#curNeckBanner").attr('href', imgPath);
	$("#curNeckBanner").attr('path', imgPath);
	
	var imgPath = $("#curNeckBanner").attr('href');
	
	$("#profileTxt").val(profile.profileTxt);
	$('#profileTxt').attr("disabled",false);
	$("#curProfileTxt").text(profile.profileTxt);
	
	$("#saveUpdate").attr('disabled',false);
}

</script>

</body>
</html>