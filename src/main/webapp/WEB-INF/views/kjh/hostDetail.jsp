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
<link href="css/kmj/header.css" rel="stylesheet" type="text/css">
<link href="css/kmj/main.css" rel="stylesheet" type="text/css">
<link href="css/kjh/hostDetail.css" rel="stylesheet" type="text/css">
<link href="css/kmj/footer.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="js/httpRequest.js"></script>

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=4sz4wcsnub"></script>

</head>
<body style="height: 100%">
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div class="container">
		<!-- 여기 하단으로 -->
			<div class="main_title">
				<div class="imgu"><img alt="" src="img/host/${info.detimg1 }"> </div>
				<div class="imgu"><img alt="" src="img/host/${info.detimg2 }"> </div>
				<div class="imgu"><img alt="" src="img/host/${info.detimg3 }"> </div>
			</div>	
			<div class="main_left_btn">
				<div class="region">
					<ul class="detail">
						<li>지역 : 
							<c:choose>
								<c:when test="${info.region==1 }"> 경기도</c:when>
								<c:when test="${info.region==2 }"> 강원도</c:when>
								<c:when test="${info.region==3 }"> 충청남도</c:when>
								<c:when test="${info.region==4 }"> 충청북도</c:when>
								<c:when test="${info.region==5 }"> 경상남도</c:when>
								<c:when test="${info.region==6 }"> 경상북도</c:when>
								<c:when test="${info.region==7 }"> 전라남도</c:when>
								<c:when test="${info.region==8 }"> 전라북도</c:when>
								<c:when test="${info.region==9 }"> 제주도</c:when>
							</c:choose>
						</li>
						<li>경지규모: 
						<c:choose>
								<c:when test="${info.hectar==1 }"> 0.5ha 미만</c:when>
								<c:when test="${info.hectar==2 }"> 0.5-1.0ha 미만</c:when>
								<c:when test="${info.hectar==3 }"> 1.0-1.5ha 미만</c:when>
								<c:when test="${info.hectar==4 }"> 1.5-2.0ha 미만</c:when>
								<c:when test="${info.hectar==5 }"> 2.0-3.0ha 미만</c:when>
								<c:when test="${info.hectar==6 }"> 3.0-5.0ha 미만</c:when>
								<c:when test="${info.hectar==7 }"> 5.0-7.0ha 미만</c:when>
								<c:when test="${info.hectar==8 }"> 7.0-10.0ha 미만</c:when>
							</c:choose>
						</li>
						<li>농업형태: 
							<c:choose>
								<c:when test="${info.type==1 }"> 과수업</c:when>
								<c:when test="${info.type==2 }"> 논농업</c:when>
								<c:when test="${info.type==3 }"> 밭농업</c:when>
								<c:when test="${info.type==4 }"> 축산업</c:when>
								<c:when test="${info.type==5 }"> 농기계 동작</c:when>
								<c:when test="${info.type==6 }"> 스마트팜</c:when>
							</c:choose>
						</li>
						<li>농사규모: 
							<c:choose>
								<c:when test="${info.sale==1 }"> 상농업 상</c:when>
								<c:when test="${info.sale==2 }"> 상농업 중</c:when>
								<c:when test="${info.sale==3 }"> 상농업 하</c:when>
								<c:when test="${info.sale==4 }"> 자급자족</c:when>
								<c:when test="${info.sale==5 }"> 도시농업</c:when>
								<c:when test="${info.sale==6 }"> 반농</c:when>
							</c:choose>					
						</li>
						<li>호스트 경력: 
							<c:choose>
								<c:when test="${info.expert==1 }"> 5년 이하</c:when>
								<c:when test="${info.expert==2 }"> 10년 이하</c:when>
								<c:when test="${info.expert==3 }"> 15년 이하</c:when>
								<c:when test="${info.expert==4 }"> 20년 이하</c:when>
								<c:when test="${info.expert==5 }"> 30년 이상</c:when>
							</c:choose>						
						</li>
						<li>호스트 연령: 
							<c:choose>
								<c:when test="${info.age==1 }"> 20대</c:when>
								<c:when test="${info.age==2 }"> 30대</c:when>
								<c:when test="${info.age==3 }"> 40대</c:when>
								<c:when test="${info.age==4 }"> 50대</c:when>
								<c:when test="${info.age==5 }"> 60대</c:when>
								<c:when test="${info.age==6 }"> 70대 이상</c:when>
							</c:choose>					
						</li>
						<li>농법: 
							<c:choose>
								<c:when test="${info.style==1 }"> 유기농</c:when>
								<c:when test="${info.style==2 }"> 무기농</c:when>
								<c:when test="${info.style==3 }"> 관행농</c:when>
								<c:when test="${info.style==4 }"> 그 외</c:when>
							</c:choose>							
						</li>
						<c:if test="${membercheck==1 }">
							<li>상세주소: ${info.address }</li>
						</c:if>
					</ul>
				</div>
				<div class="intro">${info.intro }</div>
				<div class="review">
					 <c:choose>
					 	<c:when test="${res==null }">
					 	<button>회원가입</button>
					 	</c:when>
					 	
					 	<c:when test="${empty res }">
					 	<button>권한 없음</button>
					 	</c:when>	
					 				  	
					 	<c:otherwise>
					 	<button>리뷰작성</button>
					 	</c:otherwise>
					 </c:choose>
						
					 <c:choose>
					  <c:when test="${not empty revList}">
					  	<c:forEach var="rev" items="${revList }">
					  		<ul class="detail">
					  			<li class="revid">${rev.member.id }</li>
					  			<li class="revdate">${rev.re_date }</li>
					  			<li class="revtext">${rev.re_context }</li>
					  		</ul>
					  	</c:forEach>
					  </c:when>	
					  <c:otherwise>
					  	리뷰 없음
					  </c:otherwise>
					 </c:choose>
				</div>
			 </div>
			 <div class="main_right_btn">
				 <div class="hinfo">
				 	<ul class="detail">
				 		<li>${info.member.name }</li>
				 		<li>${info.approve_date }</li>
				 	</ul>
					<c:if test="${membercheck==1 }">
						<button>우핑 신청하기</button>
					</c:if>
				 </div>
				 <div class="map_wrap">map
				 	<div id="map">
				 		<img src="https://naveropenapi.apigw.ntruss.com/map-static/v2/raster-cors?w=300&h=300&center=${info.lng},${info.lat}&X-NCP-APIGW-API-KEY-ID={4sz4wcsnub}"/>
				 	</div>
				 </div>
				 <div class="cal_wrap">calender
				 	<div id="cal">
				 	
				 	</div>				 
				 </div>
			 </div>
		<!-- 여기 상단으로 -->
		</div>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
	</div>
</body>
</html>