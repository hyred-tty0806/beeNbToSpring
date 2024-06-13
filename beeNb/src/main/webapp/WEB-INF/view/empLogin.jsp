<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- 사용자 인증 코드 -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	<title>관리자 로그인</title>
	<link href="/BeeNb/css/style.css" rel="stylesheet" type="text/css">
		 <style>
          .link-container {
            display: flex;
            justify-content: center;
            gap: 20px; /* 링크들 사이의 간격 조정 */
            margin-top: 10px;
        }
        .link-container a {
            text-decoration: none;
            color: #ffc107; /* 텍스트 색상 */
            font-size: 15px; /* 폰트 크기 */
        }
        .link-container a:hover {
            color: #e0a800; /* 호버 시 더 진한 노란색 */
        }
    </style>
</head>
<body>
	<div class="container">
		<!-- 관리자 네비게이션 바 -->
		<link rel="icon" href="/BeeNb/img/beeFavicon.ico">
			<nav class="navbar navbar-expand-lg bg-white sticky-top">
			  <div class="container-fluid">
			    <a class="navbar-brand" href="/BeeNb/emp/empRoomList.jsp">
			   	    <img src="/BeeNb/img/bee.png" class="h-100 d-inline-block" style="width: 30px; height: 25px;">
			    </a>
			    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			      <span class="navbar-toggler-icon"></span>
			    </button>
			    <div class="collapse navbar-collapse" id="navbarSupportedContent">
			      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			        <li class="nav-item">
			          <a class="nav-link active" aria-current="page" href="/BeeNb/emp/empRoomList.jsp">BeeNb</a>
			        </li>
			      </ul>
			      <div class="d-flex" role="search">
				      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				        <li class="nav-item">
			              <a class="nav-link active" aria-current="page" href="/BeeNb/emp/empRoomList.jsp">당신의 공간을 비앤비 하세요</a>
				        </li>
				      </ul>
			        <li class="navbar-nav me-auto mb-2 mb-lg-0 nav-item dropdown">
			          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
			            메뉴
			          </a>
			          <ul class="dropdown-menu">
			            <li><a class="dropdown-item" href="/BeeNb/emp/empOne.jsp"> 
			            </a></li>
			            <hr>
			            <li><a class="dropdown-item" href="/BeeNb/emp/empList.jsp">관리자리스트</a></li>
			            <li><a class="dropdown-item" href="/BeeNb/emp/revenueList.jsp">수익현황리스트</a></li>
			            <li><a class="dropdown-item" href="/BeeNb/emp/customerList.jsp">회원리스트</a></li>
			            <li><a class="dropdown-item" href="/BeeNb/emp/pendingRoomList.jsp">숙소심사</a></li>
			            <li><a class="dropdown-item" href="/BeeNb/emp/themeList.jsp">테마관리</a></li>
			            <li><a class="dropdown-item" href="/BeeNb/emp/vocList.jsp">VOC관리</a></li>
			            <hr>
			            <li><a class="dropdown-item" href="/BeeNb/emp/empLogoutAction.jsp">로그아웃</a></li>
			          </ul>
			        </li>
			      </div>
			    </div>
			  </div>
			</nav>
			<!-- 관리자 네비게이션 바 -->
		<div class="row mt-5" style="height: 65vh;">
			<div class="col"></div>
			<div class="col-6 position-relative">
				<div class="position-absolute top-50 start-50 translate-middle w-100">
					<div class="row">
						<h1>관리자 로그인 </h1>
					</div>
					<div class="alert alert-danger" role="alert"></div>
					<div class="alert alert-success" role="alert"></div>
					<form action="" method="post">
						<div class="row mt-3">
							<div class="col-3">
								<label for="empNo" class="form-label">사번</label>
							</div>
							<div class="col-6">
								<input type="number" class="w-100 form-control" value="" name="empNo" id="empNo" required="required">
							</div>
							<div class="col">
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-3">
								<label for="empPw" class="form-label">비밀번호</label>
							</div>
							<div class="col-6">
								<input type="password" class="w-100 form-control" value="" name="empPw" id="empPw" required="required">
							</div>
							<div class="col">
								<button type="submit" class="btn btn-outline-warning">로그인</button>									
							</div>
						</div>
						<div class="row mt-3">
							<div class="col">
								<div class="d-flex justify-content-center link-container">
									<a class="text-decoration-none me-3" href="/BeeNb/emp/empResetPwForm.jsp">비밀번호 초기화</a>
									<a class="text-decoration-none" href="/BeeNb/customer/customerLoginForm.jsp">고객 로그인</a>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col"></div>
		</div>
		<!-- 푸터  -->
		<footer class="py-3 my-4">
			<ul class="nav justify-content-center border-bottom pb-3 mb-3">
				<li class="nav-item"><a href="/BeeNb/customer/customerRoomList.jsp" class="nav-link px-2 text-muted">Home</a></li>
				<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
				<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
				<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
				<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
			</ul>
			<p class="text-center text-muted">&copy; 2024 BeeNb Company, Inc 오승엽, 김태리, 박수지, 정혁희, 이용훈</p>
		</footer>
		<!-- 푸터  -->
	</div>
</body>
</html>