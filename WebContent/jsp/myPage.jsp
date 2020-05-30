<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Movie</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="<%=request.getContextPath()%>/https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/https://fonts.googleapis.com/css?family=Vidaloka"
	rel="stylesheet">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/animate.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/magnific-popup.css">

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/aos.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/ionicons.min.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jquery.timepicker.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/flaticon.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/icomoon.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">

</head>

<body>
	<!--카테고리 메뉴-->
	<div class="page">
		<nav id="colorlib-main-nav" role="navigation">
			<a href="<%=request.getContextPath()%>/#"
				class="js-colorlib-nav-toggle colorlib-nav-toggle active"><i></i></a>
			<div class="js-fullheight colorlib-table">
				<!--<div class="img" style="background-image: url(images/image_4.jpg);"></div>-->
				<div class="colorlib-table-cell js-fullheight">
					<div class="row no-gutters">
						<div class="col-md-12 text-center">
							<h1 class="mb-4 page-logo logo">
								카테고리<br> <span>
									<hr color="white">
								</span>
							</h1>
							<ul>
								<li><a href="<%=request.getContextPath()%>/javascript:;"><span>로맨틱코미디</span></a></li>
								<li><a href="<%=request.getContextPath()%>/javascript:;"><span>코미디</span></a></li>
								<li><a href="<%=request.getContextPath()%>/javascript:;"><span>어린이/가족</span></a></li>
								<li><a href="<%=request.getContextPath()%>/javascript:;"><span>음악/뮤지컬</span></a></li>
								<li><a href="<%=request.getContextPath()%>/javascript:;"><span>드라마</span></a></li>
								<li><a href="<%=request.getContextPath()%>/javascript:;"><span>로맨스</span></a></li>
								<li><a href="<%=request.getContextPath()%>/javascript:;"><span>판타지</span></a></li>
								<li><a href="<%=request.getContextPath()%>/javascript:;"><span>액션</span></a></li>
								<li><a href="<%=request.getContextPath()%>/javascript:;"><span>SF</span></a></li>
								<li><a href="<%=request.getContextPath()%>/javascript:;"><span>스릴러</span></a></li>
								<li><a href="<%=request.getContextPath()%>/javascript:;"><span>공포</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>

		<!--상단메뉴-->
		<div id="colorlib-page">
			<header class="header-mycontents">
				<div class="container">
					<div class="colorlib-navbar-brand">
						<a class="colorlib-logo"
							href="<%=request.getContextPath()%>/MainServlet?command=Movie_Home">Movie<br>
							<span></span></a>
					</div>
					<nav class="nav-main">
						<div class="collapse navbar-collapse"
							id="navbarSupportedContent-4"></div>
						<ul class="navbar-nav-main ml-auto">
							<div class="nav-item-txt-div">
								<li class="nav-item nav-item-txt active"><a
									class="nav-link"
									href="<%=request.getContextPath()%>/MainServlet?command=Movie_Home">홈
										<span class="sr-only">(current)</span>
								</a></li>
								<li class="nav-item nav-item-txt"><a class="nav-link"
									href="<%=request.getContextPath()%>/MainServlet?command=Movie_Category">영화
								</a></li>
								<li class="nav-item nav-item-txt"><a class="nav-link"
									href="<%=request.getContextPath()%>/MainServlet?command=Movie_MyContents">찜한콘텐츠
								</a></li>
								<li class="nav-item nav-item-txt"><a class="nav-link"
									href="<%=request.getContextPath()%>/blog.html">고객문의 </a></li>
								<li class="nav-item nav-item-txt"><a class="nav-link"
									href="javascript:;">마이페이지&ensp;&ensp;</a></li>
							</div>
							<!-- Search Form -->
						<div class="nav-item-img-div">
								<li class="nav-item-img1">
									<!-- Search btn -->
									<div id="searchbtn">
										<img id="searchimg"
											src="<%=request.getContextPath()%>/images/search.png" alt="">
									</div>
								</li>
								<li class="nav-item-img2"><a
									href="MainServlet?command=Movie_Search"
									class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a></li>
							</div>
						</ul>
					</nav>
				</div>
				<div class="header-search-form ml-auto">
					<form action="MainServlet?command=Movie_Search" method="post"
						name="searchForm">
						<input type="search" class="form-control form-control-search"
							placeholder="Input your keyword then press enter..." id="search"
							name="search"> <input class="d-none" type="submit"
							value="submit">
					</form>
				</div>
			</header>
		</div>

		<section class="ftco-section-catogory-mypage ftco-no-pb">
			<div class="ftco-section-mypage">
				<div class="container">
					<div class="row justify-content-center mypage-space">
						<div class="col-md-1010">
							<div
								class="row model-detail d-mf-flex align-items-center align-items-center-up">
								<div class="col-md-6 ftco-animate">
									<div class="carousel-model owl-carousel">
										<div class="items">
											<!--<c:if test="${mdto.img eq null }">
												<img
													src="<%=request.getContextPath()%>/images/profile_images/profile_1.jpg"
													width="450px" height="450px" class="img-fluid-profile"
													alt="Image">
											</c:if>-->
											<!--<c:if test="${mdto.img ne null }">-->
												<img src="<%=request.getContextPath()%>/images/profile_images/${mdto.img }"
													width="450px" height="450px" class="img-fluid-profile"
													alt="Image">
											<!--</c:if>-->
										</div>
									</div>
								</div>
								<div class="col-md-1"></div>
								<div class="col-md-5 model-info ftco-animate">
									<c:if test="${mdto.lev==2}" >
									<span>Basic 회원</span>
									</c:if>
									<c:if test="${mdto.lev==3}" >
									<span>Standard 회원</span>
									</c:if>
									<c:if test="${mdto.lev==4}" >
									<span>Premium 회원</span>
									</c:if>
									<h3 class="mb-4">${mdto.name }</h3>
									<a href="#"
										class="btn btn-primary py-3 px-4 btn-page"
										onclick="profileUpdate()">프로필 수정</a> <a
										href="<%=request.getContextPath()%>/jsp/ticket.jsp"
										class="btn btn-primary py-3 px-4 btn-page">이용권 구매</a>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="ftco-section-mypage-2">
			<div class="container-mypage">
				<div class="row-mypage">
					<div class="col-md-3">
						<div class="services ftco-animate text-center">
							<div class="info mt-4">
								<h3 class="mb-4">코멘트</h3>
								<p>-</p>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="services ftco-animate text-center">
							<div class="info mt-4">
								<h3 class="mb-4">찜목록</h3>
								<p>-</p>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="services ftco-animate text-center">
							<div class="info mt-4">
								<h3 class="mb-4">평가수</h3>
								<p>-</p>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			<div class="logout-div">
				<a
					href="<%=request.getContextPath()%>/MainServlet?command=Movie_Logout"
					class="btn btn-primary py-33 px-44 btn-page-logout">로그아웃</a>
			</div>
		</section>

		<footer class="ftco-footer ftco-section img">
			<div class="overlay"></div>
			<div class="col-md-2">
				<div class="ftco-footer-widget">
					<!--<h2 class="ftco-heading-2">Site Links</h2>-->
					<ul class="list-unstyled">
						<li><a href="<%=request.getContextPath()%>/#"
							class="py-2 d-block">Home</a></li>
						<li class="py-2-line d-block">|</li>
						<li><a href="<%=request.getContextPath()%>/javascript:;"
							class="py-2 d-block">Category</a></li>
						<li class="py-2-line d-block">|</li>
						<li><a href="<%=request.getContextPath()%>/javascript:;"
							class="py-2 d-block">My Contents</a></li>
						<li class="py-2-line d-block">|</li>
						<li><a href="<%=request.getContextPath()%>/javascript:;"
							class="py-2 d-block">Customer Service Center</a></li>
						<li class="py-2-line d-block">|</li>
						<li><a href="<%=request.getContextPath()%>/javascript:;"
							class="py-2 d-block">My Page</a></li>
						</br>
					</ul>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12 text-center">
					<p class="footer-last">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with by <a
							href="<%=request.getContextPath()%>/javascript:;" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</footer>
	</div>

	<!--script-->
	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.easing.1.3.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.waypoints.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.stellar.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/js/jquery.magnific-popup.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/aos.js"></script>
	<script
		src="<%=request.getContextPath()%>/js/jquery.animateNumber.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/scrollax.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/js/jquery.mb.YTPlayer.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/bootstrap-datepicker.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.timepicker.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="<%=request.getContextPath()%>/js/google-map.js"></script>
	<script src="<%=request.getContextPath()%>/js/main.js"></script>
	<script src="<%=request.getContextPath()%>/js/script.js"></script>
</body>

</html>