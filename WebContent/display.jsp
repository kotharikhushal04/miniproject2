<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
 html{
  background:  linear-gradient(rgba(4,9,30,.2),rgba(4,9,30,.3)),url("images/banner.png");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  height: 800px;
  
   }

form{
                width: 50%;
                padding: 100px;
                margin: 34px auto 0 auto;
                border-radius: 15px;
                opacity:6.5;
               
            }
                        
</style>

</head>
<body>
		<%
Class.forName("com.mysql.jdbc.Driver");
Connection c =DriverManager.getConnection ("jdbc:mysql://localhost/demo1","root","root");
Statement st = c.createStatement();
ResultSet rs = st.executeQuery("Select * from collreg");
%>
<form>
<table border="1" class="disdata">
	<tr>
	<td>ID</td>
		<td><b>Student name</b></td>
		<td><b>Enrollment no</b></td>
		<td><b>batch</b></td>
		<td><b>branch</b></td>
		<td><b>semester</b></td>
		<td><b>Email Id</b></td>
		<td><b>Password</b></td>
		<td><b>Delete</b></td>
		<td><b>edit</b></td>
		
	</tr>
 <% 
 
while(rs.next()){
	
	int q10 = rs.getInt("id");
	String q1 = rs.getString("student_name");
	String q2 = rs.getString("enrollment_no");
	String q3 = rs.getString("batch");
	String q4 = rs.getString("branch");	
	String q5 = rs.getString("semester");	
	String q6 = rs.getString("email");	
	String q7 = rs.getString("password");	
	
	
	%>
	
	<tr>
		<td><%out.println(q10); %> </td>
		<td><%out.println(q1); %></td>
		<td><%out.println(q2); %> </td>
		<td><%out.println(q3); %> </td>
		<td><%out.println(q4); %></td>
		<td><%out.println(q5); %> </td>
		<td><%out.println(q6); %> </td>
		<td><%out.println(q7); %> </td>
		
		
		<td id=i><a href="delete.jsp?x=<%=q10%>">Delete</a> </td>
		<td id=i><a href="edit.jsp?y=<%=q10%>">Edit</a> </td>
		
	</tr>
	
		<% 
	
}
 
 %>
 </table>
	
 <% 
st.close();
c.close();

%>

</form>
</body>
</html>