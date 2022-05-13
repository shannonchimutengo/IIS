<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<%@ include file="common/header.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

.errors{color: red;}

ul {
  list-style-image: url('sqpurple.gif');
}
label{ 
color:white;
}

.button {
  background-color: #004A7F;
  -webkit-border-radius: 10px;
  border-radius: 10px;
  border: none;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: Arial;
  font-size: 20px;
  padding: 5px 10px;
  text-align: center;
  text-decoration: none;
  -webkit-animation: glowing 1500ms infinite;
  -moz-animation: glowing 1500ms infinite;
  -o-animation: glowing 1500ms infinite;
  animation: glowing 1500ms infinite;
}
@-webkit-keyframes glowing {
  0% { background-color: #B20000; -webkit-box-shadow: 0 0 3px #B20000; }
  50% { background-color: #FF0000; -webkit-box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #B20000; -webkit-box-shadow: 0 0 3px #B20000; }
}

@-moz-keyframes glowing {
  0% { background-color: #B20000; -moz-box-shadow: 0 0 3px #B20000; }
  50% { background-color: #FF0000; -moz-box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #B20000; -moz-box-shadow: 0 0 3px #B20000; }
}

@-o-keyframes glowing {
  0% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
  50% { background-color: #FF0000; box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
}

@keyframes glowing {
  0% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
  50% { background-color: #FF0000; box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
}
body {background-color: b380ff;
	;}

</style>
</head >

<body >
<nav role="navigation" class="navbar navbar-inverse">

	<div class="">
		<a herf="/about" class="navbar-brand">One Vaccine</a>
	</div>

	<div class="navbar-collapse">
		<ul class="nav navbar-nav">
			<li class="active"><a href="/">Home</a></li>
			<li><a href="/register">Registration</a></li>
		     <li><a href="/about">About</a></li>
			
		</ul>
		</div>
</nav>
<center>
<h1 style="font-size:70px; color:black; font-family: Lucida Console, Courier, monospace;">One Vaccine</h1>
<h3 style="color:black; font-family: Courier New, Courier, monospace	">Your one stop Vaccination Wallet</h3>
</center>


<br>
<br><br><br>

<form class="container col-md-7 col-md-offset-3" style="background-color:black" action="/submitlogin" method="post">
<h3 style ="color:white		">Vaccinator / Authenticator</h3>
<div >
	<h4 style="color: green;"> ${submitted}   </h4>

</div>
<div class="form-group  ">

  <label class="form-check-label" for="userName">User ID:</label>

<sf:input class="form-control" path="login.email" type="text" name="userName" required="required"  placeholder="Enter your registerd Email ID"/> <br>

  <label class="form-check-label" for="confirmpass">Password:</label>

<sf:input class="form-control" path="login.passwords"  name="password" type="password"  required="required"  placeholder="Enter your registered Password"/>

<p class="errors">${errors}</p>

</div>

<br>
<div class="form-row">
<div class="form-group col-md-6">

  <input  class="btn btn-success" type="submit" value="Login"  name="submit" />
   <input   class="btn btn-danger" type="reset" value="cancel"  />
</div>
</div>
</form>


<br><br><br>
<%@ include file="common/footer.jspf"%>
