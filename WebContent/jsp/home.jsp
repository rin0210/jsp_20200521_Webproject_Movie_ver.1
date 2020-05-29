<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><!-- ${fn:length(list) } list의 사이즈 구할때 -->
<!DOCTYPE html>
<html lang="en">

<head>
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
			<header>
				<div class="container">
					<div class="colorlib-navbar-brand">
						<a class="colorlib-logo"
							href="<%=request.getContextPath()%>/javascript:;">Movie<br>
							<span></span></a>
					</div>
					<nav class="nav-main">
						<div class="collapse navbar-collapse"
							id="navbarSupportedContent-4"></div>
						<ul class="navbar-nav-main ml-auto">
							<div class="nav-item-txt-div">
								<li class="nav-item nav-item-txt active"><a
									class="nav-link"
									href="<%=request.getContextPath()%>/javascript:;">홈 <span
										class="sr-only">(current)</span></a></li>
								<li class="nav-item nav-item-txt"><a class="nav-link"
									href="<%=request.getContextPath()%>/MainServlet?command=Movie_Category">영화
								</a></li>
								<li class="nav-item nav-item-txt"><a class="nav-link"
									href="<%=request.getContextPath()%>/MainServlet?command=Movie_MyContents">찜한콘텐츠
								</a></li>
								<li class="nav-item nav-item-txt"><a class="nav-link"
									href="<%=request.getContextPath()%>/blog.html">고객문의 </a></li>
								<li class="nav-item nav-item-txt"><a class="nav-link"
									href="<%=request.getContextPath()%>/MainServlet?command=Movie_Identification">마이페이지&ensp;&ensp;</a>
								</li>
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
									href="<%=request.getContextPath()%>/#"
									class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a></li>
							</div>
						</ul>
					</nav>
				</div>
				<div class="header-search-form ml-auto">
					<form action="#">
						<input type="search" class="form-control form-control-search"
							placeholder="Input your keyword then press enter..." id="search"
							name="search"> <input class="d-none" type="submit"
							value="submit">
					</form>
				</div>
			</header>
		</div>

		<!-- main video -->
		<section id="home" class="video-hero js-fullheight"
			style="height: 700px; background-image: url(images/Florida_Project_2.jpg); background-size: cover; background-position: center center; background-attachment: fixed;">
			<div class="overlay"></div>
			<a class="player"
				data-property="{videoURL:'',containment:'#home', showControls:false, autoPlay:true, loop:true, mute:false, startAt:0, opacity:1, quality:'default'}"></a>
			<div class="container">
				<div
					class="row js-fullheight justify-content-center d-flex align-items-center">
					<div class="col-md-title">
						<div class="text text-left">
							<h2>플로리다 프로젝트</h2>
							<span class="subheading">The Florida Project, 2017</span>
							<h3 class="mb-4">
								"안심하세요 나랑 있으면 안전해요"</br> 플로리다 디즈니월드 건너편 ‘매직 캐슬’에 사는 </br> 귀여운 6살 꼬마 ‘무니’와
								친구들의</br> 디즈니월드 보다 신나는 무지개 어드벤처!
							</h3>
							<div>
								<a href="<%=request.getContextPath()%>/#"
									class="btn btn-primary py-3 px-4 main-btn">▶ 재생</a>
							</div>
							<div>
								<a href="<%=request.getContextPath()%>/#"
									class="btn btn-primary py-3 px-4 main-btn">╋ 찜한 콘텐츠</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- main 4 contents -->
		<section class="ftco-section ftco-no-pt ftco-featured-model">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 col-lg-3">
						<div class="model-entry">
							<a
								href="<%=request.getContextPath()%>/MainServlet?command=Movie_View&num=1">
								<span class="model-img"
								style="background-image: url(images/movie_image_1.jpg);">
							</span>
							</a>
						</div>
					</div>

					<div class="col-md-6 col-lg-3">
						<div class="model-entry">
							<a
								href="<%=request.getContextPath()%>/MainServlet?command=Movie_View&num=25">
								<span class="model-img"
								style="background-image: url(images/movie_image_25.jpg);">
							</span>
							</a>
						</div>
					</div>

					<div class="col-md-6 col-lg-3">
						<div class="model-entry">
							<a
								href="<%=request.getContextPath()%>/MainServlet?command=Movie_View&num=11">
								<span class="model-img"
								style="background-image: url(images/movie_image_11.jpg);">
							</span>
							</a>
						</div>
					</div>

					<div class="col-md-6 col-lg-3">
						<div class="model-entry">
							<a
								href="<%=request.getContextPath()%>/MainServlet?command=Movie_View&num=6">
								<span class="model-img"
								style="background-image: url(images/movie_image_6.jpg);">
							</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>

		<div class="txt-content">오늘의 인기 콘텐츠</div>
		<section class="ftco-section ftco-no-pt ftco-no-pb">
			<div class="container-fluid px-4">
				<div class="row d-flex">
					<c:forEach var="list_Hits" items="${list_Hits }" varStatus="vs"
						begin="0" end="3">
						<div class="col-md-6 col-lg-3 ftco-animate">
							<div class="ranking">
								<h7> <c:out value="${vs.count }" /></h7>
							</div>
							<div class="model-entry">
								<a
									href="<%=request.getContextPath()%>/MainServlet?command=Movie_View&num=${list_Hits.no}">
									<span class="model-img"
									style="background-image: url(${list_Hits.img_1});"> </span>
								</a>
							</div>
						</div>
					</c:forEach>

					<div class="view-more">
						<p>
							<a href="<%=request.getContextPath()%>/model.html"
								class="btn btn-white py-6 px-6">콘텐츠 더보기</a>
						</p>
					</div>
				</div>
			</div>
		</section>

		<c:if test="${fn:length(list_Mine) ne 0}">
			<div class="txt-content">내가 찜한 콘텐츠</div>
			<section class="ftco-section ftco-no-pt ftco-no-pb">
				<div class="container-fluid px-4">
					<div class="row d-flex">
						<c:forEach var="list_Mine" items="${list_Mine }" varStatus="vs"
							begin="0" end="3">
							<div class="col-md-6 col-lg-3 ftco-animate">
								<div class="model-entry">
									<a
										href="<%=request.getContextPath()%>/MainServlet?command=Movie_View&num=${list_Mine.no}">
										<span class="model-img"
										style="background-image: url(${list_Mine.img_1});"> </span>
									</a>
								</div>
							</div>
						</c:forEach>
						<div class="view-more">
							<p>
								<a href="<%=request.getContextPath()%>/model.html"
									class="btn btn-white py-6 px-6">콘텐츠 더보기</a>
							</p>
						</div>
					</div>
				</div>
			</section>
		</c:if>

		<div class="txt-content">새로 올라온 영화</div>
		<section class="ftco-section ftco-no-pt ftco-no-pb">
			<div class="container-fluid px-4">
				<div class="row d-flex">
					<c:forEach var="list_Recent" items="${list_Recent }" varStatus="vs"
						begin="0" end="3">
						<div class="col-md-6 col-lg-3 ftco-animate">
							<div class="model-entry">
								<a
									href="<%=request.getContextPath()%>/MainServlet?command=Movie_View&num=${list_Recent.no }">
									<span class="model-img"
									style="background-image: url(${list_Recent.img_1 });"></span>
								</a>
							</div>
						</div>
					</c:forEach>

					<div class="view-more">
						<p>
							<a href="<%=request.getContextPath()%>/model.html"
								class="btn btn-white py-6 px-6">콘텐츠 더보기</a>
						</p>
					</div>
				</div>
			</div>
		</section>

		<c:if test="${fn:length(list_Review) ne 0}">
			<section class="ftco-section-rc-cmt">
				<div class="container">
					<div class="row justify-content-center">
						<div
							class="col-md-8 mb-5-rc heading-section text-center ftco-animate">
							<!-- <span class="subheading">Blog</span> -->
							<h22 class="mb-4">Recent Comment</h22>
							<p class="mb-5-rc recent-cmt">실시간 추천 코멘트</p>
						</div>
					</div>

					<div class="row d-flex">
						<c:forEach var="list_Review" items="${list_Review }"
							varStatus="vs" begin="0" end="2">
							<div class="col-md-4 d-flex ftco-animate">
								<div class="blog-entry bg-dark align-self-stretch">
									<a
										href="<%=request.getContextPath()%>/MainServlet?command=Movie_View&num=${list_Review.no}"
										class="block-20"
										style="background-image: url('${list_Review.img_1}');"> </a>
									<div class="text p-4 d-block">
										<div class="meta mb-3">
											<div>
												<a href="#">${list_Review.writedate }</a>
											</div>
											<div>
												<a href="#">${list_Review.name }</a>
											</div>
											<div>
												<a href="<#" class="meta-chat"><span class="icon-chat"></span></a>
											</div>
										</div>
										<!-- <h3 class="heading mt-3">
											<a href="<%=request.getContextPath()%>/#">Asia's Next Top
												Model</a>
										</h3> -->
										<p>${list_Review.content }</p>
										<p>
											<a href="#" class="btn btn-primary">Read more</a>
										</p>
									</div>
								</div>
							</div>
						</c:forEach>

					</div>
				</div>
			</section>
		</c:if>


		<div class="txt-content">트렌드 추천</div>
		<section class="ftco-section testimony-section img"
			style="background-image: url(images/bg_2.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div class="row d-md-flex justify-content-center">
					<div class="col-md-8 ftco-animate">
						<div class="carousel-testimony owl-carousel">
							<div class="item">
								<div class="testimony-wrap text-center">
									<div class="user-img mb-5"
										style="background-image: url(images/person_1.jpg)">
										<span
											class="quote d-flex align-items-center justify-content-center">
											<i class="icon-quote-left"></i>
										</span>
									</div>
									<div class="text">
										<p class="mb-5">Far far away, behind the word mountains,
											far from the countries Vokalia and Consonantia, there live
											the blind texts. Separated they live in Bookmarksgrove right
											at the coast of the Semantics, a large language ocean.</p>
										<p class="name">Mike Lewis</p>
										<span class="position">Architect</span>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="testimony-wrap text-center">
									<div class="user-img mb-5"
										style="background-image: url(images/person_2.jpg)">
										<span
											class="quote d-flex align-items-center justify-content-center">
											<i class="icon-quote-left"></i>
										</span>
									</div>
									<div class="text">
										<p class="mb-5">Far far away, behind the word mountains,
											far from the countries Vokalia and Consonantia, there live
											the blind texts. Separated they live in Bookmarksgrove right
											at the coast of the Semantics, a large language ocean.</p>
										<p class="name">Dennis Green</p>
										<span class="position">Architect</span>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="testimony-wrap text-center">
									<div class="user-img mb-5"
										style="background-image: url(images/person_3.jpg)">
										<span
											class="quote d-flex align-items-center justify-content-center">
											<i class="icon-quote-left"></i>
										</span>
									</div>
									<div class="text">
										<p class="mb-5">Far far away, behind the word mountains,
											far from the countries Vokalia and Consonantia, there live
											the blind texts. Separated they live in Bookmarksgrove right
											at the coast of the Semantics, a large language ocean.</p>
										<p class="name">Dennis Green</p>
										<span class="position">Architect</span>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="testimony-wrap text-center">
									<div class="user-img mb-5"
										style="background-image: url(images/person_3.jpg)">
										<span
											class="quote d-flex align-items-center justify-content-center">
											<i class="icon-quote-left"></i>
										</span>
									</div>
									<div class="text">
										<p class="mb-5">Far far away, behind the word mountains,
											far from the countries Vokalia and Consonantia, there live
											the blind texts. Separated they live in Bookmarksgrove right
											at the coast of the Semantics, a large language ocean.</p>
										<p class="name">Dennis Green</p>
										<span class="position">Customer</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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
						<br>
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

		<!-- loader -->
		<div id="ftco-loader" class="show fullscreen">
			<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
					stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
					stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
		</div>

	</div>

	<!-- Modal -->
	<div class="modal fade" id="modalRequest" tabindex="-1" role="dialog"
		aria-labelledby="modalRequestLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modalRequestLabel">Request a Quote</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="#">
						<div class="form-group">
							<label for="appointment_name" class="text-black">Full
								Name</label> <input type="text" class="form-control"
								id="appointment_name">
						</div>
						<div class="form-group">
							<label for="appointment_email" class="text-black">Email</label> <input
								type="text" class="form-control" id="appointment_email">
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="appointment_date" class="text-black">Date</label> <input
										type="text" class="form-control" id="appointment_date">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="appointment_time" class="text-black">Time</label> <input
										type="text" class="form-control" id="appointment_time">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="appointment_message" class="text-black">Message</label>
							<textarea name="" id="appointment_message" class="form-control"
								cols="30" rows="10"></textarea>
						</div>
						<div class="form-group">
							<input type="submit" value="Send Message" class="btn btn-primary">
						</div>
					</form>
				</div>

			</div>
		</div>
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

</body>

</html>