<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="style.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<section class="header">
        <nav>
            <a class="logo">live to educate </a>
            <div class="nav-links" id="navlinks">
                <i class="fa fa-window-close" onclick="hidemenu()"></i>
                <ul>

                    <li><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Course</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
            <i class="fa fa-bars" onclick="showmenu()"></i>
        </nav>

        <div class="content">
 				<div class="text">Login Form</div>
 				<form action="check">
				  <div class="field">
				    <span class="fa fa-user"></span>
				    <input type="text" placeholder="Email Id" name="email">
				  </div>
				
				  <div class="field">
				    <span class="fa fa-lock"></span>
				    <input type="password" placeholder="Password" name="pass">
				  </div>
				  <button class="login">Log in</button>
				  <div class="or">Or</div>
				   
				</form>
				<form action="reg.jsp">
					<button class="register">register</button>
				</form>
 				
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