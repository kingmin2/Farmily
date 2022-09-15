<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farmily</title>
<link href="css/kmj/membership.css" rel="stylesheet" type="text/css">
</head>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>


 
<body>
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div class="container">
			<jsp:include page="/WEB-INF/views/main/myPageInclude.jsp"></jsp:include>
			<!-- 여기 하단으로 -->
			<input type="text" value="${membership.userno }">
			 
			<!-- 여기 상단으로 -->
		</div> 
	</div>
<script type="text/javascript"> 
 
</script>
</body>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
</html>