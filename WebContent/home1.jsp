<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	.welcome{
	
	text-align: center;
    
    color:#fff;
    position: absolute;
    left: 30%;
    top: 50%;
}

</style>
<link href="style.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%
		 String a1 = request.getParameter("getid");
		%>
		<section class="header">
        <nav>
            <a class="logo">live to educate </a>
            <div class="nav-links" id="navlinks">
                <i class="fa fa-window-close" onclick="hidemenu()"></i>
                <ul>

                    <li><a href="home1.jsp">Home</a></li>
                    <li><a href="display.jsp">display</a></li>
                    <li><a href="#">update</a></li>
                    <li><a href="home.jsp">logout</a></li>
                    
                </ul>
            </div>
            <i class="fa fa-bars" onclick="showmenu()"></i>
        </nav>

       
        <div class="welcome"> 
        	<h1>Welcome , Student</h1>
        	<p>hello, here you will get the information of all student, thanks for coming</p>
        </div>
    </section>


    <section class="course">
        <h1>Course We Offer </h1>
        <p>Lorem ipsum dolor sit amet consectetur.hygfewf fry</p>
        <div class="row">
            <div class="course-col">
                <h3>Intermediate</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum, accusamus veniam laborum earum saepe
                    labore eos
                    aliquam provident magni, sit deleniti.</p>
            </div>
            <div class="course-col">
                <h3>Degree</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum, accusamus veniam laborum earum saepe
                    labore eos
                    aliquam provident magni, sit deleniti.</p>
            </div>
            <div class="course-col">
                <h3>Post Graduate</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum, accusamus veniam laborum earum saepe
                    labore eos
                    aliquam provident magni, sit deleniti. </p>
            </div>
        </div>
    </section>

	<script>
        var navlinks = document.getElementById("navlinks");
        function showmenu() {
            navlinks.style.right = "0"
        }
        function hidemenu() {
            navlinks.style.right = "-200px"
        }


    </script>

</body>
</html>