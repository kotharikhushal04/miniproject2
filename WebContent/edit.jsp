<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
    * {
	box-sizing: border-box;
}
body {
	font-family: poppins;
	font-size: 16px;
	color: #fff;
}
.form-box {
	background-color: rgba(0, 0, 0, 0.5);
	margin: auto auto;
	padding: 40px;
	border-radius: 5px;
	box-shadow: 0 0 10px #000;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	width: 500px;
	height: 690px;
}
.form-box:before {
	background-image: linear-gradient(rgba(4,9,30,.7),rgba(4,9,30,.7)),url('images/banner.png');
	width: 100%;
	height: 100%;
	background-size: cover;
	content: "";
	position: fixed;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	z-index: -1;
	display: block;
	filter: blur(2px);
}
.form-box .header-text {
	font-size: 32px;
	font-weight: 600;
	padding-bottom: 30px;
	text-align: center;
}
.form-box input {
	margin: 10px 0px;
	border: none;
	padding: 10px;
	border-radius: 5px;
	width: 100%;
	font-size: 18px;
	font-family: poppins;
}
.form-box input[type=checkbox] {
	display: none;
}
.form-box label {
	position: relative;
	margin-left: 5px;
	margin-right: 10px;
	top: 5px;
	display: inline-block;
	width: 20px;
	height: 20px;
	cursor: pointer;
}
.form-box label:before {
	content: "";
	display: inline-block;
	width: 20px;
	height: 20px;
	border-radius: 5px;
	position: absolute;
	left: 0;
	bottom: 1px;
	background-color: #ddd;
}
.form-box input[type=checkbox]:checked+label:before {
	content: "\2713";
	font-size: 20px;
	color: #000;
	text-align: center;
	line-height: 20px;
}
.form-box span {
	font-size: 14px;
}
.form-box button {
	background-color: deepskyblue;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
	padding: 10px;
	margin: 20px 0px;
}
span a {
	color: #BBB;
}



</style>

<title>Insert title here</title>
</head>
<body>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection c =DriverManager.getConnection ("jdbc:mysql://localhost/demo1","root","root");
	Statement st = c.createStatement();
	String  s =	request.getParameter("y");
	int a = Integer.parseInt(s);
	//session.setAttribute("newy",a); 
	ResultSet rs = st.executeQuery("Select * from collreg WHERE id='"+a+"' ");
	String q1="",q2="",q3="",q4="",q5="",q6="" ;
	while(rs.next()){
		int q10 = rs.getInt("id");
		q1 = rs.getString("student_name");
		q2 = rs.getString("enrollment_no");
		q3 = rs.getString("batch");
		q4 = rs.getString("branch");	
		q5 = rs.getString("semester");	
		q6 = rs.getString("email");	
		String q7 = rs.getString("password");	
		
		
	}
	%>
 
<form action="eupdate.jsp">
<input type="hidden" name="q1new" value="<%=a%>">
<section class="header">
		<div class="content">
 				
 			
 					<div class="form-box">
		<div class="header-text">
			update Form
		</div>student name:<input placeholder="<%=q1%>" name="stdn" type="text">
              enrollment no<input placeholder="<%=q2%>"  name="ero" type="text"> 
              batch:<input placeholder="<%=q3%>"  name="bat" type="text">
              branch:<input placeholder="<%=q4%>" name="brh" type="text">
              semester:<input placeholder="<%=q5%>" name="sem" type="text">
              Email:<input placeholder="<%=q6%>" name="email" type="text">
             
              <button>update</button>
		</div>
				 
				 
				
				
        </div>
        
      </section>  

</form>
</body>
</html>