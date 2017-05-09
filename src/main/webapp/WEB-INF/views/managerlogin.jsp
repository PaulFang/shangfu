<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Manager Login</title>

<link rel="stylesheet" type="text/css" href="<c:url value="/css/normalize.css" />">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/loginPage.css" />">

<script type="text/javascript" src="<c:url value="/js/jquery-1.9.1.min.js" />"></script>

<!-- <script src="Login%20Form_files/prefixfree.htm"></script> -->

<%-- <meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/> --%>

</head>
<body>
<div class="login">
	<h1>Welcome</h1>
	<form method="post">
		<input name="user" id="user" required="required" type="text">
		<input name="password" id="password" required="required" type="password">
		<button type="submit" id="submit" class="btn btn-primary btn-block btn-large">login</button>
	</form>
</div>

<div id="result"></div>

<script type="text/javascript">  
$(document).ready(function(){  
    $("#submit").click(function(){  
        var user = 		  $("#user").val();  
        var password = $("#password").val();
        var ctx = "${pageContext.request.contextPath}";
        var info = {user:user,password:password};
        
        /* var token = $("meta[name='_csrf']").attr("content");
    	var header = $("meta[name='_csrf_header']").attr("content");
    	$(document).ajaxSend(function(e, xhr, options) {
    		alert(token);
    		alert(header);
    		xhr.setRequestHeader(header, token);
    	}); */
        
        $.ajax({  
            type:"POST",  
            url:"/login",  
            data:info,

            success:function(data){
            	//$("#result").css("background-color","#00FF00");
            	$("body").css("background","#00FF00");
            	location.href="/edit/selectpage"
            },  
            error:function(e) {  
            	$("#editResult").text("");
            	$("#editResult").text("修改失败： " + e);
            	$("#editResult").css("background-color","#FF0000");
            }  
        });  
    });  
});  
</script>

</body>
</html>