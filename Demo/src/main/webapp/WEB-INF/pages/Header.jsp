<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<!-- jstl -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<!-- taglib for spring -->

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 

<!-- search -->
<script src="https://code.jquery.com/jquery-2.2.1.in.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
</head>

<!-- multipart -->
<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"  rel = "stylesheet">
<script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
<script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<!-- security -->
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!-- Angular js -->

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

<style>
/*
Fade content bs-carousel with hero headers
Code snippet by maridlcrmn (Follow me on Twitter @maridlcrmn) for Bootsnipp.com
Image credits: unsplash.com
*/

/********************************/
/*       Fade Bs-carousel       */
/********************************/
.fade-carousel {
    position: relative;
    height: 100vh;
}
.fade-carousel .carousel-inner .item {
    height: 100vh;
}
.fade-carousel .carousel-indicators > li {
    margin: 0 2px;
    background-color: #f39c12;
    border-color: #f39c12;
    opacity: .7;
}
.fade-carousel .carousel-indicators > li.active {
  width: 10px;
  height: 10px;
  opacity: 1;
}

/********************************/
/*          Hero Headers        */
/********************************/
.hero {
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: 3;
    color: #fff;
    text-align: center;
    text-transform: uppercase;
    text-shadow: 1px 1px 0 rgba(0,0,0,.75);
      -webkit-transform: translate3d(-50%,-50%,0);
         -moz-transform: translate3d(-50%,-50%,0);
          -ms-transform: translate3d(-50%,-50%,0);
           -o-transform: translate3d(-50%,-50%,0);
              transform: translate3d(-50%,-50%,0);
}
.hero h1 {
    font-size: 6em;    
    font-weight: bold;
    margin: 0;
    padding: 0;
}

.fade-carousel .carousel-inner .item .hero {
    opacity: 0;
    -webkit-transition: 2s all ease-in-out .1s;
       -moz-transition: 2s all ease-in-out .1s; 
        -ms-transition: 2s all ease-in-out .1s; 
         -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s; 
}
.fade-carousel .carousel-inner .item.active .hero {
    opacity: 1;
    -webkit-transition: 2s all ease-in-out .1s;
       -moz-transition: 2s all ease-in-out .1s; 
        -ms-transition: 2s all ease-in-out .1s; 
         -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s;    
}

/********************************/
/*            Overlay           */
/********************************/
.overlay {
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: 2;
    background-color: #080d15;
    opacity: .7;
}

/********************************/
/*          Custom Buttons      */
/********************************/
.btn.btn-lg {padding: 10px 40px;}
.btn.btn-hero,
.btn.btn-hero:hover,
.btn.btn-hero:focus {
    color: #f5f5f5;
    background-color: #1abc9c;
    border-color: #1abc9c;
    outline: none;
    margin: 20px auto;
}

/********************************/
/*       Slides backgrounds     */
/********************************/
.fade-carousel .slides .slide-1, 
.fade-carousel .slides .slide-2,
.fade-carousel .slides .slide-3 {
  height: 100vh;
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
}
.fade-carousel .slides .slide-1 {
  background-image: url(data:image/jpeg;base64,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); 
}
.fade-carousel .slides .slide-2 {
  background-image: url(https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTHNYxHCN7pp5SZPq4tvHBxxk1cqnMw09Ecaes66eNWk58URSoR);
}
.fade-carousel .slides .slide-3 {
  background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_iMmyPb4StL7XKsDE-wUoIi6sFylL6-hG92wiyOHZwXxh_gjY);
}

/********************************/
/*          Media Queries       */
/********************************/
@media screen and (min-width: 980px){
    .hero { width: 980px; }    
}
@media screen and (max-width: 640px){
    .hero h1 { font-size: 4em; }    
}


</style>


<body>
<nav class="navbar navbar-default">
<div class="container-fluid">
<ul class="nav navbar-nav">
<li><a href="<c:url value="/Home"/>">Home</a></li>
<li><a href="<c:url value="/AboutUs"/>">About Us</a></li>

 <c:url var="url" value="/admin/product/ProductForm"></c:url>

<c:if test="${pageContext.request.userPrincipal.name !=null }">
   <!-- http://localhost:8080/project1/admin/product/productform -->
   
   <security:authorize access="hasRole('ROLE_ADMIN')">
   <li><a href="${url }">Add New Product</a></li>
   </security:authorize>
   
   <c:url var="allProducts" value="/all/product/getAllProducts"></c:url>
   
   <li><a href="${allProducts}">Browse all products</a></li>
   
 <li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">
                     Select by Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
			<c:forEach var="c" items="${categories }">
			<li>
<a href="<c:url value="/all/product/productsByCategory?searchCondition=${c.categoryDetails }"></c:url>" >
  ${c.categoryDetails }</a></li>
			</c:forEach>
			</ul>
			</li>
			
			<li><a href="<c:url value="/Home"/>"> Welcome ${pageContext.request.userPrincipal.name } </a></li>
			
			<security:authorize access="hasRole('ROLE_USER')">
         <li><a href="<c:url value="/cart/getCartId"></c:url>">Cart</a></li>
         </security:authorize>
			
</c:if>			
			<c:if test="${pageContext.request.userPrincipal.name ==null }">
			<li><a href="<c:url value="/login"></c:url>">Login</a></li>
			<li> <a href="<c:url value="/all/registrationForm"></c:url>">Register</a></li>
			</c:if>
			
			<c:if test="${pageContext.request.userPrincipal.name !=null }">
			<li><a href="<c:url value="/j_spring_security_logout"></c:url>">Logout</a></li>
			</c:if>
			
</ul>

</div>
</nav>


</body>
</html>