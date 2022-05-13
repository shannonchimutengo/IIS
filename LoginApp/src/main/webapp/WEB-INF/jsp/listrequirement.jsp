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
<title>Insert title here</title>
<style>
body {background-color: b380ff;
	;}
	table {color:white
	;
	}
</style>
</head>
<body>

<nav role="navigation" class="navbar navbar-inverse">

	<div class="">
		<a  href="/about" class="navbar-brand">One Vaccine</a>
	</div>

	<div class="navbar-collapse">
		<ul class="nav navbar-nav">
			<li ><a href="/vaccinatorfront?id=${registers.id}"  >Home</a></li>
			<li><a href="/requirement">Register Your Vaccination</a></li>
			<li class="active" ><a href="/listrequirement?id=${registers.id}">Your Vaccination detials</a></li>
			
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/">Logout</a></li>
		</ul>
	</div>
</nav>    

<div class="container">
	<c:if test="${not empty(requirementlist)}"> 

	<table class="table table-striped">
		<caption style="color:black">Your Vaccination detials you have Enterd is here: </caption>
		<thead>
			<tr style=" text-shadow:4px 4px black;">
				<th>Id </th>
				<th>Vaccinators Id </th>
				<th>Vaccinators Name</th>
				<th>Vaccinaton taken</th>
				<th>Required Vaccination</th>
				<th>Vaccination Date</th>
				<th>Priority</th>
				<th>Minimum Required Shot</th>
				<th>Status</th>
			</tr>
		</thead>
		<tbody style="color: black">
			<c:forEach items="${requirementlist}" var="requirementBean">
				<tr>
					<td>${requirementBean.reid}</td>
					<td>${requirementBean.id}</td>
					<td>${requirementBean.name}</td>
					<td>${requirementBean.domain}</td>
					<td>${requirementBean.vacancy}</td>
					<td>${requirementBean.date}</td>
					<td>${requirementBean.priority}</td>
					<td>${requirementBean.ex}</td>

					<c:if test="${requirementBean.posted==0}"> 

						
						<td>Pending</td>
						<td> <a type="button" class="btn btn-danger"
							href="/jobsdelete?reid=${requirementBean.reid}"  >Delete</a>  </td>

						</c:if>
						<c:if test="${requirementBean.posted==1}"> 

						
							<td>Approved</td>
	
							</c:if>
					

					
		
	
		</tr>
			</c:forEach>
			
		</tbody>
	</table>
				</c:if>
	
	<c:if test="${ empty(requirementlist)}"> 
		<h2> Sorry , you have not created/submited any Vaccination detials yet.</h2>
		</c:if>
				
	<div>
	</div>
</div>



</body>
</html>