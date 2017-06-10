<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/base.css" rel="stylesheet" type="text/css">

<link href="css/other.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<title>客服中心-尚孚茶油</title>
</head>
<body>
<div class="load" id="ioad"><span class="l1"></span><span class="l2"></span><span class="l3"></span></div>
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
        <ul class="nav">
            <li><a href="about" >${info.menuItem1}</a></li>
            <li><a href="product" >${info.menuItem2}</a></li>
            <li><a href="honor" >${info.menuItem3}</a></li>
            <li><a href="news" >${info.menuItem4}</a></li>
            <li><a href="service" class="current">客服中心</a></li>
            <li><a href="contact" >${info.menuItem5}</a></li>
            <li><a href="">English</a></li>
        </ul>
        <div class="slogan"> <a href="index"><img src="images/slogan.png" style="width:280px;height:40px;"></a> </div>
    </div>
</div>
<div class="wrapper">
    <div class="banner" style="background-image: url(images/banner4.jpg)">
        <div class="title-bj">
            <div class="main">
                <div class="title"><strong>客服中心</strong></div>
            </div>
        </div>
    </div>
    <div class="main">
        <div class="location">
            <a href="index">首页</a>
            <em>&gt;</em>
            <span>客服中心</span>
        </div>
        <div class="service">
            <table>
                <tr>
                    <th>姓名</th>
                    <td><input type="text" name="name"></td>
                    <td><i>*</i></td>
                </tr>
                <tr>
                    <th>性别</th>
                    <td>
                        <label><input type="radio" name="sex" value="男" checked="checked">男</label>
                        <label><input type="radio" name="sex" value="女">女</label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th>联系方式</th>
                    <td><input type="text" name="tele"></td>
                    <td></td>
                </tr>
                <tr>
                    <th>QQ或邮箱</th>
                    <td><input type="text" name="email"></td>
                    <td><i>*</i></td>
                </tr>
                <tr>
                    <th>地址</th>
                    <td><input type="text" name="address"></td>
                    <td></td>
                </tr>
                <tr>
                    <th style="vertical-align:top;padding-top: 20px;">留言</th>
                    <td><textarea name="message"></textarea></td>
                    <td><i>*</i></td>
                </tr>
                <tr>
                    <th></th>
                    <th><input type="button" id="submits" value="提交"></th>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>
</div>
<div class="footer">
    <div class="main">
        <div class="tel">0713-8533399</div>
        <div class="right">
            <ul class="menu-foot">
                <li><a href="about" >关于尚孚</a></li>
                <li><a href="product" >产品展示</a></li>
                <li><a href="honor" >荣誉资质</a></li>
                <li><a href="news" >新闻资讯</a></li>
                <li><a href="service" class="current">客服中心</a></li>
                <li><a href="contact" >联系我们</a></li>
            </ul>
            <div class="copyright">
                <strong>Copyright © 2014 www.xianpin365.com 粤ICP备15001240号 All Rights Reserved</strong>
                <div class="share">
                    <div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a></div>
                </div>
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

<script>
    $("#submits").click(function(){
         var _name=$("input[name='name']");
         var _tele=$("input[name='tele']");
         var _email=$("input[name='email']");
         var _address=$("input[name='address']");
         var _message=$("textarea[name='message']");
		 
		 var n_msg='请填写您的姓名。';
		 var e_msg='请填写您的QQ或邮箱，以便与您联系。';
		 var b_msg='请填写标准格式的QQ或邮箱。';
		 var m_msg='请填写您的留言内容。';
		 var s_msg='发送中...';
         
         if($.isEmpty(_name.val())){
            _name.focus();
            _name.msg({msg:n_msg});
            return false;
        }
		
		
        if($.isEmpty(_email.val())){
            _email.focus();
            _email.msg({msg:e_msg});
            return false;
        }
        if($.isEmail(_email.val())){
            _email.focus();
            _email.msg({msg:b_msg});
            return false;
        }
        if($.isEmpty(_message.val())){
            _message.focus();
            _message.msg({msg:m_msg});
            return false;
        } 
		
		var name=_name.val();
		var sex=$(':radio[name="sex"]:checked').val();
		var tel=_tele.val();
		var email=_email.val();
		var address=_address.val();
        var message=_message.val();
        var url="/Home/Index/domessage";
        $('body').msg({msg:s_msg,closeTime:-1});		    
            $.post(url,{name:name,sex:sex,tele:tel,email:email,address:address,message:message},function(data){
                $('body').msg({msg:data.info,closeTime:5000});
				_name.val("");
				_tele.val("");
				_address.val("");
				_email.val("");
				_message.val("");
				_this.attr("disabled",false);			    
            });
		
	    //_this.attr("disabled",false);
            return false;
	  })
</script>
</body>
</html>