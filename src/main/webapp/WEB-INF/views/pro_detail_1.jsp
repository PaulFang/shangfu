<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/base.css" />"  />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/product.css"/>" />
<script type="text/javascript" src="<c:url value="/js/jquery-1.7.2.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/easing.js" />"></script>
<link type="text/css" rel="stylesheet" href="<c:url value="/css/cloud-zoom.css"/>"/>
<script type="text/javascript" src="js/cloud-zoom.1.0.2.js"></script>
<title>尚孚·厨韵-茶油-产品展示-尚孚茶油</title>
</head>
<body>
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
        
        <div class="slogan" > <img src="images/slogan.png" style="width:280px;height:59px;"> </div>
    </div>
</div>
<div class="wrapper">
    <div class="banner" style="background-image: url(images/neck_banner/product_banner.jpg)">
    </div>
    <div class="main">
        <div class="location">
            <a href="index">首页</a>
            <em>&gt;</em>
            <span><a href="/product">产品展示</a></span>
			
			<em>&gt;</em>
			<span>厨韵</span>
        </div>
        <div class="product-detail">
            
            <div class="photos">
                <div class="detail">
				   <a href='product_img/yuzhihe/main.jpg' class='cloud-zoom' id='zoom1' rel="adjustX:10, adjustY:-4">
				    <img src="product_img/yuzhihe/main.jpg">
				   </a>
				</div>
				<div class="photoList">
                    <a href="javascript:void(0)" class="butLeft">&lt;</a>
                    <a href="javascript:void(0)" class="butRight">&gt;</a>
                    <div class="contents">
                        <ul>
						    <li class="current">
							    <a href='product_img/yuzhihe/main.jpg' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: 'product_img/yuzhihe/main.jpg' ">
								   <img src="product_img/yuzhihe/main.jpg"/>
								</a>
                            </li>
							
							<li class="current">
							    <a href='product_img/yuzhihe/1.jpg' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: 'product_img/yuzhihe/1.jpg' ">
								   <img src="product_img/yuzhihe/1.jpg"/>
								</a>
                            </li>
							<li class="current">
							    <a href='product_img/yuzhihe/2.jpg' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: 'product_img/yuzhihe/2.jpg' ">
								   <img src="product_img/yuzhihe/2.jpg"/>
								</a>
                            </li>
							<li class="current">
							    <a href='product_img/yuzhihe/3.jpg' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: 'product_img/yuzhihe/3.jpg' ">
								   <img src="product_img/yuzhihe/3.jpg"/>
								</a>
                            </li>
							
							<li class="current">
							    <a href='product_img/yuzhihe/4.png' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: 'product_img/yuzhihe/4.png' ">
								   <img src="product_img/yuzhihe/4.png"/>
								</a>
                            </li>
							                       </ul>
                    </div>
                </div>
				
               
            </div>
            <div class="info">
                <h2>尚孚·瑜之和</h2>
                <table>
                    <colgroup>
                        <col width="30">
                        <col width="130">
                        <col width="140">
                        <col>
                    </colgroup>
                    
                    <tbody>
					<tr>
                        <td><i></i></td>
                        <th>系列：</th>
                        <th>尚孚·瑜之和</th>
                       
                    </tr>  
					<tr>
                        <td><i></i></td>
                        <th>包装：</th>
                        <th>高档礼盒</th>
                        
                    </tr><tr>
                        <td><i></i></td>
                        <th>规格：</th>
                        <!-- <th>375ml玻璃瓶×2瓶</th> -->
                        <th>${spec}</th>
                       
                    </tr>
                    <!--
                    <tr>
                        <td><i></i></td>
                        <th>价格：</th>
                        <th>￥xxx.00</th>
                    </tr> -->
                    </tbody>
                </table>
                <p>若水之交，如瑾瑜自显品质；<br>雅士名流，有和谐自显情怀。</p>
                <p>尚孚.瑜之和有机山茶油，好礼品，自有真情。
</p>
                <div class="cartBox">
                    <a href="https://detail.1688.com/offer/539554261769" target="_blank" class="cart" style=" margin-left:30px;"><i></i>立即订购</a>
                </div>
                
            </div>
        </div>
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
</script>

<script type="text/javascript">
    $(function(){
        $(".photoList").custoersWheel({time: -1});
        $(".contents a").click(function(){
            var li=$(this).parents("li")
            li.addClass("current").siblings("li").removeClass("current");
        });
        $(".collect a").click(function(){
            var _this=$(this);
            if(_this.hasClass("on")){
               return;
            }
		    var _id=_this.attr("data-id");
			var url="/Home/Index/zan";
			$.post(url,{id:_id},function(data){
			     $(".collect")(data);
			});
        });
        $(document).on("click",".codeBut",function(){
            var _this=$(this);
            if(_this.hasClass("on")){
                _this.removeClass("on");
                _this.animate({"top":0},300);
                $(".codeBox").animate({"top":-564},300);
            }else{
                _this.addClass("on");
                _this.animate({"top":-25},300);
                $(".codeBox").animate({"top":0},{
                    duration: 600,
                    easing: "easeOutCirc"
                });
            }
        });
		
    });
</script>
</body>
</html>