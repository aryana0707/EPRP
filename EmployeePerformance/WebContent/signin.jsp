<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">

	
	
	function validate(){
		var user=document.fr1.uname.value;
		var pass=document.fr1.upass.value;
		
		if(user.length==0){
			alert("Please provide your username.");
			return false;
		}
		if(pass.length==0){
			alert("Please provide your password.");
			return false;
		}
		
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign in</title>
</head>
<body>
<%@include file="header.html" %>
<br/>

	<h1 style="color: white;" align="center">Login Form!</h1>

<form action="adminlog.jsp" method="post" name="fr1" onsubmit="return validate();">
<table align="center" cellspacing="8" cellpadding="8" bgcolor="lightblue">
	<tr>
		<td>Username</td>
		<td><input type="text" name="uname"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="upass"></td>
	</tr>
	<tr>
		<td><a href="forgot.jsp">Forgot password?</a></td>
		<td></td>
	</tr>
	<tr>
		<td><input type="submit" value="Sign in"></td>
		<td><input type="reset" value="Reset"></td>
	</tr>
</table>
</form>
<br/>
<br/>
<%@include file="footer.html" %>

</body>
</html>