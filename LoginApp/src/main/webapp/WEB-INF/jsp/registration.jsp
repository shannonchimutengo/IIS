<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="common/header.jspf"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registration page</title>
<style>
.errors {
	color: red;
}
body {background-color: b380ff;
	;}
	
	label{
	color:white;
}

help-block{
color: white;
}
</style>
</head>



<body>
	<nav role="navigation" class="navbar navbar-inverse">

		<div class="">
			<a herf="/about" class="navbar-brand">One Vaccine</a>
		</div>

		<div class="navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="/">Home</a></li>
				<li class="active"><a href="/register">Registration</a></li>
				<li><a href="/about">About</a></li>

			</ul>
			
		</div>

	</nav>



	<div  class="page-header" class="container">
				<h1 style="color : black"> User Registration </h1>
	
	</div>
	<h2>${submitted}</h2>
	<br>
	<br>
	<div class="container" style="background-color:black">
			<h1 style="color : white">Registration Form</h1>
	
	<sf:form class="container"  action="/register" method="post" modelAttribute="register">
		<div class="container"  >
			<div class="form-row" >

				<div class="form-group col-md-6" ">
					<label class="form-check-label" for="firstname"> First
						Name: </label>
					<sf:input class="form-control" path="firstname" type="text" min="4"
						max="50" name="firstname" placeholder="Enter your FirstName "   />
					<p class="help-block">Enter your first name</p>
					<sf:errors class="errors" path="firstname"></sf:errors>
					<br> <br>
				</div>
				<div class="form-group col-md-6" >
					<label class="form-check-label" for="lasttname"> Last Name:
					</label>
					<sf:input class="form-control" path="lastname" name="lastname"
						type="text" placeholder="Enter your LastName" pattern="[A-Za-z]+" />
					<p class="help-block">Enter your Last name</p>
					<sf:errors class="errors" path="lastname"></sf:errors>
					<br> <br>
				</div>
			</div>
			<div class="form-row" >

				<div class="form-group col-md-4" >
					<label class="form-check-label" for="date"> DOB: </label>
					<sf:input class="form-control" path="dob" type="date" name="date"
						max="2001-01-01" placeholder="ex:dd/mm/yy" />
					<p class="help-block">Enter your Date of Birth</p>
					<sf:errors class="errors" path="dob"></sf:errors>
					<br>
					<br>
				</div>

				<div class="form-group col-md-2">
					<label class="form-check-label" for="gender"> Gender: </label> <br>
					<input class="form-check-input" path="gender" type="radio"
						name="gender" value="male" checked> <label
						class="form-check-label" for="male"> Male </label> <input
						class="form-check" class="form-check-input" type="radio"
						name="gender" value="female"> <label
						class="form-check-label" for="female"> Female </label>
					<p class="help-block">click gender</p>
					<br>
				</div>
				<div class="form-group col-md-4">
					<label class="form-check-label" for="number"> Contact
						Number :</label>

					<sf:input class="form-control" path="num" name="number" type="text"
						pattern="[0-9]{10}" placeholder="  mobile number" />
					<p class="help-block">Enter your contact number</p>
					<sf:errors class="errors" path="num"></sf:errors>
					<br> <br>
				</div>
				<div class="form-group col-md-2">
					<label class="form-check-label" for="user"> Select User :</label> <br>
					<input class="form-check-input" path="user" type="radio"
						name="user" value="Vacinator" checked> <label
						class="form-check-label" for="HR"> Vaccinator </label> <input
						class="form-check" path="user" class="form-check-input"
						type="radio" name="user" value="Authenticator"> <label
						class="form-check-label" for="candidate"> Authenticator </label>
					<p class="help-block">click user</p>
					<br>

				</div>
			</div>
			<div class="form-row">

				<div class="form-group col-md-4">

					<!-- <label class="form-check-label" for="id">Candidate Id/Hr Id :</label>

<sf:input class="form-control" path="id" type="number" name="id"  placeholder="853111" value="${id} "/>
<p class="help-block">Enter your Candidate Id</p> -->
<label class="form-check-label" for="email"> Email Id
</label>
<sf:input class="form-control" path="email" name="email"
	type="text" placeholder="Enter your Email Id" pattern="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" />
<p class="help-block">Enter your Email Id</p>
<sf:errors class="errors" path="email"></sf:errors>
				</div>

				<br>
				<div class="form-group col-md-4">

					<label class="form-check-label" for="password">Password :</label>

					<sf:input class="form-control" path="password" name="password"
						type="password" 
						placeholder="Min 8 characters with any special character" />
					<p class="help-block">Enter your password for your login</p>
					<sf:errors class="errors" path="password"></sf:errors>
					<br>
				</div>
				<br>
				<div class="form-group col-md-4">

					<label class="form-check-label" for="confirmpass">Confirm
						Password:</label>

					<sf:input class="form-control" path="confirmpass" name="password"
						type="password" 
						placeholder="Confirm your Password" />
					<p class="help-block">Enter your password for your login</p>
					<sf:errors class="errors" path="confirmpass"></sf:errors>
					<br>
				</div>
			</div>
		</div>
		<br>
		<div class="container">
			<div class="container">

				<centre> <input class="btn btn-success" type="submit"
					value="submit" name="submit" /> <input class="btn btn-danger"
					type="reset" value="cancel" /> </centre>
			</div>
		</div>
			</sf:form>
		
</div>
	<%@ include file="common/footer.jspf"%>