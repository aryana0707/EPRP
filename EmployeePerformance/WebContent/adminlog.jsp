<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.DB"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<hr/>
<br/>
<h3 style="color: red;"></h3>
<%
String name=request.getParameter("uname");
String pass=request.getParameter("upass");

try{
	java.sql.Connection conn=DB.getCon();
	String sql="select username, password from admin where username=? AND password=?";
	PreparedStatement pst=conn.prepareStatement(sql);
	pst.setString(1, name);
	pst.setString(2, pass);
	
	ResultSet rs=pst.executeQuery();
	
	if(rs.next()){
		String admin=rs.getString("username");
		session.setAttribute("ad", admin);
		%>
			<jsp:forward page="afterAdminLog.jsp"></jsp:forward>
		<%		
			}else{
				%>
				<jsp:forward page="errorLog.jsp"></jsp:forward>
				<%
			}
	
}catch(Exception e){
	System.out.println(e);
	%>
	<jsp:forward page="errorLog.jsp"></jsp:forward>
	<%
	
}


%>


</body>
</html>



