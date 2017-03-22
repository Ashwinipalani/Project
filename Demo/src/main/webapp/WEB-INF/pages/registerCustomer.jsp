<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="Header.jsp" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
</head>

<body>
<div class="container-wrapper">
<div class="container">

<c:url var="url" value="/all/registerCustomer"></c:url>

<form:form action="${url }" commandName="customer" class="form-horizontal">
<fieldset>

<center><legend>Registeration Form</legend></center>

<div class="form-group">
<form:label path="firstname" class="col-md-4 control-label">FIRST NAME</form:label>
 <div class="col-md-4">
<form:input path="firstname" placeholder="First Name" class="form-control input-md"></form:input>
</div>
<form:errors path="firstname"></form:errors>
</div>

<div class="form-group">
<form:label path="lastname" class="col-md-4 control-label">LAST NAME</form:label>
 <div class="col-md-4">
<form:input path="lastname" placeholder="Last Name" class="form-control input-md"></form:input>
</div>
<form:errors path="lastname"></form:errors>
</div>

<div class="form-group">
<form:label path="email" class="col-md-4 control-label">EMAIL</form:label>
 <div class="col-md-4">
<form:input path="email" placeholder="Enter Email Id" class="form-control input-md"></form:input>
</div>
<form:errors path="email"></form:errors>
</div>

<div class="form-group">
<form:label path="phonenumber" class="col-md-4 control-label">PHONE NUMBER</form:label>
 <div class="col-md-4">
<form:input path="phonenumber" placeholder="Contact Number" class="form-control input-md"></form:input>
</div>
<form:errors path="phonenumber"></form:errors>
</div>

<div class="form-group">
<form:label path="users.username" class="col-md-4 control-label">USERNAME</form:label>
 <div class="col-md-4">
<form:input path="users.username" placeholder="Username" class="form-control input-md"></form:input>
</div>
${duplicateUsername}
<form:errors path="users.username"></form:errors>
</div>

<div class="form-group">
<form:label path="users.password" class="col-md-4 control-label">PASSWORD</form:label>
 <div class="col-md-4">
<form:input path="users.password" type="password" placeholder="Password" class="form-control input-md"></form:input>
</div>
<form:errors path="users.password"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.apartmentNumber" class="col-md-4 control-label">APARTMENT NUMBER</form:label>
 <div class="col-md-4">
<form:input path="billingAddress.apartmentNumber" placeholder="Apartment number" class="form-control input-md"></form:input>
</div>
</div>

<div class="form-group">
<form:label path="billingAddress.streetName" class="col-md-4 control-label">STREET NAME</form:label>
 <div class="col-md-4">
<form:input path="billingAddress.streetName" placeholder="Street name" class="form-control input-md"></form:input>
</div>
</div>

<div class="form-group">
<form:label path="billingAddress.city" class="col-md-4 control-label">CITY</form:label>
 <div class="col-md-4">
<form:input path="billingAddress.city" placeholder="City" class="form-control input-md"></form:input>
</div>
</div>

<div class="form-group">
<form:label path="billingAddress.state" class="col-md-4 control-label">STATE</form:label>
 <div class="col-md-4">
<form:input path="billingAddress.state" placeholder="State" class="form-control input-md"></form:input>
</div>
</div>

<div class="form-group">
<form:label path="billingAddress.country" class="col-md-4 control-label">COUNTRY</form:label>
 <div class="col-md-4">
<form:input path="billingAddress.country" placeholder="Country" class="form-control input-md"></form:input>
</div>
</div>

<div class="form-group">
<form:label path="billingAddress.zipcode" class="col-md-4 control-label">ZIPCODE</form:label>
 <div class="col-md-4">
<form:input path="billingAddress.zipcode" placeholder="Zipcode" class="form-control input-md"></form:input>
</div>
</div>

<div class="form-group">
<form:label path="shippingAddress.apartmentNumber" class="col-md-4 control-label">APARTMENT NUMBER</form:label>
 <div class="col-md-4">
<form:input path="shippingAddress.apartmentNumber" placeholder="Apartment number" class="form-control input-md"></form:input>
</div>
</div>

<div class="form-group">
<form:label path="shippingAddress.streetName" class="col-md-4 control-label">STREET NAME</form:label>
 <div class="col-md-4">
<form:input path="shippingAddress.streetName" placeholder="Street name" class="form-control input-md"></form:input>
</div>
</div>

<div class="form-group">
<form:label path="shippingAddress.city" class="col-md-4 control-label">CITY</form:label>
 <div class="col-md-4">
<form:input path="shippingAddress.city" placeholder="City" class="form-control input-md"></form:input>
</div>
</div>

<div class="form-group">
<form:label path="shippingAddress.state" class="col-md-4 control-label">STATE</form:label>
 <div class="col-md-4">
<form:input path="shippingAddress.state" placeholder="State" class="form-control input-md"></form:input>
</div>
</div>

<div class="form-group">
<form:label path="shippingAddress.country" class="col-md-4 control-label">COUNTRY</form:label>
 <div class="col-md-4">
<form:input path="shippingAddress.country" placeholder="Country" class="form-control input-md"></form:input>
</div>
</div>

<div class="form-group">
<form:label path="shippingAddress.zipcode" class="col-md-4 control-label">ZIPCODE</form:label>
 <div class="col-md-4">
<form:input path="shippingAddress.zipcode" placeholder="Zipcode" class="form-control input-md"></form:input>
</div>
</div>


<center><input type="submit" value="Register" ></center>

</fieldset>
</form:form>

</div>

</div>


<%@include file="Footer.jsp" %>

</body>
</html>