<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Movie</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="<%=request.getContextPath()%>/https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/https://fonts.googleapis.com/css?family=Vidaloka"
	rel="stylesheet">

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/animate.css">

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/owl.carousel.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/owl.theme.default.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/magnific-popup.css">

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/aos.css">

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/ionicons.min.css">

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery.timepicker.css">


<link rel="stylesheet" href="<%=request.getContextPath()%>/css/flaticon.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/icomoon.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">

<style>
* {
	margin: 0;
	padding: 0;
	word-break: break-all;
	word-wrap: break-word;
	list-style: none;
}

body {
	display: block;
	font-family: "Poppins", Arial, sans-serif;
	width: 100%;
	color: #a5a5a5;
	/* background-color: #1b1b1b; */
	background-color: black;
}

body, html {
	height: 100%;
	box-sizing: border-box;
}

.login {
	width: 480px;
}

.member-layout h22 {
	margin: 0 0 40px;
	font-weight: 400;
	font-size: 30px;
	text-align: center;
	color: #fff;
}

.member-layout {
	margin: 80px auto;
	padding: 70px 0 40px 0;
	overflow: hidden;
	background: #252525;
}

.member-layout input[type=password].input-style01, .member-layout input[type=text].input-style01
	{
	width: 390px;
	font-size: 15px;
	height: 53px;
	color: #fff;
	background-color: #2f2f2f;
	border: 0;
}

input[type=password], input[type=tel], input[type=text], textarea {
	-webkit-appearance: none;
	border-radius: 5px;
	padding: 0 20px;
	margin: 5px;
}

input[type=tel], input[type=text], pre, textarea {
	font-weight: 480;
}

input, button {
	font-family: 'NotoSans', sans-serif;
}

button, input, textarea {
	background: transparent;
}

.join-sns-box, .sns-box {
	float: left;
	width: 350px;
	padding: 40px;
}

h22 {
	display: block;
	font-size: 1.5em;
	margin-block-start: 0.83em;
	margin-block-end: 0.83em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}
/* 
        ::-webkit-scrollbar {
            width: 8px;
            height: 8px;
            background-color: transparent;
        }

        ::-webkit-scrollbar-thumb {
            height: 8px;
            border-radius: 0;
            background-color: #2f2f2f;
        }

        ::-webkit-scrollbar-track {
            border-radius: 0;
            background-color: #252525;
        } */
a:link, a:visited {
	text-decoration: none;
}

input[type="submit"] {
	background: rebeccapurple;
	width: 390px;
	margin: 40px 0px 25px 5px;
	display: block;
	height: 60px;
	line-height: 60px;
	border-radius: 30px;
	font-size: 18px;
	color: #fff;
	border: 0;
	outline: 0;
}

.btn-purple, input[type="submit"] {
	text-align: center;
}

.login ul.join-find li a {
	padding: 0 14px;
	font-size: 14px;
	color: #a5a5a5;
}

a:link, a:visited {
	text-decoration: none;
}

.login ul.join-find li:after {
	position: absolute;
	top: 2px;
	right: 0;
	content: "";
	width: 1px;
	height: 16px;
	background-color: #a5a5a5;
}

.div_join-find {
	font-size: 14px;
	color: gray;
}

.login-box {
	padding: 8em 0 25px 0;
	background-color: #1b1b1b;
	min-height: 800px !important;
}

header {
	background-color: black;
}
</style>

</head>

<body>
	<div class="page">
		<nav id="colorlib-main-nav" role="navigation">
			<a href="<%=request.getContextPath()%>/#" class="js-colorlib-nav-toggle colorlib-nav-toggle active"><i></i></a>
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
						<a class="colorlib-logo" href="<%=request.getContextPath()%>/MainServlet?command=Movie_Home">Movie<br> <span></span></a>
					</div>
					<nav class="nav-main">
						<div class="collapse navbar-collapse"
							id="navbarSupportedContent-4"></div>
						<ul class="navbar-nav-main ml-auto">
							<div class="nav-item-txt-div">
								<li class="nav-item nav-item-txt active"><a
									class="nav-link" href="<%=request.getContextPath()%>/MainServlet?command=Movie_Home">홈 <span
										class="sr-only">(current)</span></a></li>
								<li class="nav-item nav-item-txt"><a class="nav-link"
									href="<%=request.getContextPath()%>/MainServlet?command=Movie_Category">영화 </a></li>
								<li class="nav-item nav-item-txt"><a class="nav-link"
									href="<%=request.getContextPath()%>/MainServlet?command=Movie_MyContents">찜한콘텐츠 </a></li>
								<li class="nav-item nav-item-txt"><a class="nav-link"
									href="javascript:;">고객문의 </a></li>
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

		<!-- Page Content -->
		<div class="login-box">
			<div class="login member-layout">
                <h3 class="mb-5-profile">코멘트 수정</h3>
				<form action="<%=request.getContextPath()%>/MainServlet?command=Movie_CommentMod" method = "post" class="comment-form p-5">
                    <div class="form-group profile">
                      <label for="name">닉네임</label>
                      <input type="text" class="form-control" id="name" name="name" value="${sessionScope.sessionName }">
                      <input type="hidden" name="c_no" value=${c_no }>
                      <input type="hidden" name="m_no" value=${m_no }>
                    </div>
                    
                    <div class="form-group comment-mod">
                      <label for="image">내용</label>
                      <textarea name="cbody" class="comment-text-body" ></textarea>
                    </div>
                  
                    <div class="btn-purple btn-purple-dark">
                        <input type="submit" value="수정">
                    </div>
                  </form>
			</div>
		</div>
	</div>

	<footer class="ftco-footer ftco-section img">
		<div class="overlay"></div>
		<div class="col-md-2">
			<div class="ftco-footer-widget">
				<!--<h2 class="ftco-heading-2">Site Links</h2>-->
				<ul class="list-unstyled-login">
					<li><a href="<%=request.getContextPath()%>/MainServlet?command=Movie_home"
						class="py-2 d-block">Home</a></li>
					<li class="py-2-line d-block">|</li>
					<li><a href="javascript:;" class="py-2 d-block">Category</a></li>
					<li class="py-2-line d-block">|</li>
					<li><a href="javascript:;" class="py-2 d-block">My
							Contents</a></li>
					<li class="py-2-line d-block">|</li>
					<li><a href="javascript:;" class="py-2 d-block">Customer
							Service Center</a></li>
					<li class="py-2-line d-block">|</li>
					<li><a href="javascript:;" class="py-2 d-block">My Page</a></li>
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
						href="javascript:;" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</div>
	</footer>

	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.easing.1.3.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.waypoints.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.stellar.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.magnific-popup.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/aos.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.animateNumber.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/scrollax.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.mb.YTPlayer.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/bootstrap-datepicker.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.timepicker.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="<%=request.getContextPath()%>/js/google-map.js"></script>
	<script src="<%=request.getContextPath()%>/js/main.js"></script>
	<script src="<%=request.getContextPath()%>/js/script.js"></script>
</body>

</html>