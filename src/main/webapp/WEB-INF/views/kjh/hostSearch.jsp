<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트찾기</title>
<link href="css/kmj/main.css" rel="stylesheet" type="text/css">
<link href="css/kjh/hostSearch.css" rel="stylesheet" type="text/css">
<style type="text/css">
	.container{
		margin-left: 0px;
	    padding-left: 0px;
	}
</style>
<script src="js/jquery.js"></script>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
<script type="text/javascript">
	function addopt(){
		$('#startdate').
	}
</script>	

</head>
<body>
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div class="container">
		<!-- 여기 하단으로 -->
			<div class="search">
				<form class="row row-cols-lg-auto g-3 align-items-center">
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
						    <select class="form-select" name="people" id="inlineFormSelectPref">
						      <option selected="selected" value="one">1</option>
						      <option value="two">2</option>
						      <option value="three">3</option>
						    </select>
			    	  </div>
				  </div>
				  <div class="col-12">
					  <div class="input-group">
						   <div class="input-group-text">지역선택</div>
						    <select class="form-select" name="people" id="inlineFormSelectPref">
						      <option selected>전체</option>
						      <option value="gg">경기도</option>
						      <option value="gw">강원도</option>
						      <option value="cn">충청남도</option>
						      <option value="cb">충청북도</option>
						      <option value="gn">경상남도</option>
						      <option value="gb">경상북도</option>
						      <option value="jn">전라남도</option>
						      <option value="jb">전라북도</option>
						      <option value="jj">제주도</option>
						    </select>
			    	  </div>
				  </div>
				  <div class="col-12">
					  <div class="input-group">
						   <div class="input-group-text">경지규모</div>
						    <select class="form-select" name="people" id="inlineFormSelectPref">
						      <option selected>전체</option>
						      <option value="uf">0.5ha 미만</option>
						      <option value="uo">0.5-1.0ha 미만</option>
						      <option value="uof">1.0-1.5ha 미만</option>
						      <option value="utw">1.5-2.0ha 미만</option>
						      <option value="ut">2.0-3.0ha 미만</option>
						      <option value="ufi">3.0-5.0ha 미만</option>
						      <option value="us">5.0-7.0ha 미만</option>
						      <option value="utt">7.0-10.0ha 미만</option>
						    </select>
			    	  </div>
				  </div>
				  <div class="col-12">
					  <div class="input-group">
						   <div class="input-group-text">농업형태</div>
						    <select class="form-select" name="people" id="inlineFormSelectPref">
						      <option selected>전체</option>
						      <option value="fruit">과수업</option>
						      <option value="rice">논농업</option>
						      <option value="field">밭농업</option>
						      <option value="cow">축산업</option>
						      <option value="mach">농기계</option>
						      <option value="smart">스마트팜</option>
						    </select>
			    	  </div>
				  </div>
				  <div class="col-12">
					  <div class="input-group">
						   <div class="input-group-text">농사규모</div>
						    <select class="form-select" name="people" id="inlineFormSelectPref">
						      <option selected>전체</option>
						      <option value="st">상업농 상</option>
						      <option value="sm">상업농 중</option>
						      <option value="su">상업농 하</option>
						      <option value="self">자급자족</option>
						      <option value="city">도시농업</option>
						      <option value="half">반농</option>
						    </select>
			    	  </div>
				  </div>
				  <div class="col-12">
					  <div class="input-group">
						   <div class="input-group-text">농사경력</div>
						    <select class="form-select" name="people" id="inlineFormSelectPref">
						      <option selected>전체</option>
						      <option value="five">5년 이하</option>
						      <option value="ten">10년 이하</option>
						      <option value="fifteen">15년 이하</option>
						      <option value="twenty">20년 이하</option>
						      <option value="thirty">30년 이하</option>
						    </select>
			    	  </div>
				  </div>
				  <div class="col-12">
					  <div class="input-group">
						   <div class="input-group-text">호스트 연령</div>
						    <select class="form-select" name="people" id="inlineFormSelectPref">
						      <option selected>전체</option>
						      <option value="tw">20</option>
						      <option value="th">30</option>
						      <option value="fr">40</option>
						      <option value="fif">50</option>
						      <option value="sixt">60</option>
						      <option value="sevt">70이상</option>
						    </select>
			    	  </div>
				  </div>
				  <div class="col-12">
					  <div class="input-group">
						   <div class="input-group-text">농법</div>
						    <select class="form-select" name="people" id="inlineFormSelectPref">
						      <option selected>전체</option>
						      <option value="org">유기농</option>
						      <option value="non">무기농</option>
						      <option value="nor">관행농</option>
						      <option value="ext">그외</option>
						    </select>
			    	  </div>
				  </div>
				  
				  <button type="button" class="btn btn-light">조건추가</button>
				  
				  <div class="col-12">
				    <button type="submit" class="btn btn-primary">검색</button>
				  </div>
				</form>
			</div>	 


			<div class="map">
			
			</div> 
			
			
		<!-- 여기 상단으로 -->
		</div>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
	</div>
</body>
</html>