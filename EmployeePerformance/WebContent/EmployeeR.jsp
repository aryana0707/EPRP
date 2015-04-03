<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="p1.DB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up</title>
</head>
<body>
	<%@include file="header1.html" %>
	
	<br/>
	<h1 style="color: white;" align="center">Employee Registration Form!</h1>
	<hr/>
	<form action="EmpR.jsp" method="post" name="frm">
		<table align="center" cellpadding="8" cellspacing="8" bgcolor="#B0E0E6">
			<tr>
				<td>Employee Code</td>
				<td><input type="text" name="ecode"></td>
				<td>Employee name</td>
				<td><input type="text" name="ename"></td>
			</tr>
			<tr>
				<td>Contact</td>
				<td><input type="text" name="contact"></td>
				<td>Email Address</td>
				<td><input type="text" name="mail"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="upass"></td>
				<td>Confirm Password</td>
				<td><input type="password" name="cpass"></td>
			</tr>
			<tr>
				<td>Department</td>
				<td>
					<select name="dep">
					
					<%
					try{
						java.sql.Connection conn=DB.getCon();
						String sql="select DEPTNAME from DEPARTMENT";
						PreparedStatement pst=conn.prepareStatement(sql);
						ResultSet rs=pst.executeQuery();
						while(rs.next()){
							%>
							<option value="<%=rs.getString("DEPTNAME") %>"><%=rs.getString("DEPTNAME") %></option>
							<%
						}
					}catch(Exception e){
						System.out.println(e);
					}
					
					%>
						
					</select>
				</td>
				<td>Gender</td>
				<td>
					<input type="radio" name="gen" value="Male">Male<br/>
					<input type="radio" name="gen" value="Female">Female<br/>
					<input type="radio" name="gen" value="others">others<br/> 
				</td>
			</tr>
			<tr>
				<td>Address</td>
				<td><textarea rows="5" cols="25" name="addr"></textarea></td>
				<td>Experience</td>
				<td>
					<select name="exp">
						<option>0</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>Greater than 5</option>
						
					</select>
				</td>
			</tr>
			<tr>
				<td>Role</td>
				<td>
					<select name="role">
						<option>Executive</option>
						<option>Programmer</option>
						<option>Leam Lead</option>
						<option>Project Manager</option>
						<option>Enterprise Architect</option>
					</select>
				</td>
				<td>Basic Salary</td>
				<td><input type="text" name="bs"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Submit" ></td>
				<td><input type="reset" value="Reset"></td>
				<td></td>
			</tr>
		</table>
	</form>
	<br/>
	<br/>
	
<%@include file="footer.html" %>
</body>
</html>