<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의하기</title>
<link href="css/kmj/main.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div class="container">
		<jsp:include page="/WEB-INF/views/main/myPageInclude.jsp"></jsp:include>
		<!-- 여기 하단으로 -->
		
				<table class="table table-striped">
				  <thead id="table_header">
				    <tr>
				      <th scope="col">문의번호</th>
				      <th scope="col">제목</th>
				      <th scope="col">작성자</th>
				      <th scope="col">등록일</th>
				      <th scope="col">답변</th>
				    </tr>
				  </thead>
				  <c:if test="${not empty questions}">
					  <c:forEach var="question" items="${questions}">
						  <tbody>
						    <tr>
						      <th scope="row">${question.q_num}</th>
						      <td class="q_List">${question.q_subject}</td>
						      <td class="q_List">${question.member.name}</td> <!-- foreign key로 연결된 member 객체의 name값을 가져오기 -->
						      <td class="q_List">${question.q_date}</td>
						      <td class="q_List">${question.q_status}</td>
						    </tr>
						  </tbody>
					  </c:forEach>
				  </c:if>
				  <div id="testResult">
		         <c:if test="${empty questions}">
		            - 문의한 내역이 없습니다 -
		         </c:if>
		         </div>
		</table>
	
		<!-- 여기 상단으로 -->
		</div>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
	</div>
</body>
</html>