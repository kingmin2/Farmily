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
<meta charset="UTF-8">
<title>호스트찾기</title>
<link href="css/kmj/main.css" rel="stylesheet" type="text/css">
<link href="css/kjh/hostSearch.css" rel="stylesheet" type="text/css">


<script src="js/jquery.js"></script>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
<script type="text/javascript">
	function addoption(){
		let popUrl = "<%=context%>/HostSearchOpt";
		let popOption = "width = 450px, height=380px, top=300px, left=300px, scrollbars=yes";
		
		openWin=window.open(popUrl,"상세조건검색",popOption);
	}
</script>	

</head>
<body>
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div class="container" style="margin: 0px">
		<!-- 여기 하단으로 -->
			<div class="search">
				<form class="row row-cols-lg-auto g-3 align-items-center" action="">
				  <div class="col-12">
				    <div class="input-group">
				      <div class="input-group-text">@</div>
				        <input type="date" class="form-control" placeholder="시작일" aria-label="Username" aria-describedby="basic-addon1" name="startdate" id="startdate">
				  		<input type="date" class="form-control" placeholder="종료일" aria-label="Username" aria-describedby="basic-addon1" name="enddate" id="enddate">
				    </div>
				  </div>
				
				  <div class="col-12">
					  <div class="input-group">
						   <div class="input-group-text">인원</div>
						    <select class="form-select" name="people" id="people">
						      <option selected="selected" value="one">1</option>
						      <option value="two">2</option>
						      <option value="three">3</option>
						    </select>
			    	  </div>
				  </div>
				  
				  <button type="button" class="btn btn-light" onclick="addoption();">조건추가</button>
				  
				  <div class="col-12">
				    <button type="submit" class="btn btn-primary">검색</button>
				  </div>
				</form>
				
				<div class="list_wrap">
					<ul class="clearfix">
						<c:forEach var="list" items="${hostList }" varStatus="status">
							<li class="listhost">
								<div class="thmimg" >
									<img alt="" src="img/host/${list.thmimg }" width="200" height="200">
								</div>
								<div class="shortintro">
									<a href="HostDetail?farmno=${list.farmno }">${list.shortintro }</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>	 

			<div class="map">
			
			</div> 
			
			
		<!-- 여기 상단으로 -->
		</div>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
	</div>
</body>
</html>



