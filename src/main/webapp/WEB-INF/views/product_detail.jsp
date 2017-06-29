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
<script type="text/javascript" src="<c:url value="/js/cloud-zoom.1.0.2.js" />"></script>

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
        <div class="logo"><a href="<c:url value="index" />"></a></div>
		<div style="width:650px;float:left;">
			<ul class="nav" style="margin-top: 14px;">
				<li><a href="<c:url value='/about' />" >${info.menuItem1}</a></li>
				<li><a href="<c:url value='/product' />" class="current">${info.menuItem2}</a></li>
				<li><a href="<c:url value='/honor' />" >${info.menuItem3}</a></li>
				<li><a href="<c:url value='/news' />" >${info.menuItem4}</a></li>
				<li><a href="<c:url value='/contact' />" >${info.menuItem5}</a></li>
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

<div class="wrapper">
    <div class="banner" style="background-image: url(<c:url value='${product.neckBanner}' />)"></div>
    <br/><br/>
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
				   <a href='<c:url value="${product.prodPicture1}"/>' class='cloud-zoom' id='zoom1' rel="adjustX:10, adjustY:-4">
				    <img src='<c:url value="${product.prodPicture1}"/>'/>
				   </a>
				</div>
				<div class="photoList">
                    <a href="javascript:void(0)" class="butLeft">&lt;</a>
                    <a href="javascript:void(0)" class="butRight">&gt;</a>
                    <div class="contents">
                        <ul>
						    <li class="current">
							    <a href='<c:url value="${product.prodPicture1}"/>' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<c:url value="${product.prodPicture1}"/>' ">
								   <img src='<c:url value="${product.prodPicture1}"/>'/>
								</a>
                            </li>
							
							<li class="current">
							    <a href='<c:url value="${product.prodPicture2}"/>' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<c:url value="${product.prodPicture2}"/>' ">
								   <img src='<c:url value="${product.prodPicture2}"/>'/>
								</a>
                            </li>
                            
							<li class="current">
							    <a href='<c:url value="${product.prodPicture3}"/>' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<c:url value="${product.prodPicture3}"/>' ">
								   <img src='<c:url value="${product.prodPicture3}"/>'/>
								</a>
                            </li>
                            
							<li class="current">
							    <a href='<c:url value="${product.prodPicture4}"/>' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<c:url value="${product.prodPicture4}"/>' ">
								   <img src='<c:url value="${product.prodPicture4}"/>'/>
								</a>
                            </li>
							
							<li class="current">
							    <a href='<c:url value="${product.prodPicture5}"/>' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<c:url value="${product.prodPicture5}"/>' ">
								   <img src='<c:url value="${product.prodPicture5}"/>'/>
								</a>
                            </li>
                            
						</ul>
                    </div>
                </div>
               
            </div>
            
            
            <div class="info">
                <h2>${product.name}</h2>
                <table>
                    <colgroup>
                        <col width="30">
                        <col width="50">
                        <col width="140">
                        <col>
                    </colgroup>
                    
                    <tbody>

					<tr>
                        <td><i></i></td>
                        <th>系列：</th>
                        <th>${product.seriesName}</th>
                    </tr>  

					<tr>
                        <td><i></i></td>
                        <th>包装：</th>
                        <th>${product.packaging}</th>
                    </tr>
                    
                    <tr>
                        <td><i></i></td>
                        <th>规格：</th>
                        <th>${product.specifications}</th>
                    </tr>
                    
                    </tbody>
                </table>
                
                <p>若水之交，如瑾瑜自显品质；<br>雅士名流，有和谐自显情怀。</p>
                <p>尚孚.瑜之和有机山茶油，好礼品，自有真情。</p>
                
                <div class="cartBox">
                    <a href="${product.purchaseLink}" target="_blank" class="cart" style=" margin-left:30px;"><i></i>${info.orderLabel}</a>
                </div>
                
            </div>
        </div>
    </div>
</div>


<div class="footer">
    <div class="main">
        <div class="tel">${info.footerTelNum}</div>
        <div class="right">
            <ul class="menu-foot">                
                <li><a href="<c:url value='/about' />" >${info.menuItem1}</a></li>
				<li><a href="<c:url value='/product' />">${info.menuItem2}</a></li>
				<li><a href="<c:url value='/honor' />" >${info.menuItem3}</a></li>
				<li><a href="<c:url value='/news' />"  >${info.menuItem4}</a></li>
				<li><a href="<c:url value='/contact' />" >${info.menuItem5}</a></li>
                
            </ul>
            <div class="copyright">
                <strong>${info.footerCopyright}</strong>
            </div>
        </div>
    </div>
</div>

<input type="hidden" id="la" value="$_COOKIE['think_language']"/>
<script type="text/javascript" src="<c:url value="/js/function.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/public.js" />"></script>

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