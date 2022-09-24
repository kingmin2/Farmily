<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farmily</title>
<link href="css/kmj/main.css" rel="stylesheet" type="text/css">
<link href="css/kge/questionDetail.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div class="container">
		<jsp:include page="/WEB-INF/views/main/myPageInclude.jsp"></jsp:include>
		<!-- 여기 하단으로 -->
			 <div class="q_Detail">
				 <div class="q_DetailPage">1:1 문의 상세 페이지</div>
				 <div class="q_DetailLine1"></div>
				 	<div class="q_DetailTitleGroup">
						 <div class="q_DetailTitle">[101] 회원 가입에 대한 질문이요!</div>
						 <div class="q_DetailButtons">
							 <button class="q_DetailModify">수정</button>
							 <button class="q_DetailDelete">삭제</button>
						 </div>
					 </div>
				 <div class="q_DetailLine2"></div>
				 <div class="a_DetailNameDate">고남우 | 20201212</div>
				 <div class="q_DetailContent"></div>
				 <div class="q_DetailAnswer"></div>
			 </div>
			 
		<!-- 여기 상단으로 -->
		</div>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
	</div>
</body>
</html>