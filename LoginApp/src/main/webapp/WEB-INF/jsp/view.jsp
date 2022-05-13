<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="common/header.jspf"%>
    
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Views</title>
</head>
<style>
body {background-color: b380ff;
	;}
	table {color:white
	;
	}
</style>
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
</nav>    

<div class="page-header" class="container">
<h1 align="center">Participants List</h1>


</div> 


<div class=container>
<div class="container">
	<c:if test="${not empty(apply)}"> 

	<table class="table table-borderless table-dark table-hover">
		<caption>Your list of candidates are here HR</caption>
		<thead class="thead-dark">
			<tr style=" text-shadow:3px 3px black;">
				<th>Candidate Id </th>
				<th>Candidate Name </th>
				<th>mobile number</th>
				<th>Resume link </th>
				<th>Marks</th>
				<th>Delete Candidate</th>
				
				
				<th></th>
			</tr>
		</thead>
		<tbody  style="color: black">
					<c:forEach items="${apply}" var="applyBean">
		
				<tr>
					<td>${applyBean.id}</td>
					<td>${applyBean.name}</td>
					<td>${applyBean.number}</td>
					<td><a href="${applyBean.link}">resume link</a></td>
					<td>Disabled</td>
				
					<td><a type="button" class="btn btn-primary"
						href="/viewpost?id=${applyBean.id}">Remove</a> <a type="button"
		></a>	</tr>
										</c:forEach>
					</tbody>
			
				</table>
			</c:if>
			
			
	<c:if test="${not empty(apply1)}"> 

	<table class="table table-borderless table-dark table-hover">
		<caption>Your list of candidates are here HR</caption>
		<thead class="thead-dark">
			<tr style=" text-shadow:3px 3px black;">
				<th>Candidate Id </th>
				<th>Candidate Name </th>
				<th>mobile number</th>
				<th>Resume link </th>
				<th>Marks</th>
				<th>Delete Candidate</th>
								<th>Selected/Rejected</th>
				
				
				<th></th>
			</tr>
		</thead>
		<tbody  style="color: black">
					<c:forEach items="${apply1}" var="applyBean">
				<tr>
					<td>${applyBean.id}</td>
					<td>${applyBean.name}</td>
					<td>${applyBean.number}</td>
					<td><a href="${applyBean.link}">resume link</a></td>
					<td>
					<input type="number" >
					</td>
				    <td>disabled</td>
				    <td><a type="button" class="btn btn-primary"
						href="/viewpass?id=${applyBean.id}">Selected</a> <a type="button"
		></a>
		<a type="button" class="btn btn-danger"
						href="/viewfail?id=${applyBean.id}">Rejected</a> <a type="button"
		></a>
		</td>
			</tr>
			</c:forEach>
					</tbody>
			
				</table>
			</c:if>		
			
			<c:if test="${not empty(apply2)}"> 

	<table class="table table-border hover " style="background-color: black;">
		<caption>Your list of candidates are here HR</caption>
		<thead class="thead-dark">
			<tr style=" text-shadow:3px 3px black;">
				<th>Candidate Id </th>
				<th>Candidate Name </th>
				<th>selected</th>
				
				
				
				<th></th>
			</tr>
		</thead>
		<tbody  style="color: 1aff66">
					<c:forEach items="${apply2}" var="applyBean">
				<tr>
					<td>${applyBean.id}</td>
					<td>${applyBean.name}</td>
					<td>${applyBean.scheduled}</td>
								</tr>
			</c:forEach>
					</tbody>
			
				</table>
			</c:if>		
							
							
			
	
	
</div>


			

</div>



</body>
</html>