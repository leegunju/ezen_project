<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <div id="container"> <a href="/"><h1 class="style-3">Web_Site_Name</h1></a></div>
            <div class="nav">
                <div class="center-items">
                    <a href="/product/list?type_a=정수기"><p>정수기</p></a>
                    <a href="/product/list?type_a=공기청정기"><p>공기청정기</p></a>
                    <a href="/product/list?type_a=제습기"><p>제습기</p></a>
                    <a href="/product/list?type_a=에어컨"><p>에어컨</p></a>
                </div>                
            </div>
        </div>
        <br>
        <div class="info">
            <i class="fa-sharp fa-solid fa-user fa-xl" style="color: black;" onclick="toggleTooltip();"></i>
            <div id="tooltip" class="speech-bubble">
               <a href="">회원가입</a> <br> <a href="">로그인</a> <br> <a href="">회원정보수정</a>
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
                <source src="/resources/video/production_id_4069110 (2160p).mp4" type="video/mp4">
            </video>
            <div class="video-box-btn">
              <a href="">CLICK ME</a>
            </div>
        </div>
    </main>
    <footer>
        <div class="footer">
			<a href="/product/register"><button>register temporary</button></a>
        </div>
    </footer>
    <script src="/resources/js/home.js"></script>
</body>
</html>