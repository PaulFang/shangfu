<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/base.css" rel="stylesheet" type="text/css">

<link href="css/other.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<title>关于尚孚-尚孚茶油</title>
</head>
<body>
<!--<div class="load" id="ioad">
<span class="l1"></span>
<span class="l2"></span>
<span class="l3"></span></div> -->
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
				<li><a href="about" class="current">${info.menuItem1}</a></li>
				<li><a href="product" >${info.menuItem2}</a></li>
				<li><a href="honor" >${info.menuItem3}</a></li>
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
    <div class="banner" style="background-image: url(images/neck_banner/about_banner.jpg)"></div>
    <br/><br/>
    <div class="main">
        <div class="location">
            <a href="index">首页</a>
            <em>&gt;</em>
            <span>${info.menuItem1}</span>
        </div>
        <br/><br/>
        <div class="con">
            <!-- old src="picture/548823e55c2fe.jpg" -->
            <!--<p><img src="images/about.jpg" class="fr ml20" title="null"/></p> -->
            <p>尚者，上也；孚者，信也！</p>        
            <p><strong>尚孚，专注于有机山茶油的种植、研发、生产和销售，其产业链涵盖优质野生有机油茶基地、有机茶油深加工、有机油茶产品深度开发和农业科技输出。公司已通过ISO9001质量管理体系和ISO22000食品安全管理体系双重国际标准体系认证，尚孚油茶籽、油茶籽油均已通过国家有机产品认证。</strong></p>
　　          <p>尚孚，采用庄园式管理理念与运作模式，坐落于“中国油茶之乡”的麻城市—大别山南麓的原始森林中，旨在依托得天独厚的大自然环境，孕育高品质野生山茶籽。</p>
　　          <p>尚孚，将传承工艺与现代科技完美结合，以现代科技还原传统工艺，采用国际领先的低温冷态纯物理技术，生产纯正有机山茶油。</p>
　　          <p>尚孚，在广州组建品牌战略运营中心，致力于互联网+现代农业的战略升级，负责尚孚品牌的战略规划及营销体系、售后服务体系运作。</p>
　　          <p>尚孚，立足于做中国现代高科技农业的建设者和推动者，做有机安全食品的生产者与供应者，不断推动中国高科技农业的规模化、产业化、生态化发展。</p>

			</div>
		
    </div>
</div>
<div class="footer">
    <div class="main">
        <div class="tel">${info.footerTelNum}</div>
        <div class="right">
            <ul class="menu-foot">
                <li><a href="about" class="current">${info.menuItem1}</a></li>
                <li><a href="product" >${info.menuItem2}</a></li>
                <li><a href="honor" >${info.menuItem3}</a></li>
                <li><a href="news" >${info.menuItem4}</a></li>
                <li><a href="contact" >${info.menuItem5}</a></li>
            </ul>
            <div class="copyright">
                <strong>${info.footerCopyright}</strong>
            </div>
        </div>
    </div>
</div>
<input type="hidden" id="la" value="$_COOKIE['think_language']"/>
<script type="text/javascript" src="js/function.js"></script>
<script type="text/javascript" src="js/public.js"></script>

<script>
   $(function(){
			$('.main').each(function(){
				var $this=$(this);
				$('.location ul li a',$this).each(function(i){$(this).data('tagindex',i);})
				$('.location ul li a',$this).click(function(){var j=$(this).data('tagindex');
				$('.location ul li a',$this).removeClass('on');$(this).addClass('on');
				$('.con',$this).hide();$('.con:eq('+j+')',$this).fadeIn(300);
				return false;
				});
			})
			$('.conH').click(function(){
				$('.conV').not($(this).next('.conV')).hide();
				$('.conJob').not($(this).parent('.conJob')).removeClass('conCur');
				$(this).next('.conV').slideToggle(200);
				$(this).parent('.conJob').toggleClass('conCur');
			});
   });

</script>
<script>
$(function(){
			var _urlid=getUrlParam('location');
			$('.newTab li').eq(_urlid).click();
			 var url = window.location.toString();
			 var id = url.split("#")[1];
			 if(id){
				var t = $("#"+id).offset().top;
				$('html,body').animate({scrollTop:t},300);
		 } 
		});
</script>
</body>
</html>