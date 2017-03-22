<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<html>
<head>
<%@ include file="Header.jsp" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false" %>
<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script>
$(function(){
$('input[name=mfg]').datepicker({
	format:'YYYY-mm-dd'
});	
});
</script>
<title>Insert title here</title>
</head>
<body>

<div class="container-wrapper">
<div class="container">
<c:url value="/admin/product/editProduct" var="url"></c:url>
<spring:form action="${url }"  commandName="product">


<div class="form-group">
<label for="id"></label>
<spring:hidden path="id"/>
</div>

<div class="form-group">
<label for="name">Product Name</label>
<spring:input path="name" class="form-control"/>
<spring:errors path="name"></spring:errors>
</div>

<div class="form-group">
<label for="description">Description</label>
<spring:input path="description" class="form-control"/>
<spring:errors path="description"></spring:errors>
</div>

<div class="form-group">
<label for="price">Price</label>
<spring:input path="price" class="form-control"/>
<spring:errors path="price"></spring:errors>
</div>

<div class="form-group">
<label for="quantity">Quantity</label>
<spring:input path="quantity" class="form-control"/>
<spring:errors path="quantity"></spring:errors>
</div>

<div class="form-group">
<label for="mfg">Date</label>
<fmt:formatDate value="${product.mfg }" var="dateString" pattern="MM/dd/yyyy"/>
<spring:input path="mfg"  id="mfg" value="${dateString }" class="form-control"/>
<spring:errors path="mfg"></spring:errors>
</div>

<div class="form-group">
<label for="category">Category</label>

<c:forEach var="c" items="${categories}">
<form:radiobutton path="category.id" value="${c.id}"/>${c.categoryDetails }
</c:forEach>
<form:errors path="mfg" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="image">Image</label>
<spring:input path="image" type="file"/>
</div>

<input type="submit" value="Submit"/>
</spring:form></div></div>

<%@ include file="Footer.jsp" %>
</body>
</html>