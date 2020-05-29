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

<style>
.star-input>.input, .star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	display: inline-block;
	vertical-align: middle;
	background: url('images/grade_img_1.png') no-repeat;
}

.star-input {
	display: inline-block;
	white-space: nowrap;
	width: 225px;
	height: 40px;
	padding: 14px;
	line-height: 30px;
}

.star-input>.input {
	display: inline-block;
	width: 150px;
	background-size: 150px;
	height: 28px;
	white-space: nowrap;
	overflow: hidden;
	position: relative;
}

.star-input>.input>input {
	position: absolute;
	width: 1px;
	height: 1px;
	opacity: 0;
}

star-input>.input.focus {
	outline: 1px dotted #ddd;
}

.star-input>.input>label {
	width: 30px;
	height: 0;
	padding: 28px 0 0 0;
	overflow: hidden;
	float: left;
	cursor: pointer;
	position: absolute;
	top: 0;
	left: 0;
}

.star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	background-size: 150px;
	background-position: 0 bottom;
}

.star-input>.input>label:hover ~label {
	background-image: none;
}

.star-input>.input>label[for="p1"] {
	width: 30px;
	z-index: 5;
}

.star-input>.input>label[for="p2"] {
	width: 60px;
	z-index: 4;
}

.star-input>.input>label[for="p3"] {
	width: 90px;
	z-index: 3;
}

.star-input>.input>label[for="p4"] {
	width: 120px;
	z-index: 2;
}

.star-input>.input>label[for="p5"] {
	width: 150px;
	z-index: 1;
}

