<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/kjh/myPage.css" rel="stylesheet" type="text/css">
<style type="text/css">
	.container{
		margin-left: 0px;
	    padding-left: 0px;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<div id="container">
			<h3><img alt="" src="img/farmer.png">김지호</h3>
			<br>
		<ul id="nav">
			<li class="list"><a href="#">프로필 정보</a></li>
			<li class="list"><a href="#">우프 멤버쉽 가입</a></li><!-- 결제 내역 있으면 정보 -->
			<li class="list"><a href="#">멤버쉽 정보</a></li><!-- 결제 내역 없으면 가입 -->
			<li class="list"><a href="#">호스트 되기</a></li><!-- 기존 호스트라면 호스트 정보 -->
			<li class="list"><a href="#">1:1 문의</a></li><!-- 기존 호스트라면 호스트 정보 -->
		</ul>
	</div>
</body>
</html>