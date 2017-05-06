﻿<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" type="text/css" href="<c:url value="/css/base.css" />"  />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/other.css" />"  >

<script type="text/javascript" src="<c:url value="/js/jquery-1.9.1.min.js" />"></script>

<title>${news.title}-${info.menuItem4}-尚孚茶油</title>

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
				<li><a href="<c:url value='/about' />" >${info.menuItem1}</a></li>
				<li><a href="<c:url value='/product' />" >${info.menuItem2}</a></li>
				<li><a href="<c:url value='/honor' />" >${info.menuItem3}</a></li>
				<li><a href="<c:url value='/news' />"  class="current">${info.menuItem4}</a></li>
				<li><a href="<c:url value='/contact' />" >${info.menuItem5}</a></li>
			</ul>
		</div>
        
        <div class="slogan" > <img src="<c:url value="/images/slogan.png" />" style="width:280px;height:59px;"> </div>
        
    </div>
</div>
<div class="wrapper">
    <div class="banner" style="background-image: url(<c:url value='${news.neckBanner}' />)">
    </div>
    <div class="main">
        <div class="location">
            <a href="<c:url value="/index" />">首页</a>
			<em>&gt;</em>
			<span><a href="<c:url value="/news" />">${info.menuItem4}</a></span>
			<em>&gt;</em>
			
			<em>&gt;</em>
			<span>${news.title}</span>
            
        </div>
        <div class="newsDetail">
            <h1>${news.title}</h1>
            <h3><span>时间：${news.issuedTime}</span><span>来源：${news.from}</span><span>阅读：${news.pvCount}人</span></h3>
            <div class="newsContent">
				<p><img src="picture/news20150629001.jpg"/></p>
                <p>一、孕妇在孕期食用茶油不仅可以增加母乳，而且对胎儿的正常发育十分有益。</p>
                <p>二、婴幼儿及儿童食用茶油可利气、通便、消火、助消化，对促进骨髂等身体发育很有帮助。</p>
                <p>三、老年人食用茶油可以去火、养颜、明目、乌发、抑制衰老，对慢性咽炎和预防人体高血压、动脉硬化、心血管系统疾病有很好的疗效。</p>
                <p>四、茶油又能抗紫外光，防止晒斑及去皱纹。云南是著名的产茶区，当地的女士常用茶油作梳头、搽面及用茶籽洗头。所以，虽地处高原，紫外光强烈的地区，很奇怪，当地的妇女皮肤却能保持雪白娇嫩，而邻近的西藏妇女的皮肤却粗糙不堪。</p>
				<p>五、用一毫升桃仁油( Peach Kernel)，十滴山茶油(Ti-tree)，五滴薰衣草油(Lavender)，混和后搽面部，对暗疮有显著疗效。因山茶有杀菌及增强免疫作用。而薰衣草又有消炎及收缩孔作用。此外，对黄褐斑、晒斑，都很有效果。</p>
				<p>六、茶籽杀虫效果很好，可以治癣疥。可作洗发剂及护发素使用。茶油能抗菌、抗病毒及杀微菌。能防止头癣、脱发、皮屑(Dandruff)及止痒。</p>
				<p>七、茶油也可直接搽用以防治蚊虫叮咬，有很好的止痒效果，浓的茶油可以去除疣(Virus)。</p>
				<p>八、茶与桉混合使用，可以治疗感冒及咽喉『卡他』症(Catarrh)，顺气除痰。</p>
				<p>九、在中国传统的中药方中常以茶油调制各种药膏、药丸。</p>
				<p><img src="picture/news20150629002.jpg"/></p>
				
				<p>1.预防妊娠纹：<br />
　　					孕期5-7个月是妊娠纹的高发期，经常会有肚皮痒胀的感觉，有的还会出现小红点，这是妊娠纹的征兆。请睡前清洗皮肤后，用2-4滴茶油涂匀皮肤，轻轻按摩5-15分钟。一般用一次痒、胀感觉就会消失，情况严重者请每天多用1-2次。孕期体重过快增长是产生妊娠纹的主要原因，一方面请坚持使用茶油滋润皮肤外，请一定注意控制体重过快增长，同时使用托腹带，减少肚肚的拉伸负荷。</p>            
			</div>
            
            <div class="crux">
                <span>本文关键字：</span>
				<a href="#" target="_blank">世家之交</a>
				<a href="#" target="_blank">一品生活</a>
				<a href="#" target="_blank">尚孚茶油</a>
			</div>
			
            <div class="attention">本文源于<a href="#" target="_blank">${news.from}</a>,转载请注明出处。</div>
            <div class="near">
			    <p><strong>上一篇：</strong><a href="#">${news.lastNewsTitle}</a></p>				            
			</div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="main">
        <div class="tel">${info.footerTelNum}</div>
        <div class="right">
            <ul class="menu-foot">
                <li><a href="about"   >${info.menuItem1}</a></li>
                <li><a href="product" >${info.menuItem2}</a></li>
                <li><a href="honor"   >${info.menuItem3}</a></li>
                <li><a href="news"    >${info.menuItem4}</a></li>
                <li><a href="contact" >${info.menuItem5}</a></li>
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
</body>
</html>