.star-input>output {
	display: inline-block;
	width: 60px;
	margin-left: -1.5em;
	margin-top: 12px;
	font-size: 16px;
	text-align: right;
	vertical-align: middle;
}
</style>

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
							<h1 class="mb-4 page-logo">
								<class="logo">카테고리<br>
								<span>
									<hr color="white">
								</span> </a>
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
									href="<%=request.getContextPath()%>/MainServlet?command=Movie_Identification">마이페이지&ensp;&ensp;</a></li>
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

		<!-- video -->
		<section class="ftco-section-catogory-view ftco-no-pb"
			style="background-image: url(${mdto.img_2 }); background-repeat: no-repeat; background-position: center center; background-attachment:fixed;">
			<div class="site-blocks-cover overlay inner-page-cover">
				<div class="container">
					<div
						class="row align-items-center justify-content-center text-center">

						<div class="col-md-7" data-aos="fade-up" data-aos-delay="400">
							<a
								href="<%=request.getContextPath()%>/https://vimeo.com/channels/staffpicks/93951774"
								class="play-single-big mb-4 d-inline-block popup-vimeo"><span
								class="icon-play"></span></a>
						</div>
					</div>
				</div>
			</div>
		</section>

		<main>
			<section class="contents-view-detail contents-view-detail-1">
				<div class="contents-view-detail-outline">
					<div class="contents-view-detail-title">${mdto.title }</div>
					<span class="contents-view-detail-span">${mdto.year }</span> <span
						class="contents-view-detail-span">${mdto.age }</span> <span
						class="contents-view-detail-span">${mdto.time }</span>
				</div>
				<div class="contents-view-detail-explain">${mdto.content }</div>

				<c:if test="${bookMarkChk==1 }">
					<!-- 찜x -->
					<div>
						<a
							href="<%=request.getContextPath()%>/MainServlet?command=Movie_Bookmark&num=${mdto.no }"
							class="btn btn-primary py-3 px-4 contents-view-btn">╋ 찜하기</a>
					</div>
				</c:if>
				<c:if test="${bookMarkChk==2 }">
					<!-- 찜x -->
					<div>
						<a
							href="<%=request.getContextPath()%>/MainServlet?command=Movie_Bookmark&num=${mdto.no }"
							class="btn btn-primary py-3 px-4 contents-view-btn">▶ 찜한 콘텐츠</a>
					</div>
				</c:if>

				<!-- 평가 -->
				<c:if test="${not empty sessionScope.sessionId }">
					<div>
						<form action="MainServlet?command=Movie_Star" method="post"
							name="star-form">

							<span class="star-input"> <c:choose>
									<c:when test="${sdto.star ==1}">
										<span class="input"> <input type="radio"
											name="star-input" value="1" id="p1" checked> <label
											for="p1">1</label> <input type="radio" name="star-input"
											value="2" id="p2"> <label for="p2">2</label> <input
											type="radio" name="star-input" value="3" id="p3"> <label
											for="p3">3</label> <input type="radio" name="star-input"
											value="4" id="p4"> <label for="p4">4</label> <input
											type="radio" name="star-input" value="5" id="p5"> <label
											for="p5">5</label> <input type="hidden" name="movie_no"
											value="${mdto.no }">
										</span>
									</c:when>
									<c:when test="${sdto.star ==2}">
										<span class="input"> <input type="radio"
											name="star-input" value="1" id="p1"> <label for="p1">1</label>
											<input type="radio" name="star-input" value="2" id="p2"
											checked> <label for="p2">2</label> <input
											type="radio" name="star-input" value="3" id="p3"> <label
											for="p3">3</label> <input type="radio" name="star-input"
											value="4" id="p4"> <label for="p4">4</label> <input
											type="radio" name="star-input" value="5" id="p5"> <label
											for="p5">5</label> <input type="hidden" name="movie_no"
											value="${mdto.no }">
										</span>
									</c:when>
									<c:when test="${sdto.star ==3}">
										<span class="input"> <input type="radio"
											name="star-input" value="1" id="p1"> <label for="p1">1</label>
											<input type="radio" name="star-input" value="2" id="p2">
											<label for="p2">2</label> <input type="radio"
											name="star-input" value="3" id="p3" checked> <label
											for="p3">3</label> <input type="radio" name="star-input"
											value="4" id="p4"> <label for="p4">4</label> <input
											type="radio" name="star-input" value="5" id="p5"> <label
											for="p5">5</label> <input type="hidden" name="movie_no"
											value="${mdto.no }">
										</span>
									</c:when>

									<c:when test="${sdto.star ==4}">
										<span class="input"> <input type="radio"
											name="star-input" value="1" id="p1"> <label for="p1">1</label>
											<input type="radio" name="star-input" value="2" id="p2">
											<label for="p2">2</label> <input type="radio"
											name="star-input" value="3" id="p3"> <label for="p3">3</label>
											<input type="radio" name="star-input" value="4" id="p4"
											checked> <label for="p4">4</label> <input
											type="radio" name="star-input" value="5" id="p5"> <label
											for="p5">5</label> <input type="hidden" name="movie_no"
											value="${mdto.no }">
										</span>
									</c:when>
									<c:when test="${sdto.star ==5}">
										<span class="input"> <input type="radio"
											name="star-input" value="1" id="p1"> <label for="p1">1</label>
											<input type="radio" name="star-input" value="2" id="p2">
											<label for="p2">2</label> <input type="radio"
											name="star-input" value="3" id="p3"> <label for="p3">3</label>
											<input type="radio" name="star-input" value="4" id="p4">
											<label for="p4">4</label> <input type="radio"
											name="star-input" value="5" id="p5" checked> <label
											for="p5">5</label> <input type="hidden" name="movie_no"
											value="${mdto.no }">
										</span>
									</c:when>
									<c:otherwise>
									<span class="input"> <input type="radio"
											name="star-input" value="1" id="p1"> <label for="p1">1</label>
											<input type="radio" name="star-input" value="2" id="p2">
											<label for="p2">2</label> <input type="radio"
											name="star-input" value="3" id="p3"> <label for="p3">3</label>
											<input type="radio" name="star-input" value="4" id="p4">
											<label for="p4">4</label> <input type="radio"
											name="star-input" value="5" id="p5" > <label
											for="p5">5</label> <input type="hidden" name="movie_no"
											value="${mdto.no }">
										</span>
									</c:otherwise>
								</c:choose> 
								
								<!-- <output for="star-input">
									<b>0</b>점
								</output>  -->
								
								<input type="submit"
								class="btn btn-star btn-primary py-3-star px-4-star contents-view-btn"
								value="평가하기">
							</span>
						</form>
					</div>
				</c:if>

			</section>
			<section class="contents-view-detail contents-view-detail-2">
				<div
					class="contents-view-detail-actor contents-view-detail-actor-abs">
					<span>출연: ${mdto.actor }</span></br> <span>감독: ${mdto.director }</span></br>
					<span>장르: ${mdto.genre }</span>
				</div>
			</section>
		</main>
		<!-- end contents view detail -->

		<!-- comments -->
		<section class="comments-section">
			<div class="pt-5 mt-5 comments-div">
				<div class="comments-count-div">
					<h33 class="mb-5 comments-count">${cnt }개의 코멘트가 있습니다. </h33>
				</div>
				<ul class="comment-list">
					<c:forEach var="commentList" items="${commentList }">
						<c:if test="${commentList.lvl==0 }">
							<li class="comment">
								<div class="vcard bio">
									<!-- <img src="<%=request.getContextPath()%>/${commentList.img }" alt="Image placeholder"> -->
									<img
										src="<%=request.getContextPath()%>/images/profile_images/${commentList.img }"
										alt="Image placeholder">
								</div>
								<div class="comment-body">
									<h3>${commentList.name }</h3>
									<!-- <div class="meta">June 27, 2018 at 2:21pm</div> -->
									<div class="meta">${commentList.writedate }</div>
									<p>${commentList.content }</p>
									<form action="MainServlet?command=Movie_reComment" method=post
										name="recommentForm">
										<div class="searchBox">
											<input class="searchInput" type="text" name="content"
												placeholder=""> <input type="hidden" name="num"
												value="${commentList.movieno }"> <input
												type="hidden" name="grp" value="${commentList.grp }">
											<input type="hidden" name="seq" value="${commentList.seq }">
											<input type="hidden" name="lvl" value="${commentList.lvl }">
											<c:if test="${not empty sessionScope.sessionId }">
												<p>
													<input type="submit" class="reply" value="REPLY">
												</p>
											</c:if>
										</div>
									</form>
								</div>
						</c:if>
						<c:if test="${commentList.lvl==1 }">
							<ul class="children">
								<li class="comment">
									<div class="vcard bio">
										<img
											src="<%=request.getContextPath()%>/images/profile_images/${commentList.img }"
											alt="Image placeholder">
									</div>
									<div class="comment-body">
										<h3>${commentList.name }</h3>
										<div class="meta">${commentList.writedate }</div>
										<p>${commentList.content }</p>
									</div>
								</li>
							</ul>
						</c:if>
						</li>
					</c:forEach>
				</ul>

				<!-- comment write -->
				<c:if test="${not empty sessionScope.sessionId }">
					<div class="comment-form-wrap pt-5 comment-write-form">
						<h33 class="mb-5">코멘트 작성</h33>
					</div>
					<div class="appointment-comment-write ftco-animate">
						<form action="MainServlet?command=Movie_comment" method="post"
							name="comment_form"
							class="appointment-form appointment-form-comment-write">
							<div class="row">
								<div class="col-md-comment-write-form">
									<div class="d-md-flex">
										<div class="form-group">
											<input type="hidden" name="num" value="${mdto.no }">
											<input type="text" name="name" class="form-control"
												value="${sessionScope.sessionName }">
										</div>
									</div>
								</div>
								<div class="col-md-comment-write-form">
									<div class="form-group">
										<textarea name="content" id="" cols="30" rows="10"
											class="form-control" placeholder="Message"></textarea>
									</div>
								</div>
								<div class="col-md-comment-write-form">
									<div class="form-group">
										<input type="submit" value="확인"
											class="btn btn-primary py-3 px-4 btn-comment">
									</div>
								</div>
							</div>
						</form>
					</div>
				</c:if>

			</div>
		</section>

		<footer class="ftco-footer ftco-section img footer-contents-view">
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
		<script
			src="<%=request.getContextPath()%>/js/jquery.timepicker.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
		<script src="<%=request.getContextPath()%>/js/google-map.js"></script>
		<script src="<%=request.getContextPath()%>/js/main.js"></script>
		<script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script>
		<script src="<%=request.getContextPath()%>/js/star.js"></script>
</body>

</html>