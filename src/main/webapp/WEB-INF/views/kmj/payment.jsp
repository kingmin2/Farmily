<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farmily</title>
<link href="css/kmj/membership.css" rel="stylesheet" type="text/css">
</head>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>


 
<body>
	<div class="wrapper">
	<jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
		<div class="container">
			<jsp:include page="/WEB-INF/views/main/myPageInclude.jsp"></jsp:include>
			<!-- 여기 하단으로 -->
			<input type="hidden" name="userno" id="userno" value="${userno }">
			<table>
				<tr>
					<td class="payment">결제방법</td> 
                    <td class="payment-1">카카오페이<input type="radio" name="pay" id="kakao" value="Kakaopay"><br></td>
                    <td class="payment-2">토스<input type="radio" name="pay" id="toss" value="Toss"></td>
            		<td class="payment-3">페이코<input type="radio" name="pay" id="payco" value="Payco"></td>
            	</tr>
            </table>  
			<button type="button" id="paybtn" onclick="checkButton()"> 결제하기 </button>
			<!-- 여기 상단으로 -->
		</div> 
	</div>
<script type="text/javascript"> 

	function checkButton() {    
    	if(document.getElementById('kakao').checked) {   
        	payBy = 'kakaopay'
    	} else if(document.getElementById('toss').checked) {   
    		payBy = 'tosspay'     
    	} else if(document.getElementById('payco').checked) {   
    		payBy = 'payco'     
    	}
     	
    	const btn2 = document.querySelector('#paybtn');        
    	const radioButtons2 = document.querySelectorAll('input[name="pay"]');
    	btn2.addEventListener("click", () => {
        	let selectedPayment;
	        for (const radioButton2 of radioButtons) {
	            if (radioButton2.checked) {
	               selectedPayment = radioButton2.value;
	               break;
	            }
	        }
    	}); 
    
    	var IMP = window.IMP; 
  		IMP.init('imp40544570'); 
  	 
  		IMP.request_pay({
     		pg: payBy,
     		pay_method: 'card',
     		merchant_uid: 'merchant_' + new Date().getTime(),
     		name: 'Product',
     		amount: 10000,
     		buyer_name: 'farmily',
     		buyer_postcode: '123-456',
     	}, function (rsp) {
        	console.log(rsp);
	     	if (rsp.success) {
	     		
	        	var msg = '결제가 완료되었습니다.';        	
	        	msg += '결제 금액 : ' + rsp.paid_amount;
	        	alert(msg);
	        	goPage();
	        	
			} else {
        		var msg = '결제에 실패하였습니다.';
        		msg += '에러내용 : ' + rsp.error_msg;
        		alert(msg);
     		}
     		
  		});
	}
	
	function goPage() {
		var userno = $("#userno").val();
		location.href="membershipInfo?userno="+userno;
	}
</script>
</body>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
</html>