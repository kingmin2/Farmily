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
<script type="text/javascript" src="js/kjh/MarkerClustering.js"></script>

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
					var map = new naver.maps.Map("map", {
				        zoom: 6,
				        center: new naver.maps.LatLng(36.2253017, 127.6460516),
				        zoomControl: true,
				        zoomControlOptions: {
				            position: naver.maps.Position.TOP_LEFT,
				            style: naver.maps.ZoomControlStyle.SMALL
				        }
				    });

					function api(){
						return data1= fetch('http://localhost:8988/restApi/hostList')
								 			.then(res => res.json())
								  			.then(json => json.maps);
					}
				    
				    const promise = api();
				    const getData=()=>{
				    		promise.then((data)=>{
				    		console.log(data);
				    		console.log(data.length);
				    		
						    var markers = [];
						    
						    for (var i = 0, ii = data.length; i < ii; i++) {
						        var spot = data[i],
						            latlng = new naver.maps.LatLng(spot.lat, spot.lng),
						            marker = new naver.maps.Marker({
						                position: latlng,
						                draggable: true
						            });

						        markers.push(marker);
						    }
						    
						    
						    
						    var htmlMarker1 = {
						            content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(/img/cluster-marker-1.png);background-size:contain;"></div>',
						            size: N.Size(40, 40),
						            anchor: N.Point(20, 20)
						        },
						        htmlMarker2 = {
						            content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(/img/cluster-marker-2.png);background-size:contain;"></div>',
						            size: N.Size(40, 40),
						            anchor: N.Point(20, 20)
						        },
						        htmlMarker3 = {
						            content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(/img/cluster-marker-3.png);background-size:contain;"></div>',
						            size: N.Size(40, 40),
						            anchor: N.Point(20, 20)
						        },
						        htmlMarker4 = {
						            content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(/img/cluster-marker-4.png);background-size:contain;"></div>',
						            size: N.Size(40, 40),
						            anchor: N.Point(20, 20)
						        },
						        htmlMarker5 = {
						            content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(/img/cluster-marker-5.png);background-size:contain;"></div>',
						            size: N.Size(40, 40),
						            anchor: N.Point(20, 20)
						        };
						    
						    var markerClustering = new MarkerClustering({
						        minClusterSize: 2,
						        maxZoom: 13,
						        map: map,
						        markers: markers,
						        disableClickZoom: false,
						        gridSize: 120,
						        icons: [htmlMarker1, htmlMarker2, htmlMarker3, htmlMarker4, htmlMarker5],
						        indexGenerator: [10, 100, 200, 500, 1000],
						        stylingFunction: function(clusterMarker, count) {
						            $(clusterMarker.getElement()).find('div:first-child').text(count);
						        }
						    });
						    
						    console.log(markers);
				    	});
				    };
				    
				    getData();

				</script>
			</div> 
		<!-- 여기 상단으로 -->
		</div>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
	</div>
</body>
</html>



