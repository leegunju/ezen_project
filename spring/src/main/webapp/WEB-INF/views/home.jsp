<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<<<<<<< HEAD
<html>
<head>
	<title>Home</title>
	<script src="https://kit.fontawesome.com/e927512ef5.js" crossorigin="anonymous"></script>
  	<link rel="stylesheet" href="/resources/css/home.css">
=======
<%@ page language="java"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://kit.fontawesome.com/e927512ef5.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/home.css">
>>>>>>> jiho
</head>
<body>
    <header>
        <div class="container">
            <!-- class logo는 좌측에 위치 사이즈는 작게 -->
            <div class="logo">
                <a href="">
                    <img src="/resources/img/rental.png" alt="XXX">
                </a>
            </div>
            <!-- id container는 화면 중앙 상단에 위치  -->
<<<<<<< HEAD
            <div id="container"> <a href=""><h1 class="style-3">Web_Site_Name</h1></a></div>
            <div class="nav">
                <div class="center-items">
                    <a href=""><p name="cname" id="cname">정수기</p></a>
                    <a href=""><p name="cname" id="cname">비데</p></a>
                    <a href=""><p name="cname" id="cname">공기청정기</p></a>
                    <a href=""><p name="cname" id="cname">매트리스</p></a>
=======
            <div id="container"> <a href="/"><h1 class="style-3">Web_Site_Name</h1></a></div>
            <div class="nav">
                <div class="center-items">
                    <a href="/product/list?type_a=정수기"><p>정수기</p></a>
                    <a href="/product/list?type_a=공기청정기"><p>공기청정기</p></a>
                    <a href="/product/list?type_a=제습기"><p>제습기</p></a>
                    <a href="/product/list?type_a=에어컨"><p>에어컨</p></a>
>>>>>>> jiho
                </div>                
            </div>
        </div>
        <br>
        <div class="info">
            <i class="fa-sharp fa-solid fa-user fa-xl" style="color: black;" onclick="toggleTooltip();"></i>
            <div id="tooltip" class="speech-bubble">
<<<<<<< HEAD
               <a href="/user/signup">회원가입</a> <br>
               <a href="/user/login">로그인</a> <br> 
               <a href="">회원정보수정</a>
=======
               <a href="">회원가입</a> <br> <a href="">로그인</a> <br> <a href="">회원정보수정</a>
>>>>>>> jiho
            </div>
        </div>
        <div class="search">
            <span id="search">
                <i class="fa-solid fa-magnifying-glass fa-xl" style="color: black;"></i>
            </span>
            <input id="search-input" type="text" placeholder="Search...">
        </div>
    </header>
    <main>
        <div class="video-box">
            <video src="/resources/video/production_id_4069110 (2160p).mp4" muted autoplay loop>
<<<<<<< HEAD
                <source src="/video/production_id_4069110 (2160p).mp4" type="video/mp4">
=======
                <source src="/resources/video/production_id_4069110 (2160p).mp4" type="video/mp4">
>>>>>>> jiho
            </video>
            <div class="video-box-btn">
              <a href="">CLICK ME</a>
            </div>
        </div>
    </main>
    <footer>
        <div class="footer">
<<<<<<< HEAD
            <div class="ft-logo">
                <img src="/resources/img/images.png" alt="" width="50px" height="50px">
            </div>
            <div class="footinfo">
                <span><h6>©2023 Ok RENTAL. All Rights Reserved.</h6></span>
                <span><h6>RETURN POLICY</h6></span>
                <span><h6>TERMS & LEGAL</h6></span>
                <span><h6>PRIVACY NOTICE</h6></span>
            </div>
        </div>
        <div class="footsns">
           <a href="https://www.facebook.com/login/?locale=ko_KR"><i class="fa-brands fa-facebook" style="color: #000000;"></i></a>
           <a href="https://twitter.com/i/flow/login?input_flow_data=%7B%22requested_variant%22%3A%22eyJsYW5nIjoia28ifQ%3D%3D%22%7D"><i class="fa-brands fa-twitter" style="color: #000000;"></i></a>
            <a href="https://www.instagram.com/"><i class="fa-brands fa-instagram" style="color: #000000;"></i></a>
            <a href="https://github.com/login"><i class="fa-brands fa-github" style="color: #000000;"></i></a>
            <a href="https://discord.com/login"><i class="fa-brands fa-discord" style="color: #000000;"></i></a>
=======
			<a href="/product/register"><button>register temporary</button></a>
>>>>>>> jiho
        </div>
    </footer>
    <script src="/resources/js/home.js"></script>
</body>
</html>