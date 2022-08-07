<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farmily</title>
<link href="css/kmj/chat.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">
	var ws;
	
	function wsOpen(){
		ws = new webSocket("ws://" + location.host + "/chating");
		wsEvt();
	}
	
	function wsEvt(){
		ws.onopen = function(data){
			//소켓이 열리면 초기화 세팅하기
		}
		
		ws.onmessage = function(data){
			var msg = data.data;
			if(msg != null && msg.trim() != ''){
				$("#chating").append("<p>" + msg + "</p>");
			}
		}
		
		document.addEventListener("keypress", function(e){
			if(e.keyCode == 13){ //enter
				send();
			}
		});
	}
	
	function chatName(){
		var userName = $("#userName").val();
		if(userName == null || userName.trim() == ""){
			alert("사용자 이름을 입력해주세요.");
			$("#userName").focus();
		} else {
			wsOpen();
			$("#yourName").hide();
			$("#yourMsg").show();
		}
	}
	
	function send(){
		var uN = $("#userName").val();
		var msg = $("#chatting").val();
		ws.send(uN + " : " +msg);
		$("#chatting").val("");
	}
</script>
<body>
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div id="container" class="container">
		<!-- 여기 하단으로 -->
		<h1>채팅</h1>
			<div id="chating" class="chating">
			</div>
		
			<div id="yourName">
				<table class="inputTable">
					<tr>
						<th>사용자명</th>
						<th><input type="text" name="userName" id="userName"></th>
						<th><button onclick="chatName()" id="startBtn">이름 등록</button></th>
					</tr>
				</table>
			</div>
			<div id="yourMsg">
				<table class="inputTable">
					<tr>
						<th>메시지</th>
						<th><input id="chatting" placeholder="보내실 메시지를 입력하세요."></th>
						<th><button onclick="send()" id="sendBtn">보내기</button></th>
					</tr>
				</table>
			</div>
		<!-- 여기 상단으로 -->
		</div>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
	</div>
</body>
</html>