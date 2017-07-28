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

<div style="height:50px;"></div>

<div style="margin:0 auto; height:500px; width:1000px;" align="center">
	
	<a href="<c:url value='/edit/index'/>">编辑本站首页</a>
	<a href="<c:url value='/edit/product'/>">编辑产品展示</a>
	<a href="<c:url value='/edit/honor'/>">编辑荣誉资质</a><br><br>
	<a href="<c:url value='/edit/news'/>">编辑新闻资讯</a>
	<a href="<c:url value='/edit/about'/>">编辑关于尚孚</a>
	<a href="<c:url value='/edit/contact'/>">编辑联系我们</a><br><br>
	
	
	<div align="center">
		请选择要编辑的产品：	
		<select id="productSelect">
			<c:forEach items="${productNames}" var="name" >
				<option value ="${name}">${name}</option>
			</c:forEach>
		
		</select>
		<input type="button" id="queryProduct" value="确认" >
	</div>
	
	
	<div id="resultClue"></div>
	<br><br>
	
	<div style="margin:0 auto; height:500px; width:1500px; ">
	<form>
		<table id="productTable" style="width: 1200px; display: none" border="5">
    		  	<tr height=35px>
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

    		  	<tr>
		    		<td>语言版本</td>
		    		<td>语言版本</td>
		    		<td><input name="prodlanguage" id="prodlanguage" type="text" disabled=true style="width:250px;"></td>
		    		<td id="curProdlanguage"></td>
		  		</tr>
    		  	<tr>
		    		<td>产品名称</td>
		    		<td>产品名称</td>
		    		<td><input name="name" id="name" type="text" style="width:250px;"></td>
		    		<td id="curName"></td>
		  		</tr>
		  		<tr>
		    		<td>包装方式</td>
		    		<td>包装方式</td>
		    		<td><input name="packaging" id="packaging" type="text" style="width:250px;"></td>
		    		<td id="curPackaging"></td>
		  		</tr>
		  		<tr>
		    		<td>产品系列</td>
		    		<td>产品系列</td>
		    		<td><input name="seriesName" id="seriesName" type="text" style="width:250px;"></td>
		    		<td id="curSeriesName"></td>
		  		</tr>
		  		<tr>
		    		<td>产品目录</td>
		    		<td>产品目录</td>
		    		<td><input name="catlogName" id="catlogName" type="text" style="width:250px;"></td>
		    		<td id="curCatlogName"></td>
		  		</tr>
		  		<tr>
		    		<td>产品描述</td>
		    		<td>产品描述</td>
		    		<td><input name="description" id="description" type="text" style="width:250px;"></td>
		    		<td id="curDescription"></td>
		  		</tr>
		  		<tr>
		    		<td>产品规格</td>
		    		<td>产品规格</td>
		    		<td><input name="specifications" id="specifications" type="text" style="width:250px;"></td>
		    		<td id="curSpecifications"></td>
		  		</tr>
		  		<tr>
		    		<td>购买链接</td>
		    		<td>购买链接</td>
		    		<td><input name="purchaseLink" id="purchaseLink" type="text" style="width:250px;"></td>
		    		<td id="curPurchaseLink"></td>
		  		</tr>
		  		<tr>
		    		<td>产品主图</td>
		    		<td>产品主图</td>
		    		<td><input name="mainPicture" id="mainPicture" type="text" style="width:250px;"></td>
		    		<td id="curMainPicture"></td>
		  		</tr>
		  		<tr>
		    		<td>产品附图1</td>
		    		<td>产品附图1</td>
		    		<td><input name="prodPicture1" id="prodPicture1" type="text" style="width:250px;"></td>
		    		<td id="curProdPicture1"></td>
		  		</tr>
		  		<tr>
		    		<td>产品附图2</td>
		    		<td>产品附图2</td>
		    		<td><input name="prodPicture2" id="prodPicture2" type="text" style="width:250px;"></td>
		    		<td id="curProdPicture2"></td>
		  		</tr>
		  		<tr>
		    		<td>产品附图3</td>
		    		<td>产品附图3</td>
		    		<td><input name="prodPicture3" id="prodPicture3" type="text" style="width:250px;"></td>
		    		<td id="curProdPicture3"></td>
		  		</tr>
		  		<tr>
		    		<td>产品附图4</td>
		    		<td>产品附图4</td>
		    		<td><input name="prodPicture4" id="prodPicture4" type="text" style="width:250px;"></td>
		    		<td id="curProdPicture4"></td>
		  		</tr>
		  		<tr>
		    		<td>产品附图5</td>
		    		<td>产品附图5</td>
		    		<td><input name="prodPicture5" id="prodPicture5" type="text" style="width:250px;"></td>
		    		<td id="curProdPicture5"></td>
		  		</tr>
		  		<tr>
		    		<td>产品发布时间 </td>
		    		<td>产品发布时间</td>
		    		<td><input name="issuedTime" id="issuedTime" type="text" style="width:250px;"></td>
		    		<td id="curIssuedTime"></td>
		  		</tr>
		  		<tr>
		    		<td>是否激活发布</td>
		    		<td>是否激活发布</td>
		    		<td><input name="actived" id="actived" type="text" style="width:250px;"></td>
		    		<td id="curActived"></td>
		  		</tr>
		  		<tr>
		    		<td>产品页颈部标语图片</td>
		    		<td>产品页颈部标语图片</td>
		    		<td><input name="neckBanner" id="neckBanner" type="text" style="width:250px;"></td>
		    		<td id="curNeckBanner"></td>
		  		</tr>
		  		<tr>
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
	
    $("#queryProduct").click(function(){

    	alert("请确认你已保存修改，未保存的修改信息，在切换产品后将丢失！");
    	
    	var value = $("#productSelect").children('option:selected').val();
    	var info = {name:value};
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
            	
            	$("#mainPicture").val(data.mainPicture);
            	$("#curMainPicture").text(data.mainPicture);

            	$("#prodPicture1").val(data.prodPicture1);
            	$("#curProdPicture1").text(data.prodPicture1);
            	
            	$("#prodPicture2").val(data.prodPicture2);
            	$("#curProdPicture2").text(data.prodPicture2);
            	
            	$("#prodPicture3").val(data.prodPicture3);
            	$("#curProdPicture3").text(data.prodPicture3);
            	
            	$("#prodPicture4").val(data.prodPicture4);
            	$("#curProdPicture4").text(data.prodPicture4);
            	
            	$("#prodPicture5").val(data.prodPicture5);
            	$("#curProdPicture5").text(data.prodPicture5);
            	
            	$("#issuedTime").val((new Date(data.issuedTime)).Format("yyyy-MM-dd hh:mm:ss.S"));
            	$("#curIssuedTime").text((new Date(data.issuedTime)).Format("yyyy-MM-dd hh:mm:ss.S"));
            	
            	$("#actived").val(data.actived);
            	$("#curActived").text(data.actived);
            	
            	$("#neckBanner").val(data.neckBanner);
            	$("#curNeckBanner").text(data.neckBanner);
            	
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
		alert("--saveUpdate clicked---");
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
        
    	alert("--saveUpdate clicked  2---");
    	
        $.ajax({  
            type:"POST",  
            url:"${pageContext.request.contextPath}/edit/saveProduct",  
            data:product,
			
            // return Product object
            success:function(data){
            	alert(data);
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
    
    
});  
</script>

</body>
</html>