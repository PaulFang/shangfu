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

<div style="height:50px;"></div>

<div  align="center">
	<a href="<c:url value='/edit/index'/>">编辑本站首页</a>
	<a href="<c:url value='/edit/product'/>">编辑产品展示</a>
	<a href="<c:url value='/edit/honor'/>">编辑荣誉资质</a><br><br>
	<a href="<c:url value='/edit/news'/>">编辑新闻资讯</a>
	<a href="<c:url value='/edit/about'/>">编辑关于尚孚</a>
	<a href="<c:url value='/edit/contact'/>">编辑联系我们</a><br><br>
</div>	
	
<div align="center">
		请选择要编辑的产品：	
		<select id="productSelect">
			<c:forEach items="${products}" var="product" >
				<option value ="${product.id}">${product.name}</option>
			</c:forEach>
		
		</select>
		<input type="button" id="queryProduct" value="确认" >
</div>
	
	
	<div id="resultClue"></div>
	<br><br>
	
	<!-- <div style="margin:0 auto; height:500px; width:1500px; "> -->
	<div align="center">
	<form>
		<table id="productTable" style="width: 1200px; display: none" border="5" bordercolor="#FF9966">
    		  	<tr style="height:35px;">
    		    	<td width="100">属性</td>
    		    	<td width="250">属性说明</td>
    		    	<td width="350">修改为</td>
    		    	<td>当前值</td>
    		  	</tr>
    		  	<tr style="display:none">
    		    	<td>ID</td>
    		    	<td>ID</td>
    		    	<td><input name="id" id="id" type="hidden" style="width:250px;"></td>
    		    	<td id="curId"></td>
    		  	</tr>

    		  	<tr style="height:35px;">
		    		<td>语言版本</td>
		    		<td>语言版本</td>
		    		<td><input name="prodlanguage" id="prodlanguage" type="text" disabled=true style="width:250px;"></td>
		    		<td id="curProdlanguage"></td>
		  		</tr>
    		  	<tr style="height:35px;">
		    		<td>产品名称</td>
		    		<td>产品名称</td>
		    		<td><input name="name" id="name" type="text" style="width:250px;"></td>
		    		<td id="curName"></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>包装方式</td>
		    		<td>包装方式</td>
		    		<td><input name="packaging" id="packaging" type="text" style="width:250px;"></td>
		    		<td id="curPackaging"></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>产品系列</td>
		    		<td>产品系列</td>
		    		<td><input name="seriesName" id="seriesName" type="text" style="width:250px;"></td>
		    		<td id="curSeriesName"></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>产品目录</td>
		    		<td>产品目录</td>
		    		<td><input name="catlogName" id="catlogName" type="text" style="width:250px;"></td>
		    		<td id="curCatlogName"></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>产品描述</td>
		    		<td>产品描述</td>
		    		<td><textarea name="description" id="description" cols=10 rows=5 style="width:250px;"></textarea></td>
		    		<td id="curDescription"></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>产品规格</td>
		    		<td>产品规格</td>
		    		<td><input name="specifications" id="specifications" type="text" style="width:250px;"></td>
		    		<td id="curSpecifications"></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>购买链接</td>
		    		<td>购买链接</td>
		    		<td><input name="purchaseLink" id="purchaseLink" type="text" style="width:250px;"></td>
		    		<td id="curPurchaseLink"></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>产品主图</td>
		    		<td>800 x 720 px</td>
		    		<td><input name="mainPicture" id="mainPicture" type="text" style="width:250px;"/></td>
		    		<td><a id="curMainPicture" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>产品附图1</td>
		    		<td>800 x 720 px</td>
		    		<td><input name="prodPicture1" id="prodPicture1" type="text" style="width:250px;"/></td>
		    		<td><a id="curProdPicture1" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>产品附图2</td>
		    		<td>800 x 720 px</td>
		    		<td><input name="prodPicture2" id="prodPicture2" type="text" style="width:250px;"/></td>
		    		<td><a id="curProdPicture2" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>产品附图3</td>
		    		<td>800 x 720 px</td>
		    		<td><input name="prodPicture3" id="prodPicture3" type="text" style="width:250px;"></td>
		    		<td><a id="curProdPicture3" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>产品附图4</td>
		    		<td>800 x 720 px</td>
		    		<td><input name="prodPicture4" id="prodPicture4" type="text" style="width:250px;"></td>
		    		<td><a id="curProdPicture4" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>产品附图5</td>
		    		<td>800 x 720 px</td>
		    		<td><input name="prodPicture5" id="prodPicture5" type="text" style="width:250px;"></td>
		    		<td><a id="curProdPicture5" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>产品发布时间 </td>
		    		<td>产品发布时间</td>
		    		<td><input name="issuedTime" id="issuedTime" type="text" style="width:250px;"></td>
		    		<td id="curIssuedTime"></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>是否激活发布</td>
		    		<td>true:发布，false:不发布</td>
		    		<td><input name="actived" id="actived" type="text" style="width:250px;"></td>
		    		<td id="curActived"></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>产品页颈部标语图片</td>
		    		<td>产品页颈部标语图片</td>
		    		<td><input name="neckBanner" id="neckBanner" type="text" style="width:250px;"></td>
		    		<td><a id="curNeckBanner" path="" class="preview" href="">光标移过来查看当前使用的图片</a></td>
		  		</tr>
		  		<tr style="height:35px;">
		    		<td>产品在展示列表中次序</td>
		    		<td>产品在展示列表中次序</td>
		    		<td><input name="dispalyOrder" id="dispalyOrder" type="text" style="width:250px;"></td>
		    		<td id="curDispalyOrder"></td>
		  		</tr>
    		  	<tr>
		    	<td></td>
		    	<td></td>
		    	<td><input type="button" id="saveUpdate" value="=========保存修改========" style="width:250px;">  </td>
		    	<td></td>
		  	</tr>
    		  	
    	</table>
    </form>
    <br><br>
    </div>
    
    <div align="center">
    	<div id="saveResult" style="width:500px;height:30px;text-align:center;line-height:30px; "></div>
    </div>

