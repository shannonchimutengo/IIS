<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="common/header.jspf"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {background-color: b380ff;
	;}
</style>
</head>
<body>
<nav role="navigation" class="navbar navbar-inverse">

	<div class="">
		<a  href="/about" class="navbar-brand">D2SH Jobs</a>
	</div>

	<div class="navbar-collapse">
		<ul class="nav navbar-nav">
			<li ><a href="/hrfront?id=${registers.id}"  >Home</a></li>
			<li><a href="/requirement">Create Requirement</a></li>
			<li class="active" ><a href="/listrequirement?id=${registers.id}">List Requirement</a></li>
			
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/">Logout</a></li>
		</ul>
	</div>
</nav>    <h1>
<div>You have removed a Participant <a href="/listrequirement?id=${registers.id} ">click here </a></div>
</h1>
</body>
</html>