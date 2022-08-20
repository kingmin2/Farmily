<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지</title>
<link href="css/kmj/main.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div class="container">
		<jsp:include page="/WEB-INF/views/main/myPageInclude.jsp"></jsp:include>
		<!-- 여기 하단으로 -->
		
		<div id="Ques_WriteForm">
		<h1>1:1 문의하기</h1>
		
			<form action="QuestionWrite" id="Q_WriteForm" method="post">
				<div class="input-group mb-3">
				  <span class="input-group-text" id="basic-addon1">질문 유형</span>
				  <select class="form-select" id="autoSizingSelect">
				      <option selected>(선택하세요)</option>
				      <option value="1">회원 정보</option>
				      <option value="2">기타</option>
			     </select>
				</div>
				
				<div class="input-group mb-3">
				  <span class="input-group-text" id="basic-addon2">제목</span>
				  <input type="text" class="form-control" aria-label="Recipient's username" aria-describedby="basic-addon2">
				</div>
				
				<div class="input-group">
				  <span class="input-group-text">내용</span>
				  <textarea class="form-control" aria-label="With textarea"></textarea>
				</div>
				
				<button type="submit" class="btn btn-primary">등록</button>
			</form>
		</div>		
		
		<!-- 여기 상단으로 -->
		</div>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
	</div>
</body>
</html>