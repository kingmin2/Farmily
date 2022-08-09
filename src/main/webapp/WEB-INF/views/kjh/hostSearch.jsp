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
	
<script type="text/javascript">
	function addoption(){
		let popUrl = "<%=context%>/HostSearchOpt";
		let popOption = "width = 450px, height=380px, top=300px, left=300px, scrollbars=yes";
		
		openWin=window.open(popUrl,"상세조건검색",popOption);
	}
</script>	

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=4sz4wcsnub"></script>

</head>
<body>
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div class="container-app">
		<!-- 여기 하단으로 -->
		<div class="row row-cols-lg-auto g-3 align-items-center"  style="width: 60%;margin-left: 10px;" >
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
			  <div class="search">
				<div class="list_wrap">
					<ul class="clearfix">
						<c:forEach var="list" items="${hostList }" varStatus="status">
							<li class="listhost">
								<div id="thmimg" >
									<img alt="" src="img/host/${list.thmimg }">
								</div>
								<div id="shortintro">
									<a href="HostDetail?farmno=${list.farmno }">${list.shortintro }</a>
								</div>
								<div id="wish">
									<button class="btnwish"><img alt="" src="img/emptyheart.png"></button>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>	 
		</div>	
			

			<div class="map_wrap">
				<div id="map"  style="width:100%;height:100%;"></div>
				<script>
					
					var hstList=JSON.parse('${listM}');
					
					for(var k in hstList ){
						var $obj=hstList[k];
						var farm=$obj.farmno;
						var lat=$obj.lat;
						var lng=$obj.lng;
						farmList.push(farm);
						latList.push(lat);
						lngList.push(lng);
					}
					
					// 주소리스트
					farmList.forEach(function())
			        const locations = [
			            { place:"건대입구역", lat: 37.539922, lng: 127.070609 },
			            { place:"어린이대공원역", lat: 37.547263, lng: 127.074181 },
			        ];

					var mapOptions = {
					    center: new naver.maps.LatLng(37.3595704, 127.105399),
					    zoom: 10
					};
					
					var map = new naver.maps.Map('map', mapOptions);
					
			        for (var i = 0; i < locations.length; i++) {
		                var marker = new naver.maps.Marker({
		                    map: map,
		                    title: locations[i].place,
		                    position: new naver.maps.LatLng(locations[i].lat, locations[i].lng),
		                });
		            }
					
				</script>
			</div> 
		<!-- 여기 상단으로 -->
		</div>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
	</div>
</body>
</html>



