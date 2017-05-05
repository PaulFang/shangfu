<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/base.css" rel="stylesheet" type="text/css">

<link href="css/product.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<link href="css/colorbox.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.colorbox.js"></script>
<title>茶油产品-尚孚茶油</title>
</head>
<body>
<!-- <div class="load" id="ioad"><span class="l1"></span><span class="l2"></span><span class="l3"></span></div> -->
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
        <div class="logo"><a href="index"></a></div>
		<div style="width:650px;float:left;">
			<ul class="nav" style="margin-top: 14px;">
				<li><a href="about" >关于尚孚</a></li>
				<li><a href="product" class="current">产品展示</a></li>
				<li><a href="honor" >荣誉资质</a></li>
				<li><a href="news" >新闻资讯</a></li>
				<li><a href="contact" >联系我们</a></li>
			</ul>
		</div>
        
        <div class="slogan" > <a href="index"><img src="images/slogan.png" style="width:280px;height:59px;"></a> </div>
    </div>
</div>
<div class="wrapper">
    <div class="banner" style="background-image: url(images/neck_banner/product_banner.jpg)">
        <!--
        <div class="title-bj">
            <div class="main">
                <div class="title"><strong>产品展示</strong></div>
            </div>
        </div> -->
    </div>
    <div class="main">
        <div class="location">
            <a href="index">首页</a>
            <em>&gt;</em>
            <span><a href="product">产品展示</a></span>
			<em>&gt;</em>
			<span>有机茶油·有机油茶籽·枯茶饼</span>
        </div>
        <ul class="productList">
		    <li class="first">
                <a href="pro_detail_1">
                    <div class="imgs"><img src="product_img/yuzhihe/main.jpg"></div>
                    <p><i></i><strong>尚孚·瑜之和</strong></p>
                </a>
                
            </li>
            <li >
                <a href="pro_detail_2">
                    <div class="imgs"><img src="product_img/shiyuejiaren/main.jpg"></div>
                    <p><i></i><strong>尚孚·十月佳人</strong></p>
                </a>
            </li>
            <li >
                <a href="pro_detail_3">
                    <div class="imgs"><img src="product_img/yichu/main.jpg"></div>
                    <p><i></i><strong>尚孚·宜厨</strong></p>
                </a> 
            </li>
            <div id="prod_list_locationer"></div><!-- 用于调整到页面的中心位置便于查看产品 -->
			<li class="first">
                <a href="pro_detail_4">
                    <div class="imgs"><img src="product_img/shijiazhijiao/main.jpg"></div>
                    <p><i></i><strong>尚孚·世家之交</strong></p>
                </a>
                
            </li>
            <li>
                <a href="pro_detail_5">
                    <div class="imgs"><img src="product_img/junjian/main.jpg"></div>
                    <p><i></i><strong>尚孚·君鉴</strong></p>
                </a>
            </li>
            <span id="kuchabing_locationer">
            <li>
                <a href="pro_detail_6">
                    <div class="imgs"><img src="product_img/chuyun/main.jpg"></div>
                    <p><i></i><strong>尚孚·厨韵</strong></p>
                </a>
            </li>
            
            <li class="first">
            <div ></div>
                <a href="pro_detail_7">
                    <div class="imgs"><img src="product_img/chakubin/main.jpg"></div>
                    <p><i></i><strong>尚孚·枯茶饼</strong></p>
                </a>
                
            </li>
            <li>
                <a href="pro_detail_8">
                    <div class="imgs"><img src="product_img/youchazi/main.jpg"></div>
                    <p><i></i><strong>尚孚·有机油茶籽</strong></p>
                </a>
            </li>
			</ul>
		<div class="pages"></div>
    </div>
</div>
<div class="footer">
    <div class="main">
        <div class="tel">0713-8533399 17771339998</div>
        <div class="right">
            <ul class="menu-foot">
                <li><a href="about" class="current">关于尚孚</a></li>
                <li><a href="product" >产品展示</a></li>
                <li><a href="honor" >荣誉资质</a></li>
                <li><a href="news" >新闻资讯</a></li>
                <!-- <li><a href="service" >客服中心</a></li> -->
                <li><a href="contact" >联系我们</a></li>
            </ul>
            <div class="copyright">
                <strong>Copyright © 2017 www.xianpin365.com 粤ICP备15001240号 All Rights Reserved</strong>
            </div>
        </div>
    </div>
</div>
<input type="hidden" id="la" value="$_COOKIE['think_language']"/>
<script type="text/javascript" src="js/function.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<!--
<script type="text/javascript">
    window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
	
	
	/*$(function(){
	    $(document).on("click", "a", function () {
            var _l=$("#la").val();
            var _url=$(this).attr("href");
            if(_l=="en-us"){
			   $(this).attr("href",_url+'?l=en-us');
			}			
			
		});
	})*/
</script> -->

<script type="text/javascript">
    $(function(){
        $(".photoList").custoersWheel({time: -1});
        $(".contents a").click(function(){
            var li=$(this).parents("li")
            li.addClass("current").siblings("li").removeClass("current");
        });
    });
</script>
</body>
</html>