<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
			*{
  margin:0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

 html{
  background:  linear-gradient(rgba(4,9,30,.7),rgba(4,9,30,.7)),url("images/banner.png");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  height: 800px;
   }

body{
  display: grid;
  place-items: center;
  text-align: center;
  background-size: cover;
}
			



.content{
  width: 430px; 
  border-radius: 10px;
  text-align: center;
  padding: 40px 30px;
  margin-top: 100px;
  margin-left: 15%;
  box-shadow: -3px -3px 9px #aaa9a9a2,
              3px 3px 7px rgba(147, 149, 151, 0.671);
 
}

.content .text{
  font-size: 25px;
  font-weight: 600;
  
  color: rgb(247, 233, 233);
}
.content .field{
  height: 50px;
  width: 100%;
  display: flex;
  margin-top:10px;
  position: relative;
}

.field input{
  height: 100%;
  width: 100%;
  padding-left: 45px;
  font-size: 18px;
  outline: none;
  border: none;
  color: #e0d2d2;
  border: 1px solid rgba(255, 255, 255, 0.438);
  border-radius: 8px;
  background: rgba(105, 105, 105, 0);
}

.field input::placeholder{
  color: #e0d2d2a6;
}

.field:nth-child(2){
  margin-top: 20px;
}

.field span{
  position: absolute;
  width: 50px;
  line-height: 50px;
  color: #ffffff;
}
.login{
  margin: 25px 0 0 0;
  width: 100%;
  height: 50px;
  color: rgb(238, 226, 226);
  font-size: 18px;
  font-weight: 600;
  border: 2px solid rgba(255, 255, 255, 0.438);
  border-radius: 8px;
  background: rgba(105, 105, 105, 0);
  margin-top: 40px;
  margin-bottom: 15px;
  outline: none;
  cursor: pointer;
  border-radius: 8px;
 
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<section class="header">
		<div class="content">
 				<div class="text">Register Form</div>
 			<form action="regdata">
 				<div class="field">
				   
				  </div>
 				<div class="field">
				    <span class="fa fa-user"></span>
				    <input type="text" placeholder="Student name"  name="stdn" required>
				  </div>
			    <div class="field">
				    <span class="fa fa-user"></span>
				    <input type="text" placeholder="Enrollment no" name="erno" required>
				  </div>
				  <div class="field">
				    <span class="fa fa-user"></span>
				    <input type="text" placeholder="batch" name="bat" required>
				  </div>
				  <div class="field">
				    <span class="fa fa-user"></span>
				    <input type="text" placeholder="branch" name="brh" required>
				  </div>
				  <div class="field">
				    <span class="fa fa-user"></span>
				    <input type="text" placeholder="Semester" name="sem" required>
				  </div>
				  <div class="field">
				    <span class="fa fa-user"></span>
				    <input type="text" placeholder="Email" name="email" required>
				  </div>
				  <div class="field">
				    <span class="fa fa-lock"></span>
				    <input type="password" placeholder="Password" name="pass" >
				  </div>
				  <button class="login">register</button>
				 
				</form>
				
        </div>
        
      </section>  
</body>
</html>
</body>
</html>