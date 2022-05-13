<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="common/header.jspf"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>candidate login</title>
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
			<li ><a href="/adminfront?id=${registers.id}">Home</a></li>
						<li class="active"><a href="/">Vaccination Posting</a></li>
			
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/">Logout</a></li>
		</ul>
	</div>

</nav>
<div class="container">
	<table   class="table table-striped">
		<caption style="color:black">All the Vaccinations are posted here ADMIN</caption>
		<thead>
			<tr style=" text-shadow:3px 3px blue;">
			

				<th>Id</th>
				<th>Vaccinators Id</th>
				<th>Vaccinators Name</th>
				<th>Vaccinaton taken</th>
				<th>Required Vacancies</th>
				<th>Vaccination Date</th>
				<th>Priority</th>
				<th>Minimum Required Shot</th>
				<th>Posted</th>
				
				<th>Delete</th>
				
				<th></th>
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
					<td><a type="button" class="btn btn-primary"
						href="/jobs?reid=${requirementBean.reid}" >Approve</a> </td>
		           
								 <td> <a type="button" class="btn btn-danger"
						href="/jobsdelete?reid=${requirementBean.reid}">Delete</a>  </td>
			
			</tr>
			</c:forEach>
			<c:forEach items="${requirementlist1}" var="requirementBean">
				<tr>
					<td>${requirementBean.reid}</td>
					<td>${requirementBean.id}</td>
					<td>${requirementBean.name}</td>
					<td>${requirementBean.domain}</td>
					<td>${requirementBean.vacancy}</td>
					<td>${requirementBean.date}</td>
					<td>${requirementBean.priority}</td>
					<td>${requirementBean.ex}</td>
					<td>Posted</td>
	
	
					
	<td> <a type="button" class="btn btn-danger"
						href="/jobsdelete?reid=${requirementBean.reid}"  >Delete</a>  </td>				
					</tr>				
					
			</c:forEach>
			<c:forEach items="${requirementlist2}" var="requirementBean">
				<tr>
					<td>${requirementBean.reid}</td>
					<td>${requirementBean.id}</td>
					<td>${requirementBean.name}</td>
					<td>${requirementBean.domain}</td>
					<td>${requirementBean.vacancy}</td>
					<td>${requirementBean.date}</td>
					<td>${requirementBean.priority}</td>
					<td>${requirementBean.ex}</td>
					<td>Posted</td>
	
	<td> Scheduled </td>
	<td> <a type="button" class="btn btn-danger"
						href="/jobsdelete?reid=${requirementBean.reid}"  >Delete</a>  </td>
					</tr>				
					
			</c:forEach>
			
		</tbody>
		
	</table>
		<c:if test="${ empty(requirementlist)}"> 
		<h2>There is no Vaccination detials to Appove </h2>
		</c:if>
				
	<div>
	</div>
</div>
    
    
    
    
    
    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

</html>