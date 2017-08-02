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

<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>

</head>
<body>
<div class="login">
	<h1>Welcome</h1>
	<form>
		<input name="user" id="user" required="required" type="text">
		<input name="password" id="password" required="required" type="password">
		<input type="button" id="submit" class="btn btn-primary btn-block btn-large" value="login"/>
	</form>
</div>

<div  align="center">
<div id="result"></div>
</div>
<script type="text/javascript">  
$(document).ready(function(){  
    $("#submit").click(function(){  
        var user = 		  $("#user").val();  
        var password = $("#password").val();
        
        var info = {user:user,password:password};

        var token = $("meta[name='_csrf']").attr("content");
    	var header = $("meta[name='_csrf_header']").attr("content");
    	$(document).ajaxSend(function(e, xhr, options) {
    		xhr.setRequestHeader(header, token);
    	});
        
        $.ajax({  
            type:"POST",  
            url:"${pageContext.request.contextPath}/trylogin",  
            data:info,

            success:function(data){
            	//$("#result").css("background-color","#00FF00");
            	if("OK"==data){
            		$("body").css("background","#00FF00");
                	location.href="/edit/selectpage"
            	}else{
            		failedLogin();
            	}
            },  
            error:function(e) {  
            	failedLogin();
            }  
        });
    });
    
    var failedLogin = function(){
		$("#result").text("");
    	$("#result").text("Incorrect username or Password !");
    	$("#result").css("background-color","#FF0000");
	}
});  
</script>

</body>
</html>