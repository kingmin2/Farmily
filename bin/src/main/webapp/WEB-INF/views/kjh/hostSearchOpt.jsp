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
<title>상세조건검색</title>
<script src="js/jquery.js"></script>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<script type="text/javascript">
	function popSubmit(){
		var startdate=opener.$('#startdate').val();
		var endate=opener.$('#endate').val();
		var people=opener.$('#people').val();
		
		window.opener.name="hostSearch";
		document.frm.target="hostSearch";
		document.frm.action="<%=context%>HostSearchOptSubmit?startdate="+startdate+"&endate"+endate"&people"+people;
		document.frm.submit();
	}
	
</script>	
	
	
</head>
<body>
<form action="HostSearchOptSubmit" method="post" name="frm">
	<div class="region">
		<h4>지역</h4>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="gg" name="region" id="regionchkgg">
		  <label class="form-check-label" for="regionchkgg">
		    경기도
		  </label>
		</div>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="gw" name="region" id="regionchkgw">
		  <label class="form-check-label" for="regionchkgw">
		    강원도
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="cn" name="region" id="regionchkcn">
		  <label class="form-check-label" for="regionchkcn">
		    충청남도
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="cb" name="region" id="regionchkcb">
		  <label class="form-check-label" for="regionchkcb">
		    충청북도
		  </label>
		</div>		
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="gn" name="region" id="regionchkgn">
		  <label class="form-check-label" for="regionchkgn">
		    경상남도
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="gb" name="region" id="regionchkgb">
		  <label class="form-check-label" for="regionchkgb">
		    경상북도
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="jn" name="region" id="regionchkjn">
		  <label class="form-check-label" for="regionchkjn">
		    전라남도
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="jj" name="region" id="regionchkjj">
		  <label class="form-check-label" for="regionchkjj">
		    제주도
		  </label>
		</div>		
	</div>				  

	<div class="scale">
		<h4>경지규모</h4>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="uf" name="scale" id="scaleuf">
		  <label class="form-check-label" for="scaleuf">
		    0.5ha 미만
		  </label>
		</div>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="uo" name="scale" id="scaleuo">
		  <label class="form-check-label" for="scaleuo">
		    0.5-1.0ha 미만
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="uof" name="scale" id="scaleuof">
		  <label class="form-check-label" for="scaleuof">
		    1.0-1.5ha 미만
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="utw" name="scale" id="scaleutw">
		  <label class="form-check-label" for="scaleutw">
		    1.5-2.0ha 미만
		  </label>
		</div>		
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="ut" name="scale" id="scaleut">
		  <label class="form-check-label" for="scaleut">
		    2.0-3.0ha 미만
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="ufi" name="scale" id="scaleufi">
		  <label class="form-check-label" for="scaleufi">
		    3.0-5.0ha 미만
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="us" name="scale" id="scaleus">
		  <label class="form-check-label" for="scaleus">
		    5.0-7.0ha 미만
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="utt" name="scale" id="scaleutt">
		  <label class="form-check-label" for="scaleutt">
		    7.0-10.0ha 미만
		  </label>
		</div>		
	</div>		

	<div class="type">
		<h4>농사규모</h4>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="st" name="type" id="typest">
		  <label class="form-check-label" for="typest">
		    상업농 상
		  </label>
		</div>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="sm" name="type" id="typesm">
		  <label class="form-check-label" for="typesm">
		    상업농 중
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="su" name="type" id="typesu">
		  <label class="form-check-label" for="typesu">
		    상업농 하
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="self" name="type" id="typeself">
		  <label class="form-check-label" for="typeself">
		    자급자족
		  </label>
		</div>		
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="city" name="type" id="typecity">
		  <label class="form-check-label" for="typecity">
		    도시농업
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="half" name="type" id="typehalf">
		  <label class="form-check-label" for="typehalf">
		    반농
		  </label>
		</div>	
	</div>


	<div class="career">
		<h4>농사경력</h4>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="five" name="career" id="careerfive">
		  <label class="form-check-label" for="careerfive">
		    5년 이하
		  </label>
		</div>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="ten" name="career" id="careerten">
		  <label class="form-check-label" for="careerten">
		    10년 이하
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="fifteen" name="career" id="careerfifteen">
		  <label class="form-check-label" for="careerfifteen">
		    15년 이하
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="twenty" name="career" id="careertwenty">
		  <label class="form-check-label" for="careertwenty">
		    20년 이하
		  </label>
		</div>		
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="thirty" name="career" id="careerthirty">
		  <label class="form-check-label" for="careerthirty">
		    30년 이하
		  </label>
		</div>	
	</div>

	<div class="age">
		<h4>농사경력</h4>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="tw" name="age" id="agetw">
		  <label class="form-check-label" for="agetw">
		    20대
		  </label>
		</div>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="th" name="age" id="ageth">
		  <label class="form-check-label" for="ageth">
		    30대
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="fr" name="age" id="agefr">
		  <label class="form-check-label" for="agefr">
		    40대
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="fif" name="age" id="agefif">
		  <label class="form-check-label" for="agefif">
		    50대
		  </label>
		</div>		
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="sixt" name="age" id="agesixt">
		  <label class="form-check-label" for="agesixt">
		    60대
		  </label>
		</div>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="sevt" name="age" id="agesevt">
		  <label class="form-check-label" for="agesevt">
		    70대이상
		  </label>
		</div>			
	</div>

	<div class="way">
		<h4>농사경력</h4>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="org" name="way" id="wayorg">
		  <label class="form-check-label" for="wayorg">
		    유기농
		  </label>
		</div>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="non" name="way" id="waynon">
		  <label class="form-check-label" for="waynon">
		    무기농
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="nor" name="way" id="waynor">
		  <label class="form-check-label" for="waynor">
		    관행농
		  </label>
		</div>	
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="ext" name="way" id="wayext">
		  <label class="form-check-label" for="wayext">
		    그외
		  </label>
		</div>		
	</div>
</form>
<input type="button" onclick="popSubmit();" value="검색">

</body>
</html>