<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ include file="common/header.jspf"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List applied</title>
<style>
body {background-color: b380ff;
	;}
	table{
	background-color:black;}
</style>
</head>
<body>
<nav class="navbar navbar-inverse">

			<div class="navbar-header">
				<a href="/about" class="navbar-brand">D2SH Jobs</a>
			</div>

			<div class="navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="/candidatefront?id=${registers.id}">Home</a></li>
					<li ><a href="/job">Jobs for you </a></li>
					<li class="active"><a href="/listapply?id=${registers.id}">Applied</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/">Logout</a></li>
				</ul>
			</div>
		</nav>

<div class="container">
	<c:if test="${not empty(listapply)}"> 

<table class="table table-bordered">
		<caption>Applied Jobs</caption>
		<thead style="color: blue">
			<tr>
				<th>Candidate ID</th>
				<th>Requirement Id </th>
				<th>Posted Status</th>
				<th> Status</th>
			
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listapply}" var="applyBean">
				<tr style="color:white">
					<td>${applyBean.id}</td>
					<td>${applyBean.reid}</td>
					<td>${applyBean.status}</td>
					<td>${applyBean.scheduled}</td>
					
					</tr>
					
			</c:forEach>
		</tbody>
	</table>
				</c:if>
	
	<c:if test="${ empty(listapply)}"> 
		<h2> Sorry , you have not not applied for any jobs  yet.</h2>
		</c:if>
				
	<div>
	</div>
</div>

</body>
</html>