<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="common/header.jspf"%>
     <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Requirement</title>
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
		<a  href="/about" class="navbar-brand">One Vaccine</a>
	</div>

	<div class="navbar-collapse">
		<ul class="nav navbar-nav">
			<li ><a href="/vaccinatorfront?id=${registers.id}">Home</a></li>
			<li class="active"><a href="/requirement">Register Your Vaccination</a></li>
			<li><a href="/listrequirement?id=${registers.id}">Your Vaccination detials</a></li>
			
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/">Logout</a></li>
		</ul>
	</div>
</nav>    

<div class="page-header" class="container">
<h1 align="center">Register Your Vaccination Details</h1>


</div>

<h2 style="color:#73e600">${sucessfully}</h2><br><br>

<div class="container" style="background-color:black">
<form action="/requirementpost" method="post" modelAttribute="requirement">
<h1 style="color : white">Vaccination Form</h1>
<div class="container " class="text-secondary" class="bg-light text-black-50">
  <div class="form-row">
    <div class="form-group col-md-6">

      <label for="id">Vaccinators ID</label>

      <sf:input type="text" class="form-control" path="requirement.id" id="id" value="${registers.id}" required="required" readonly="true" />
    </div>
    <div class="form-group col-md-6">
      <label for="hrname">Vaccinators Name</label>
      <sf:input type="text" class="form-control" path="requirement.name" id="hrname"  value="${registers.firstname} ${registers.lastname}" required="required" readonly="true" />
    </div>
  </div>
    <div class="form-group col-md-6">
      <label for="domain">Vaccination Name </label>
      <sf:select class="form-control" path="requirement.domain" id="domain" placeholder="PLEASE Select">
      <sf:option value="BCG">BCG</sf:option>
      <sf:option value="DPT+OPV 1">DPT+OPV 1</sf:option>
      <sf:option value="DPT+OPV 2">DPT+OPV 2</sf:option>
      <sf:option value="DPT+OPV 3">DPT+OPV 3</sf:option>
      <sf:option value="MEASLES">MEASLES</sf:option>
      <sf:option value="MMR-----1&2">MMR-----1&2</sf:option>
      <sf:option value="DPT BOOSTER+OPV BOOSTER">DPT BOOSTER+OPV BOOSTER</sf:option>
      <sf:option value="HI B VACCINE (INFLUENZA-B)">HI B VACCINE (INFLUENZA-B)</sf:option>
      <sf:option value="HEPATITIS B-I">HEPATITIS B-I</sf:option>
      <sf:option value="HEPATITIS B-II">HEPATITIS B-II</sf:option>
      <sf:option value="HEPATITIS B-III">HEPATITIS B-III</sf:option>
      <sf:option value="CHICKEN POX VACCINE (VARICELLA)">CHICKEN POX VACCINE (VARICELLA)</sf:option>
      <sf:option value="MENINGITIS VACCINE (MENACTRA)">MENINGITIS VACCINE (MENACTRA)</sf:option>
      <sf:option value="MMR BOOSTER">MMR BOOSTER</sf:option>
      <sf:option value="HEPATITIS- A">HEPATITIS- A</sf:option>
      <sf:option value="HEPATITIS A BOOSTER">HEPATITIS A BOOSTER</sf:option>
      <sf:option value="T.DAP BOOSTER">T.DAP BOOSTER</sf:option>
      <sf:option value="MENINGITIS VACCINE (MENACTRA)">MENINGITIS VACCINE (MENACTRA)</sf:option>
      <sf:option value="MMR BOOSTER">MMR BOOSTER</sf:option>
      <sf:option value="H1N1 VIRUS VACCINE (INFLUENZA-A)">H1N1 VIRUS VACCINE (INFLUENZA-A)</sf:option>
      <sf:option value="HEPATITIS B BOOSTER">HEPATITIS B BOOSTER</sf:option>
      <sf:option value="COVIDSHIELD">COVIDSHIELD</sf:option>
      <sf:option value="COVACINE">COVACINE</sf:option>
      <sf:option value="P-FIZER">P-FIZER</sf:option>
      <sf:option value="MODERNA">MODERNA</sf:option>     
       <sf:option value="JOHNSON & JOHNSON VACCINE">JOHNSON & JOHNSON VACCINE</sf:option>
       <sf:option value="OTHER">OTHER</sf:option>
      </sf:select>


      
<sf:errors class="errors"  path="requirement.domain"></sf:errors><br>   
    </div>
  
  <div>
  <div class="form-group  col-md-6">
    <label for="vacancy">No of Shot</label>
    <sf:input type="number" class="form-control"  path="requirement.vacancy"  id="vacancy" placeholder="No of Vacancies"    />
  <sf:errors class="errors"  path="requirement.vacancy"></sf:errors><br>   
  
  </div>
  <div class="form-group col-md-6">
    <label for="closingdate">Vaccination Date</label>
    <sf:input type="date" class="form-control"  path="requirement.date" min="2020-05-12" id="closingdate" placeholder="Enter The last date"/>
  <sf:errors class="errors"  path="requirement.date"></sf:errors><br>   
  
  </div>
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="priority">Priority</label>
     <!--<sf:input type="text" class="form-control" path="requirement.priority" required="required" id="priority"/> --->
    
<sf:select class="form-control" path="requirement.priority" id="priority">
  <sf:option value="Mandatory">Mandatory</sf:option>
  <sf:option value="Recomended">Recomended</sf:option>
  <sf:option value="Medical Conditions">Medical Conditions</sf:option>
</sf:select>
    
    </div>
    
    <div class="form-group col-md-2">
      <label for="exp">Required shot</label>
      <sf:input type="number"  path="requirement.ex" class="form-control" id="exp"  />
    <sf:errors class="errors"  path="requirement.ex"></sf:errors><br>   
    
    </div>
    
    <label class="form-label" for="customFile">Upload your Oriningal Proof Of Vaccination</label>
<input  class="form-group col-md-2" type="file"  class="form-control" id="customFile" />
<br><br>
<br>

    
     <center> <button type="submit"   class="btn btn-primary" >Submit</button></center>
    
  </div>
  </div>
    </div>
</form>
</div>
</body>
</html>