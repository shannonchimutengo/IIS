<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="common/header.jspf"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>req success</title>
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
			<li ><a href="/hrfront?id=${registers.id}">Home</a></li>
			<li class="active"><a href="/requirement">Create Requirement</a></li>
			<li><a href="/listrequirement?id=${registers.id}">List Requirement</a></li>
			
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/">Logout</a></li>
		</ul>
	</div>
</nav>    
<h2>Your requirement has been posted successfully HR , Cheak the <a href="/requirement">create requirement</a></h2>
</body>
</html>