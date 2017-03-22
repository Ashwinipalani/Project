<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="stylesheets/fontsgoogleapis.css" rel='stylesheet' type='text/css' />
<link href="<c:url value="/WEB-INF/resources/css/text.css"/>" rel='stylesheet' type='text/css' />
<style>


</style>

</head>
<body>
<%@ include file="Header.jsp" %>
<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
  <!-- Overlay -->
  <div class="overlay"></div>

  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
    <li data-target="#bs-carousel" data-slide-to="1"></li>
    <li data-target="#bs-carousel" data-slide-to="2"></li>
  </ol>
  
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item slides active">
      <div class="slide-1"></div>
      <div class="hero">
        <hgroup>
            <h2>Womb to the world  </h2>        
            <h4>We help in safe transition</h4>
        </hgroup>
        <!-- <button class="btn btn-hero btn-lg" role="button">See all features</button>  -->
      </div>
    </div>
    <div class="item slides">
      <div class="slide-2"></div>
      <div class="hero">        
        <hgroup>
            <h2>Innovative and Affordable Technology</h2>        
            <h4>Through user-centric design</h4>
        </hgroup>       
       <!--  <button class="btn btn-hero btn-lg" role="button">See all features</button>  -->
      </div>
    </div>
    <div class="item slides">
      <div class="slide-3"></div>
      <div class="hero">        
        <hgroup>
            <h2>Provide warmth</h2>        
            <h4>Anywhere, Everywhere</h4>
        </hgroup>
       <!--  <button class="btn btn-hero btn-lg" role="button">See all features</button>  -->
      </div>
    </div>
  </div> 
</div>

<div class="just-sec">
        

        <div class="container">
             <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <center><h1 class="head-line">Feature List </h1></center>
                </div>
            </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="just-txt-div">

              
                <i class="fa fa-exchange fa-3x"></i>
									<center><h4>Patient Monitor </h4></center>
									<p >
										 Healthcare offers a comprehensive line of patient monitors for virtually every care setting with smart features that are in step with your needs  clinical accuracy, streamlined workflow, improved patient care, and cost efficient. GE monitors connect you to precise, relevant clinical data when and where you need it while making the most of your existing equipment investments.
									</p>
                   
                      </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="just-txt-div">

              
                <i class="fa fa-key fa-3x"></i>
									<center><h4>Diagnostic ECG</h4></center>
									<p >
										 Healthcare has brought continued innovation to diagnostic cardiology solutions over the years. Today, our commitment to improving ECG analysis and developing new solutions is stronger than ever. Whether you are performing a resting, stress or Holter cardiac examination, our extensive cardiology portfolio provides solutions that help meet your needs for accurate diagnosis and cardiology data management.
									</p>
                    
                      </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="just-txt-div">

              
                <i class="fa fa-legal fa-3x"></i>
									<center><h4>Radiography</h4></center>
									<p >
										X Ray is the hospital first impression of a patient. Just like first impressions with people, the first image taken helps set the path going forward. With our start up mentality, we are focused on reinventing X Ray to be an intuitive and technologically powerful tool, that helps you deliver greater confidence. Our mind is set on helping you swiftly and carefully determine the right course of action to shape amazing and valuable care all from that first image.
									</p>
                 
                      </div>
            </div>
        </div>
             
    </div>
    </div> 
<%@ include file="Footer.jsp" %>
</body>
</html>