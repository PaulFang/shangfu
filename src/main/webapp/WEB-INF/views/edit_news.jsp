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

<title>新闻编辑</title>

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
	<a href="<c:url value='/edit/contact'/>">编辑联系我们</a><br><br><br>
</div><br><br>

<div align="center">
		请选择要编辑的产品：	
		<select id="newsSelect">
			<c:forEach items="${newsList}" var="news" >
				<option value ="${news.id}">${news.title}</option>
			</c:forEach>
		</select>
		<input type="button" id="queryNews" value="确认" >
</div><br><br>

<div style="margin:0 auto; height:1000px; width:700px; ">

	<form>
		<table id="newsTable" style="width: 1000px; display:none" border="1">
		  	<tr height=25px>
		    	<td width="80">属性</td>
		    	<td width="250">属性说明</td>
		    	<td width="350">修改后的值</td>
		    	<td>当前值</td>
		  	</tr>
		  	<tr style="display:none">
		    	<td>ID</td>
		    	<td>ID</td>
		    	<td><input name="id" id="id" type="text" style="width:250px;"/>
		    	<td id="curId"/>
		  	</tr>
		  	
		  	<tr height=35px>
		    	<td>资源语言</td>
		    	<td>此项不可修改</td>
		    	<td><input name="langugaeVer" id="languageVer" type="text" style="width:250px;"/>
		    	<td id="curLanguage"/>
		  	</tr>
		  	
		  	<tr>
		    	<td>是否激活发布</td>
		    	<td>是否激活发布</td>
		    	<td><input name="actived" id="actived" type="text" style="width:250px;"></td>
		    	<td id="curActived"/>
		  	</tr>
		  	<tr>
		    	<td>新闻标题</td>
		    	<td>新闻标题</td>
		    	<td><input name="title" id="title" type="text" style="width:250px;"></td>
		    	<td id="curTitle"/>
		  	</tr>
		  	<tr>
		    	<td>预览图片</td>
		    	<td>预览图片</td>
		    	<td><input name="previewPic" id="previewPic" type="text" style="width:250px;"></td>
		    	<td id="curPreviewPic"/>
		  	</tr>
		  	<tr>
		    	<td>新闻发布时间</td>
		    	<td>新闻发布时间</td>
		    	<td><input name="issuedTime" id="issuedTime" type="text" style="width:250px;"></td>
		    	<td id="curIssuedTime"/>
		  	</tr>
		  	<tr>
		    	<td>新闻来源标签</td>
		    	<td>新闻来源标签</td>
		    	<td><input name="from" id="from" type="text" style="width:250px;"></td>
		    	<td id="curFrom"/>
		  	</tr>
		  	<tr>
		    	<td>新闻浏览量</td>
		    	<td>新闻浏览量</td>
		    	<td><input name="pvCnt" id="pvCnt" type="text" style="width:250px;"></td>
		    	<td id="curPvCnt"/>
		  	</tr>
		  	<tr>
		    	<td>新闻内容</td>
		    	<td>新闻内容</td>
		    	<td><textarea name="content" id="content" cols=30 rows=30 style="width:250px;"></textarea></td>
		    	<td id="curContent"/>
		  	</tr>
		  	<tr>
		    	<td>关键字</td>
		    	<td>关键字</td>
		    	<td><input name="keywords" id="keywords" type="text" style="width:250px;"></td>
		    	<td id="curKeywords"/>
		  	</tr>
		  	
		  	<tr>
		    	<td></td>
		    	<td></td>
		    	<td><input type="button" id="button_submit" value="保存修改" >  </td>
		    	<td></td>
		  	</tr>
		  		
		  	
		</table>
	</form>
<div align="center">
	<div id="editResult"></div>
</div>	
	
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
    $("#queryNews").click(function(){  
        var id = $("#newsSelect").children('option:selected').val();  
        var info = {id:id};
        
        var token = $("meta[name='_csrf']").attr("content");
    	var header = $("meta[name='_csrf_header']").attr("content");
    	$(document).ajaxSend(function(e, xhr, options) {
    		xhr.setRequestHeader(header, token);
    	});
        
        $.ajax({  
            type:"POST",  
            url:"${pageContext.request.contextPath}/edit/news/toUpdateNews",  
            data:info,

            success:function(data){
            	$("#editResult").text("");
            	$("#editResult").text("修改成功，你可以刷新页面继续修改内容并保存");
            	$("#editResult").css("background-color","#00FF00");
            	$("input").attr('disabled',"true");
            	
            	enabledDataFileds(data);
            	
            },  
            error:function(e) {  
            	$("#editResult").text("");
            	$("#editResult").text("修改失败： " + e);
            	$("#editResult").css("background-color","#FF0000");
            }  
        });  
    });  
});  

function enabledDataFileds(info){
	
	$("#id").val(info.id);
	$("#curId").val(info.id);
	
	$("#languageVer").val(info.language);
	$('#languageVer').attr("disabled",false);
	$("#curLanguage").text(info.language);
	
	$("#actived").val(info.actived);
	$('#actived').attr("disabled",false);
	$("#curActived").text(info.actived);
	
	$("#title").val(info.title);
	$('#title').attr("disabled",false);
	$("#curTitle").text(info.title);
	
	$("#previewPic").val(info.previewPic);
	$('#previewPic').attr("disabled",false);
	$("#curPreviewPic").text(info.previewPic);
	
	$("#contentAbstract").val(info.contentAbstract);
	$('#contentAbstract').attr("disabled",false);
	$("#curContentAbstract").text(info.contentAbstract);
	
	$("#issuedTime").val(info.issuedTime);
	$('#issuedTime').attr("disabled",false);
	$("#curIssuedTime").text(info.issuedTime);
	
	$("#from").val(info.from);
	$('#from').attr("disabled",false);
	$("#curFrom").text(info.from);
	
	$("#pvCnt").val(info.pvCnt);
	$('#pvCnt').attr("disabled",false);
	$("#curPvCnt").text(info.pvCnt);
	
	$("#content").val(info.content);
	$('#content').attr("disabled",false);
	$("#curContent").text(info.content);

	$("#keywords").val(info.keywords);
	$('#keywords').attr("disabled",false);
	$("#curKeywords").text(info.keywords);
	
	$("#nextNewsId").val(info.nextNewsId);
	$('#nextNewsId').attr("disabled",false);
	$("#curNextNewsId").text(info.nextNewsId);
	
	$("#nextNewsId").val(info.nextNewsId);
	$('#nextNewsId').attr("disabled",false);
	$("#curNextNewsId").text(info.nextNewsId);
	
	$("#nextNewsTitle").val(info.nextNewsTitle);
	$('#nextNewsTitle').attr("disabled",false);
	$("#curNextNewsTitle").text(info.nextNewsTitle);
	
	$("#lastNewsId").val(info.lastNewsId);
	$('#lastNewsId').attr("disabled",false);
	$("#curLastNewsId").text(info.lastNewsId);
	
	$("#lastNewsTitle").val(info.lastNewsTitle);
	$('#lastNewsTitle').attr("disabled",false);
	$("#curLastNewsTitle").text(info.lastNewsTitle);
	
	$("#neckBanner").val(info.neckBanner);
	$('#neckBanner').attr("disabled",false);
	$("#curNeckBanner").text(info.neckBanner);
	
	$("#newsTable").show();
	
}

</script>

</body>
</html>