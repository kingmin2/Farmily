<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farmily</title>
<link href="css/kmj/main.css" rel="stylesheet" type="text/css">
<link href="css/hjh/profile.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function loginCheck() {
 		let id = $('#id').val();
		let passwd = $('#passwd').val();
		/*let Member = $('form').serialize();*/
	 	$.ajax(
			{
				type : 'POST',
				url : '/loginCheck',
				data : {id : id, passwd : passwd}
				
			
				/*success : alert("에러발생");*/
			}		
		)
	}
</script>
</head>
<body>
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div class="container">
		<!-- 여기 하단으로 -->
			<div class="signInFrame">
				<div class="titleFrame">
					<h1 class="signInTitle">FARMily</h1>
				</div>
				<form action="">
					<div class="IDFrame">
						<label class="form-label" for="id">ID</label>
						<input id="id" class="ember-text-field ember-view form-control" required="" name="id" type="text">
					</div>
					<div class="pwdFrame">
						<label class="form-label" for="passwd">비밀번호</label>
						<input id="passwd" class="ember-text-field ember-view form-control" required="" name="passwd" type="password">
					</div>
					<button class="btn text-white" id="btnSignIn" onclick="loginCheck()">로그인</button>
				</form>
				<button class="btn text-white" id="btnSignIn">회원가입</button>
				<div class="findAccount">
					<span>ID/비밀번호를 잊어버리셨나요?</span>
				</div>
			</div>
		<!-- 여기 상단으로 -->
		</div>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
	</div>
</body>
</html>