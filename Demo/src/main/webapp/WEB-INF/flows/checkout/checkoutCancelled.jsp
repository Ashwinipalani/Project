<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/pages/Header.jsp" %>
<%@ page isELIgnored="false" %>
</head>
<body>
<div class="container-wrapper">
    <div class="container">
    <section>
    <div class="jumbotron">
    <h1 class="alert alertt-danger">Checkout Cancelled!</h1>
    <p> Your checkout process is cancelled! You may continue shopping.</p>
    </div>
     </section>
     </div>
     </div>
<section class="container">
<p><a href="<spring:url value="/Product/Productlist"/>" class="btn btn-default">Products</a></p>
</section>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
<%@ include file="/WEB-INF/pages/Footer.jsp"%>
</body>
</html>