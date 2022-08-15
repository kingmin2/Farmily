<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farmily</title>
<!-- <link href="css/kmj/main.css" rel="stylesheet" type="text/css"> -->
<link href="https://fonts.googleapis.com/css2?family=Mochiy+Pop+One&display=swap" rel="stylesheet">
<link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
<link rel="stylesheet" href="css/ljj/style.css" />
</head>
<body>
	<div class="wrapper">
		<%-- <jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include> --%>
		
			<!-- 여기 하단으로 -->
<div class="wrapper d-flex align-items-stretch">
      <nav id="sidebar">
        <div class="custom-menu">
          <button
            type="button"
            id="sidebarCollapse"
            class="btn btn-primary"
          ></button>
        </div>
        <div
          class="img bg-wrap text-center py-4"
          style="background-image: url(images/bg_1.jpg)"
        >
          <div class="user-logo">
         	 <a class="navbar-brand-admin" id="home" href="admin">FARMily</a>
            <!-- <div
              class="img"
              style="background-image: url(images/logo.jpg)"
            ></div> -->
            <h3>관리자 페이지</h3>
          </div>
        </div>
        <ul class="list-unstyled components mb-5">
          <li class="active">
            <a href="admin/users"><span class="fa fa-home mr-3"></span> 회원 정보</a>
          </li>
          <li>
            <a href="admin/farms"
              ><span class="fa fa-download mr-3 notif"
                ><small class="d-flex align-items-center justify-content-center"
                  >5</small
                ></span
              >
              농장 관리</a
            >
          </li>
          <li>
            <a href="admin/notice"><span class="fa fa-gift mr-3"></span> 공지 사항</a>
          </li>
          <li>
            <a href="admin/ask"><span class="fa fa-trophy mr-3"></span> 1:1문의</a>
          </li>
          <li>
            <a href="#" onclick="logout()"><span class="fa fa-sign-out mr-3"></span> 로그아웃</a>
          </li>
        </ul>
      </nav>

      <!-- Page Content  -->
      <div id="content" class="p-4 p-md-5 pt-5">
      
      <div class="col-md-8 mx-auto">
      
      <h1>안녕하세요 관리자페이지입니다.</h1>
      
      
      <div class="row mb-2">
    <div class="col-md-6">
      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <span>회원관리</span>
      </div>
    </div>
    <div class="col-md-6">
      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <span>농장관리</span>
      </div>
    </div>
    <div class="col-md-6">
      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <span>공지사항</span>
      </div>
    </div>
    <div class="col-md-6">
      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <span>1:1문의</span>
      </div>
    </div>
  </div>
      
      </div>
      
      </div>
    </div>

			<!-- 여기 상단으로 -->
		<%-- <jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include> --%>
	</div>
	<script src="js/ljj/jquery.min.js"></script>
	<script src="js/ljj/popper.js"></script>
	<script src="js/ljj/bootstrap.min.js"></script>
	<script src="js/ljj/main.js"></script>
</body>
</html>