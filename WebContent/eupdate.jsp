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

	String b = request.getParameter("stdn");
	String b1 = request.getParameter("ero");
	String b5 = request.getParameter("bat");
	String b6 = request.getParameter("brh");
	String b7 = request.getParameter("sem");
	String b8 = request.getParameter("email");
	
//int aa =	(Integer) session.getAttribute("newy");
String aa= request.getParameter("q1new");

	Class.forName("com.mysql.jdbc.Driver");
	Connection c =
			DriverManager.getConnection
			("jdbc:mysql://localhost/demo1","root","root");
	Statement st = c.createStatement();
	//out.println(aa);
	st.executeUpdate("UPDATE collreg  SET student_name='"+b+"',enrollment_no='"+b1+"',batch='"+b5+"',branch='"+b6+"',semester='"+b7+"',email='"+b8+"' WHERE id= '"+aa+"'");
	response.sendRedirect("display.jsp");
	st.close();
	c.close();
	%>
</body>
</html>