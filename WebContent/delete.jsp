<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%

Class.forName("com.mysql.jdbc.Driver");
Connection c =DriverManager.getConnection ("jdbc:mysql://localhost/demo1","root","root");
Statement st = c.createStatement();

String  s =	request.getParameter("x");
int a = Integer.parseInt(s);

st.executeUpdate("DELETE FROM  collreg WHERE id='"+a+"'  ");

response.sendRedirect("display.jsp");
st.close();
c.close();
%>
		
</body>
</html>