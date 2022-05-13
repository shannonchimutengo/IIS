
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>interview scheduler</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<style>
body {background-color: b380ff;
	;}
</style>

<body>
<nav role="navigation" class="navbar navbar-inverse">

	<div class="">
		<a herf="/about" class="navbar-brand">D2SH Jobs</a>
	</div>

	<div class="navbar-collapse">
		<ul class="nav navbar-nav">
			<li ><a href="/">Login</a></li>
			<li class="active"><a href="/register">registration</a></li>
		     <li><a href="/about">about</a></li>
			
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/">Logout</a></li>
		</ul>
	</div>

</nav>

<div class="container">

<h2>You have Registered successfully ${register.firstname} ${register.lastname} . Your USER ID is </h2>
<div class="container col-xs-2"">
<h3>

<input class="form-control " type="text" readonly value="${id}" id="myInput"></h3>

<!-- The button used to copy the text -->
<button class="btn btn-info" onclick="myFunction()">Copy text</button>
</div> 
<div class="container">
<h3>You can Enter your USER ID and password to<a href="/" > Login</a> </h3>
</div>
</div>
<script>
function myFunction() {
	  /* Get the text field */
	  var copyText = document.getElementById("myInput");

	  /* Select the text field */
	  copyText.select();
	  copyText.setSelectionRange(0, 99999); /*For mobile devices*/

	  /* Copy the text inside the text field */
	  document.execCommand("copy");

	  /* Alert the copied text */
	  alert("Copied the text: ");
	}

</script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<%@ include file="common/footer.jspf"%>
