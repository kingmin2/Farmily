<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<%
	String context = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>호스트 정보</title>
<link href="css/kmj/main.css" rel="stylesheet" type="text/css">

<script src="js/jquery.js"></script>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
</head>
<body>
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div class="container" style="margin: 0px">
		<!-- 여기 하단으로 -->
			<div class="images">
				<div><img alt="" src="img/host/${info.detimg1 }"> </div>
				<div><img alt="" src="img/host/${info.detimg2 }"> </div>
				<div><img alt="" src="img/host/${info.detimg3 }"> </div>
			</div>
			
			<div class="infos">
				${info.detimg1 }
			</div>
			
			<div class="intro">
			
			</div>
			
			<div class="review">
			
			</div>
		<!-- 여기 상단으로 -->
		</div>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
	</div>
</body>
</html>