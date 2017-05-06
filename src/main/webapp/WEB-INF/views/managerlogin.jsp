<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Manager Login</title>

<link rel="stylesheet" type="text/css" href="<c:url value="/css/normalize.css" />">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/loginPage.css" />">

<!-- <script src="Login%20Form_files/prefixfree.htm"></script> -->

</head>
<body>
<div class="login">
	<h1>Welcome</h1>
	<form method="post">
		<input name="user" required="required" type="text">
		<input name="password" required="required" type="password">
		<button type="submit" class="btn btn-primary btn-block btn-large">login</button>
	</form>
</div>

</body>
</html>