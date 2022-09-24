<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farmily</title>
<link href="css/kmj/main.css" rel="stylesheet" type="text/css">
<link href="css/hjh/signUp.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div class="container signFrame">
		<!-- 여기 하단으로 -->
			<div class="signUpFrame">
				<div class="titleFrame">
					<h1 class="signUpTitle">회원가입</h1>
				</div>
				<form action="insertPrf" method="post" class="signUpData" onsubmit="dateConvert()">
					<div>
						<label class="form-label" for="id">ID</label>
						<input id="id" class="ember-text-field ember-view form-control" name="id" type="text">
					</div>
					<div>
						<label class="form-label" for="passwd">비밀번호</label>
						<input id="passwd" class="ember-text-field ember-view form-control" name="passwd" type="password">
					</div>
					<div>
						<label class="form-label" for="passwd">비밀번호 확인</label>
						<input id="passwd" class="ember-text-field ember-view form-control" name="passwd" type="password">
					</div>
					<div>
						<label class="form-label" for="name">이름</label>
						<input id="name" class="ember-text-field ember-view form-control" name="name" type="text">
					</div>
					<div>
						<label class="form-label" for="birth">생년월일</label>
						<input id="birth" class="ember-text-field ember-view form-control" name="birth" type="text">
					</div>
					<div>
						<label class="form-label" for="con_tel">연락처</label>
						<input id="con_tel" class="ember-text-field ember-view form-control" name="con_tel" type="tel">
					</div>
					<div>
						<label class="form-label" for="con_addr">주소</label>
						<input id="con_addr" class="ember-text-field ember-view form-control" name="con_addr" type="text">
					</div>
					<div>
						<label class="form-label" for="email">EMAIL</label>
						<input id="email" class="ember-text-field ember-view form-control" name="email" type="email">
					</div>
					<button type="submit" class="btn text-white" id="btnSign">회원가입</button>
				</form>
			</div>
		<!-- 여기 상단으로 -->
		</div>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
	</div>
</body>
</html>