<input type="hidden" id="la" value="$_COOKIE['think_language']"/>
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
	
    $("#queryProduct").click(function(){

    	alert("请确认你已保存修改，未保存的修改信息，在切换产品后将丢失！");
    	
    	$("#saveResult").text("");
    	$("#saveResult").css("background-color","");
    	
    	$("#resultClue").text("");
    	$("#editResult").css("background-color","");
    	
    	$("#saveUpdate").attr("disabled",false);
    	enabledAllInput();
    	
    	var value = $("#productSelect").children('option:selected').val();
    	var info = {id:value};
        var token = $("meta[name='_csrf']").attr("content");
    	var header = $("meta[name='_csrf_header']").attr("content");
    	
    	$(document).ajaxSend(function(e, xhr, options) {
    		xhr.setRequestHeader(header, token);
    	});
        
        $.ajax({  
            type:"POST",  
            url:"${pageContext.request.contextPath}/edit/toUpdateProduct",  
            data:info,
			
            // return Product object
            success:function(data){
            	
            	$("#id").val(data.id);
            	$("#curId").val(data.id);
            	
            	$("#prodlanguage").val(data.language);
            	$("#curProdlanguage").text(data.language);
            	
            	$("#name").val(data.name);
            	$("#curName").text(data.name);
            	
            	$("#packaging").val(data.packaging);
            	$("#curPackaging").text(data.packaging);
            	
            	$("#seriesName").val(data.seriesName);
            	$("#curSeriesName").text(data.seriesName);
            	
            	$("#catlogName").val(data.catlogName);
            	$("#curCatlogName").text(data.catlogName);
            	
            	$("#description").val(data.description);
            	$("#curDescription").text(data.description);
            	
            	$("#specifications").val(data.specifications);
            	$("#curSpecifications").text(data.specifications);
            	
            	$("#purchaseLink").val(data.purchaseLink);
            	$("#curPurchaseLink").text(data.purchaseLink);
            	
            	var location = (window.location+'').split('/'); 
            	var ctx = location[0]+'//'+location[2];
            	
            	$("#mainPicture").val(data.mainPicture);
            	var mainImgPath = ctx + data.mainPicture; 
            	$("#curMainPicture").attr('href', mainImgPath);
            	$("#curMainPicture").attr('path', mainImgPath);
            	
            	
            	$("#prodPicture1").val(data.prodPicture1);
            	var img1Path = ctx + data.prodPicture1; 
            	$("#curProdPicture1").attr('href', img1Path);
            	$("#curProdPicture1").attr('path', img1Path);
            	
            	$("#prodPicture2").val(data.prodPicture2);
            	var img2Path = ctx + data.prodPicture2; 
            	$("#curProdPicture2").attr('href', img2Path);
            	$("#curProdPicture2").attr('path', img2Path);
            	
            	$("#prodPicture3").val(data.prodPicture3);
            	var img3Path = ctx + data.prodPicture3; 
            	$("#curProdPicture3").attr('href', img3Path);
            	$("#curProdPicture3").attr('path', img3Path);
            	
            	$("#prodPicture4").val(data.prodPicture4);
            	var img4Path = ctx + data.prodPicture4; 
            	$("#curProdPicture4").attr('href', img4Path);
            	$("#curProdPicture4").attr('path', img4Path);
            	
            	$("#prodPicture5").val(data.prodPicture5);
            	var img5Path = ctx + data.prodPicture5; 
            	$("#curProdPicture5").attr('href', img5Path);
            	$("#curProdPicture5").attr('path', img5Path);
            	
            	$("#issuedTime").val((new Date(data.issuedTime)).Format("yyyy-MM-dd hh:mm:ss.S"));
            	$("#curIssuedTime").text((new Date(data.issuedTime)).Format("yyyy-MM-dd hh:mm:ss.S"));
            	
            	$("#actived").val(data.actived);
            	$("#curActived").text(data.actived);
            	
            	$("#neckBanner").val(data.neckBanner);
            	var img6Path = ctx + data.neckBanner; 
            	$("#curNeckBanner").attr('href', img6Path);
            	$("#curNeckBanner").attr('path', img6Path);
            	
            	$("#dispalyOrder").val(data.dispalyOrder);            	
            	$("#curDispalyOrder").text(data.dispalyOrder);            	
				
            	$("#productTable").show();
            },  
            error:function(e) {  
            	$("#resultClue").text("");
            	$("#editResult").text("抱歉，未查询到该产品，请联系网站开发人员： " + e);
            	$("#editResult").css("background-color","#FF0000");
            }  
        });  
    });
    
    //
    $("#saveUpdate").click(function(){
    	var id = $("#id").val();
    	var language = $("#prodlanguage").val();
    	var name = $("#name").val();
    	var packaging = $("#packaging").val();
    	var seriesName = $("#seriesName").val();
    	var catlogName = $("#catlogName").val();
    	var description = $("#description").val();
    	var specifications = $("#specifications").val();
    	var purchaseLink = $("#purchaseLink").val();
    	var mainPicture = $("#mainPicture").val();
    	var prodPicture1 = $("#prodPicture1").val();
    	var prodPicture2 = $("#prodPicture2").val();
    	var prodPicture3 = $("#prodPicture3").val();
    	var prodPicture4 = $("#prodPicture4").val();
    	var prodPicture5 = $("#prodPicture5").val();
    	var issuedTime = $("#issuedTime").val();
    	var actived = $("#actived").val();
    	var neckBanner = $("#neckBanner").val();
    	var dispalyOrder = $("#dispalyOrder").val();            	
    	
    	var product = {id:id,
    				language:language,
    				name:name,
    				packaging:packaging,
    				seriesName:seriesName,
    				catlogName:catlogName,
    				description:description, 
    				specifications:specifications,
    				purchaseLink:purchaseLink,
    				mainPicture:mainPicture, 
    				prodPicture1:prodPicture1,
    				prodPicture2:prodPicture2,
    				prodPicture3:prodPicture3,
    				prodPicture4:prodPicture4,
    				prodPicture5:prodPicture5,
    				issuedTime:issuedTime,
    				actived:actived,
    				neckBanner:neckBanner,
    				dispalyOrder:dispalyOrder    	
    	};
        var token = $("meta[name='_csrf']").attr("content");
    	var header = $("meta[name='_csrf_header']").attr("content");
    	
    	$(document).ajaxSend(function(e, xhr, options) {
    		xhr.setRequestHeader(header, token);
    	});
        
        $.ajax({  
            type:"POST",  
            url:"${pageContext.request.contextPath}/edit/saveProduct",  
            data:product,
			
            // return Product object
            success:function(data){
            	
            	disableAllInput();
            	$("#saveUpdate").attr('disabled',true); 
            	$("#saveResult").text("");
            	$("#saveResult").text("恭喜！你的修改已经保存成功，你可选择产品继续更新并保存");
            	$("#saveResult").css("background-color","#00FF00");
            	
            },
            
            error:function(e) {  
            	$("#editResult").text("");
            	$("#editResult").text("修改失败： " + e);
            	$("#editResult").css("background-color","#FF0000");
            }
            
        });
    	
    });
    
    Date.prototype.Format = function (fmt) { //author: meizz  
        var o = {  
            "M+": this.getMonth() + 1, //月份  
            "d+": this.getDate(), //日  
            "h+": this.getHours(), //小时  
            "m+": this.getMinutes(), //分  
            "s+": this.getSeconds(), //秒  
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度  
            "S": this.getMilliseconds() //毫秒  
        };  
        if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));  
        for (var k in o)  
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));  
        return fmt;  
    };  
    
    function disableAllInput(){
    	$("#id").attr("disabled","disabled");
    	$("#prodlanguage").attr("disabled","disabled");
    	$("#name").attr("disabled","disabled");
    	$("#packaging").attr("disabled","disabled");
    	$("#seriesName").attr("disabled","disabled");
    	$("#catlogName").attr("disabled","disabled");
    	$("#description").attr("disabled","disabled");
    	$("#specifications").attr("disabled","disabled");
    	$("#purchaseLink").attr("disabled","disabled");
    	$("#mainPicture").attr("disabled","disabled");
    	$("#prodPicture1").attr("disabled","disabled");
    	$("#prodPicture2").attr("disabled","disabled");
    	$("#prodPicture3").attr("disabled","disabled");
    	$("#prodPicture4").attr("disabled","disabled");
    	$("#prodPicture5").attr("disabled","disabled");
    	$("#issuedTime").attr("disabled","disabled");
    	$("#actived").attr("disabled","disabled");
    	$("#neckBanner").attr("disabled","disabled");
    	$("#dispalyOrder").attr("disabled","disabled");   
    	
    }
    
    function enabledAllInput(){
    	$("#id").removeAttr("disabled");
    	$("#prodlanguage").removeAttr("disabled");
    	$("#name").removeAttr("disabled");
    	$("#packaging").removeAttr("disabled");
    	$("#seriesName").removeAttr("disabled");
    	$("#catlogName").removeAttr("disabled");
    	$("#description").removeAttr("disabled");
    	$("#specifications").removeAttr("disabled");
    	$("#purchaseLink").removeAttr("disabled");
    	$("#mainPicture").removeAttr("disabled");
    	$("#prodPicture1").removeAttr("disabled");
    	$("#prodPicture2").removeAttr("disabled");
    	$("#prodPicture3").removeAttr("disabled");
    	$("#prodPicture4").removeAttr("disabled");
    	$("#prodPicture5").removeAttr("disabled");
    	$("#issuedTime").removeAttr("disabled");
    	$("#actived").removeAttr("disabled");
    	$("#neckBanner").removeAttr("disabled");
    	$("#dispalyOrder").removeAttr("disabled");   
    }
    
    
});  
</script>

</body>
</html>