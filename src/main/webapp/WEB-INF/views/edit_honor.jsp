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
	请选择要编辑的荣誉资质：	
		<select id="qualificationSelect">
			<c:forEach items="${qualificationNames}" var="name" >
				<option value ="${name}">${name}</option>
			</c:forEach>
		
		</select>
		<input type="button" id="queryQualification" value="确认" >
</div>
<br><br><br>

<div align="center">
	<form>
		<table id="qualificationTable" style="width: 1315px; display: none" border="5">
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
		    	<td>是否激活启用</td>
		    	<td>是否激活启用</td>
		    	<td><input name="actived" id="actived" type="text" style="width:250px;"></td>
		    	<td id="curActived"/>
		  	</tr>
			<tr height=35px>
		    	<td>Rel</td>
		    	<td>Rel</td>
		    	<td><input name="rel" id="rel" type="text" style="width:250px;"></td>
		    	<td id="curRel"/>
		  	</tr>
		  	<tr height=35px>
		    	<td>名称</td>
		    	<td>名称</td>
		    	<td><input name="title" id="title" type="text" style="width:250px;"></td>
		    	<td id="curTitle"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>图片源</td>
		    	<td>图片源</td>
		    	<td><input name="src" id="src" type="text" style="width:250px;"></td>
		    	<td><a id="curSrc" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>备注</td>
		    	<td>备注</td>
		    	<td><input name="remark" id="remark" type="text" style="width:250px;"></td>
		    	<td id="curRemark"/>
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

<br><br>
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
	});
	
    $("#queryQualification").click(function(){  
    	
    	
    	
    	$("#actived").attr('disabled',false); 
    	$("#rel").attr('disabled',false); 
    	$("#title").attr('disabled',false); 
    	$("#src").attr('disabled',false); 
    	$("#remark").attr('disabled',false);
    	
    	var value = $("#qualificationSelect").children('option:selected').val();
        var info = {qualificationName:value};
        
        $("#saveResult").text("");
    	$("#saveResult").css("background-color","");
    	
    	$("#resultClue").text("");
    	$("#editResult").css("background-color","");
    	
    	$("#saveUpdate").attr("disabled",false);
        
        var token = $("meta[name='_csrf']").attr("content");
    	var header = $("meta[name='_csrf_header']").attr("content");
    	$(document).ajaxSend(function(e, xhr, options) {
    		xhr.setRequestHeader(header, token);
    	});
        
        $.ajax({  
            type:"POST",  
            url:"${pageContext.request.contextPath}/edit/qualification/query",  
            data:info,

            success:function(data){
            	
            	$("#id").val(data.id);
            	$("#curId").val(data.id);
            	
            	$("#languageVer").val(data.language);
            	$("#curLanguage").text(data.language);
            	
            	$("#actived").val(data.actived);
            	$("#curActived").text(data.actived);
            	
            	$("#rel").val(data.rel);
            	$("#curRel").text(data.rel);
            	
            	$("#title").val(data.title);
            	$("#curTitle").text(data.title);
            	
            	
            	$("#src").val(data.src);
            	
            	var location = (window.location+'').split('/'); 
            	var ctx = location[0]+'//'+location[2];
            	var imgPath = ctx + data.src; 
            	$("#curSrc").attr('href', imgPath);
            	$("#curSrc").attr('path', imgPath);
            	
            	$("#remark").val(data.remark);
            	$("#curRemark").text(data.remark);
            	
            	$("#editResult").text("");
            	$("#editResult").text("修改成功，你可以刷新页面继续修改内容并保存");
            	$("#editResult").css("background-color","#00FF00");
            	
            	$("#qualificationTable").show();
            },  
            error:function(e) {  
            	$("#editResult").text("");
            	$("#editResult").text("修改失败： " + e);
            	$("#editResult").css("background-color","#FF0000");
            }  
        });
        
        // 保存更新
        $("#saveUpdate").click(function(){
        	var honor = { id: $("#id").val(),
        				  language : $("#languageVer").val(),
        				  actived : $("#actived").val(),
        				  rel : $("#rel").val(),
        				  title : $("#title").val(),
        				  src : $("#src").val(),
        				  remark : $("#remark").val()
        	}
        	
        	var token = $("meta[name='_csrf']").attr("content");
        	var header = $("meta[name='_csrf_header']").attr("content");
        	
        	$(document).ajaxSend(function(e, xhr, options) {
        		xhr.setRequestHeader(header, token);
        	});
        	
        	$.ajax({  
                type:"POST",  
                url:"${pageContext.request.contextPath}/edit/saveQualification",  
                data:honor,
    			
                // return Product object
                success:function(data){
                	
                	//disableAllInput();
                	$("#saveUpdate").attr('disabled',true); 
                	$("#saveResult").text("");
                	$("#saveResult").text("恭喜！你的修改已经保存成功，你可选择产品继续更新并保存");
                	$("#saveResult").css("background-color","#00FF00");
                	
                	$("#actived").attr('disabled',true); 
                	$("#rel").attr('disabled',true); 
                	$("#title").attr('disabled',true); 
                	$("#src").attr('disabled',true); 
                	$("#remark").attr('disabled',true); 
                	
                },
                
                error:function(e) {  
                	$("#editResult").text("");
                	$("#editResult").text("修改失败： " + e);
                	$("#editResult").css("background-color","#FF0000");
                }
                
            });
        	
        });
        
    });  
});  
</script>

</body>
</html>