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
 
<body>
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div class="container">
		<jsp:include page="/WEB-INF/views/main/myPageInclude.jsp"></jsp:include>
		<input type="hidden" id="userno" value="${userno }">
		<!-- 여기 하단으로 -->
		<div class="row">
			<div class="col">
				<div>Get your FARMILY membership</div>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<div>Become a member to contact hosts!</div>
			</div>
		</div>
		
		<div class="row">
	      <div class="col">
	        <div class="card mb-4">
	          <div class="card-header py-3">
	            <h4 class="my-0 fw-normal">Year</h4>
	          </div>
	          <div class="card-body">
	            <h1 class="card-title pricing-card-title">100,000<small class="text-muted fw-light">/원</small></h1>
	            <ul class="list-unstyled mt-3 mb-4">
	              <li>farmily</li>
	              <li>..</li>
	              <li>..</li>
	              <li>..</li>
	            </ul>
	            <!-- value 12: year -->
	            <button type="button" class="w-100 btn btn-lg btn-outline-primary" onclick="location.href='payment?pay=12'">Get started</button>
	          </div>
	        </div>
	      </div>
	      <div class="col">
	        <div class="card mb-4">
	          <div class="card-header py-3">
	            <h4 class="my-0 fw-normal">Month</h4>
	          </div>
	          <div class="card-body">
	            <h1 class="card-title pricing-card-title">10,000<small class="text-muted fw-light">/원</small></h1>
	            <ul class="list-unstyled mt-3 mb-4">
	              <li>farmily</li>
	              <li>..</li>
	              <li>..</li>
	              <li>..</li>
	            </ul>
	            <!-- value 1: month -->
	            <button type="button" class="w-100 btn btn-lg btn-outline-primary" onclick="location.href='payment?pay=1'">Get started</button>
	          </div>
	        </div>
	      </div>
	      
	    </div>
	    
		<!-- 여기 상단으로 -->
		</div>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
	</div>
</body>
</html>