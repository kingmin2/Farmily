<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% 
   String context = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의하기</title>
<link href="css/kmj/main.css" rel="stylesheet" type="text/css">
<link href="css/kge/questionList.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div class="container">
		<jsp:include page="/WEB-INF/views/main/myPageInclude.jsp"></jsp:include>
		<!-- 여기 하단으로 -->
		<div class="container">
			<div class="row">
				<h1>1:1 문의하기</h1>
		
				<div class="d-grid gap-2 d-md-block">
				  <button class="btn btn-primary" type="button" onclick="getQuestionWriteForm()" id="q_write">작성하기</button>
				</div>
				
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
						      <%-- <td><a href="${path}/productDetails?pro_num=${item.pro_num}">${item.pro_title}</a></td> --%>
						      <td class="q_List"><a href="QuestionDetail?q_num=${question.q_num}">${question.q_subject}</a></td>
						      <td class="q_List">${question.member.name}</td> <!-- foreign key로 연결된 member 객체의 name값을 가져오기 -->
						      <td class="q_List">${question.q_date}</td>
						      
							      <c:choose>
									    <c:when test="${question.q_status==0}">
									   		<td class="q_List">확인중</td>
									    </c:when>
									    <c:otherwise>
											 <td class="q_List">답변 완료</td>
									    </c:otherwise>
								  </c:choose>
						      
						    </tr>
						  </tbody>
					  </c:forEach>
				  </c:if>
				  
		         <c:if test="${empty questions}">
		         <tbody>
		         <tr>
		         <td colspan="5">- 문의한 내역이 없습니다 -</td>
		         </tr>
		         </tbody>
		            
		         </c:if>
		         
		         
		</table>
		</div>
		</div>
		<!-- 여기 상단으로 -->
		</div>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
	</div>
	<script type="text/javascript">
   // 1:1 문의 작성 페이지로 이동
   function getQuestionWriteForm() {
	   alert("getQuestionWriteForm start...");
	   location.href="QuestionWriteForm";
   }
</script>
</body>
</html>