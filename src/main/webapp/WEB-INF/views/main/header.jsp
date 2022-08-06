<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link href="css/kmj/header.css" rel="stylesheet" type="text/css">
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Mochiy+Pop+One&display=swap" rel="stylesheet">
<link href="https://webfontworld.github.io/SCoreDream/SCoreDream.css" rel="stylesheet">
<!-- fontAwesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- js -->
<script type="text/javascript" src="js/*"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<header id="FarmilyHeader">
	<nav class="navbar navbar-expand-lg navbar-light">
  		<div class="container-fluid">
    		<a class="navbar-brand" id="home" href="#">FARMily</a>
   	 		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      			<span class="navbar-toggler-icon"></span>
    		</button>
    		<div class="collapse navbar-collapse" id="navbarSupportedContent">
      			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
        			<li class="nav-item">
          				<a class="nav-link active" aria-current="page" href="HostSearch" id="hostSearch">호스트 찾기</a>
			        </li>
			    </ul>
      			<form class="d-flex">
        		<!--  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        				--><div id="bar">
				  			<ul>
				  				<li>
				  					<a><i class="fas fa-heart"></i></a>	
				  				</li>
				  				<li>
				  					<a><i class="fas fa-envelope"></i></a>
				  				</li>
				  				<li class="mplist">
				  					<a href="myPage">마이페이지</a>
				  				</li>
				  				<li>
				  					<a href="signIn" class="signIn">로그인</a>
				  				</li>
				  			</ul>
	  					</div>
      			</form>
   			</div>
  		</div>
	</nav>
</header>
</body>
</html>