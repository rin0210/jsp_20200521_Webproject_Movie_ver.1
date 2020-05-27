<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <title>Stylistic - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Vidaloka" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">


    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">

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

        body,
        html {
            height: 100%;
            box-sizing: border-box;
        }

        .pass {
            width: 480px;
        }

        .member-layout h22 {
            margin: 0 0 10px;
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

        .member-layout input[type=password].input-style01,
        .member-layout input[type=text].input-style01 {
            width: 390px;
            font-size: 15px;
            height: 53px;
            color: #fff;
            background-color: #2f2f2f;
            border: 0;
        }

        input[type=password],
        input[type=tel],
        input[type=text],
        textarea {
            -webkit-appearance: none;
            border-radius: 5px;
            padding: 0 20px;
            margin: 5px;
        }

        input[type=tel],
        input[type=text],
        pre,
        textarea {
            font-weight: 480;
        }

        input,
        button {
            font-family: 'NotoSans', sans-serif;
        }

        button,
        input,
        textarea {
            background: transparent;
        }

        .pass-sns-box,
        .sns-box {
            float: left;
            width: 390px;
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

        a:link,
        a:visited {
            text-decoration: none;
        }

        .btn-purple-dark>a,
        .btn-purple>a {
            background: rebeccapurple;
            width: 390px;
            margin: 40px 0px 25px 5px;
        }

        .btn-purple>a {
            display: block;
            height: 60px;
            line-height: 60px;
            border-radius: 30px;
            font-size: 18px;
            color: #fff;
        }

        .btn-purple,
        .btn-purple>a {
            text-align: center;
        }

        .pass ul.join-find li a {
            padding: 0 14px;
            font-size: 14px;
            color: #a5a5a5;
        }

        a:link,
        a:visited {
            text-decoration: none;
        }

        .pass ul.join-find li:after {
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

        .pass-box {
            padding: 9em 0 25px 0;
            background-color: #1b1b1b;
            min-height: 800px !important;
        }

        header {
            background-color: black;
        }

        .product-group {
            width: 400px;
            margin-top: 10px;
        }

        .ticket-group-list {
            margin-bottom: 10px;
            font-size: 16px;
            line-height: 24px;
            color: #a5a5a5;
            background-color: #2f2f2f;
            border-radius: 5px;
        }

        .product-name-box {
            /* position: relative; */
            display: inline-block;
            width: 390px;
            font-size: 16px;
            line-height: 24px;
        }

        .product-name-box label {
            display: block;
            padding: 0 40px;
            font-size: 0;
        }

        button,
        label {
            cursor: pointer;
        }

        label {
            margin: 0;
            /* padding: 0; */
            vertical-align: middle;
        }

        em,
        p,
        span {
            font-style: normal;
        }

        .product-name-box input {
            /* position: absolute; */
            top: 50%;
            margin-top: 30px;
            margin-left: 30px;
            left: 32px;
            width: 21px;
            height: 21px;
            cursor: pointer;
            border: 0;
            border-radius: 0;
            appearance: none;
            outline: none;
            background-color: transparent;
        }

        input,
        button {
            font-family: "Poppins", Arial, sans-serif;
        }

        button,
        input,
        textarea {
            margin: 0;
            background: transparent;
        }

        input {
            /* -webkit-writing-mode: horizontal-tb !important; */
            text-rendering: auto;
            color: -internal-light-dark-color(black, white);
            letter-spacing: normal;
            word-spacing: normal;
            text-transform: none;
            text-indent: 0px;
            text-shadow: none;
            display: inline-block;
            text-align: start;
            -webkit-rtl-ordering: logical;
            font: 400 13.3333px Arial;
        }

        .product-name {
            display: inline-block;
            vertical-align: middle;
            width: 226px;
            padding-left: 34px;
            color: #fff;
            font-size: 16px;
        }

        em,
        p,
        span {
            font-style: normal;
        }

        .product-discription {
            display: inline-block;
            vertical-align: middle;
            width: 512px;
            padding-left: 30px;
            font-size: 16px;
            line-height: 24px;
        }

        element.style {
            color: rgb(255, 255, 255);
        }

        .product-price {
            float: right;
            font-size: 20px;
            text-align: right;
        }

        .ticket-group-list:after {
            display: block;
            clear: both;
            content: "";
        }

        .h22-span{
            margin-left: 9.3em;
        }

    </style>

</head>

<body>
    <div class="page">
        <nav id="colorlib-main-nav" role="navigation">
            <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle active"><i></i></a>
            <div class="js-fullheight colorlib-table">
                <!--<div class="img" style="background-image: url(images/image_4.jpg);"></div>-->
                <div class="colorlib-table-cell js-fullheight">
                    <div class="row no-gutters">
                        <div class="col-md-12 text-center">
                            <h1 class="mb-4 page-logo">
                                <class="logo">카테고리<br><span>
                                        <hr color="white">
                                    </span></a>
                            </h1>
                            <ul>
                                <li><a href="javascript:;"><span>로맨틱코미디</span></a></li>
                                <li><a href="javascript:;"><span>코미디</span></a></li>
                                <li><a href="javascript:;"><span>어린이/가족</span></a></li>
                                <li><a href="javascript:;"><span>음악/뮤지컬</span></a></li>
                                <li><a href="javascript:;"><span>드라마</span></a></li>
                                <li><a href="javascript:;"><span>로맨스</span></a></li>
                                <li><a href="javascript:;"><span>판타지</span></a></li>
                                <li><a href="javascript:;"><span>액션</span></a></li>
                                <li><a href="javascript:;"><span>SF</span></a></li>
                                <li><a href="javascript:;"><span>스릴러</span></a></li>
                                <li><a href="javascript:;"><span>공포</span></a></li>
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
                        <a class="colorlib-logo" href="javascript:;">Movie<br><span></span></a>
                    </div>
                    <nav class="nav-main">
                        <div class="collapse navbar-collapse" id="navbarSupportedContent-4"></div>
                        <ul class="navbar-nav-main ml-auto">
                            <div class="nav-item-txt-div">
                                <li class="nav-item nav-item-txt active">
                                    <a class="nav-link" href="MainServlet?command=Movie_Home">홈 <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item nav-item-txt">
                                    <a class="nav-link" href="category.html">영화 </a>
                                </li>
                                <li class="nav-item nav-item-txt">
                                    <a class="nav-link" href="mycontents.html">찜한콘텐츠 </a>
                                </li>
                                <li class="nav-item nav-item-txt">
                                    <a class="nav-link" href="blog.html">고객문의 </a>
                                </li>
                                <li class="nav-item nav-item-txt">
                                    <a class="nav-link" href="login.html">마이페이지&ensp;&ensp;</a>
                                </li>
                            </div>
                            <!-- Search Form -->
                            <div class="nav-item-img-div">
                                <li class="nav-item-img1">

                                    <!-- Search btn -->
                                    <div id="searchbtn">
                                        <img id="searchimg" src="images/search.png" alt="">
                                    </div>
                                </li>
                                <li class="nav-item-img2"><a href="#"
                                        class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a></li>
                            </div>
                        </ul>

                </div>
                </nav>
                <div class="header-search-form ml-auto">
                    <form action="#">
                        <input type="search" class="form-control form-control-search"
                            placeholder="Input your keyword then press enter..." id="search" name="search">
                        <input class="d-none" type="submit" value="submit">
                    </form>
                </div>
        </div>
        </header>

        <!-- Page Content -->
        <div class="pass-box">
            <div class="pass member-layout">
                <h22>이용권구매</h22>
                <span class="h22-span">매월 자동결제/부가세포함</span>
                <div class="pass-sns-box">
                    <div>

                        <ul class="product-group">
                            <li class="ticket-group-list  checked"><span class="product-name-box"><input type="radio"
                                        id="group_000" name="voucher" value="group_00_0"><label for="group_000"><span
                                            class="product-name">Basic</span><span class="product-discription">동시시청 1회선,
                                            HD화질, 모바일+PC</span>
                                        <p class="product-price" style="color: rgb(255, 255, 255);">
                                            7,900원
                                        </p>
                                    </label></span></li>
                            <li class="ticket-group-list"><span class="product-name-box"><input type="radio"
                                        id="group_001" name="voucher" value="group_00_1"><label for="group_001"><span
                                            class="product-name">Standard</span><span class="product-discription">동시시청
                                            2회선, FHD화질, 전체 디바이스</span>
                                        <p class="product-price" style="color: rgb(255, 255, 255);">
                                            10,900원
                                        </p>
                                    </label></span></li>
                            <li class="ticket-group-list"><span class="product-name-box"><input type="radio"
                                        id="group_002" name="voucher" value="group_00_2"><label for="group_002"><span
                                            class="product-name">Premium</span><span class="product-discription">동시시청
                                            4회선, 최상위 화질, 전체 디바이스</span>
                                        <p class="product-price" style="color: rgb(255, 255, 255);">
                                            13,900원
                                        </p>
                                    </label></span></li>
                        </ul>
                    </div>
                    <form>
                       
                        <div class="btn-purple btn-purple-dark"><a href="#" title="구매하기"">구매하기</a></div>
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
                        <li><a href="#" class="py-2 d-block">Home</a></li>
                        <li class="py-2-line d-block">|</li>
                        <li><a href="javascript:;" class="py-2 d-block">Category</a></li>
                        <li class="py-2-line d-block">|</li>
                        <li><a href="javascript:;" class="py-2 d-block">My Contents</a></li>
                        <li class="py-2-line d-block">|</li>
                        <li><a href="javascript:;" class="py-2 d-block">Customer Service Center</a></li>
                        <li class="py-2-line d-block">|</li>
                        <li><a href="javascript:;" class="py-2 d-block">My Page</a></li><br>
                    </ul>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12 text-center">
                    <p class="footer-last">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                        <script>document.write(new Date().getFullYear());</script> All rights reserved | This template
                        is
                        made with by <a href="javascript:;" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
            </div>
        </footer>

        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/scrollax.min.js"></script>
        <script src="js/jquery.mb.YTPlayer.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/jquery.timepicker.min.js"></script>
        <script
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>


</body>

</html>