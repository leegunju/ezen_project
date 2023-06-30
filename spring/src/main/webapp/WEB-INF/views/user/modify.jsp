<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="a">
        <a href="/home.html">
            <img src="/img/rental.png" alt="">
        </a>
    </div>
    <form action="/user/modify" method="post">
		<input type="text" id="cid" name="cid" placeholder="아이디 입력">
        <input type="text" id="cname" name="cname" placeholder="이름">
        <input type="password" id="cpw" name="cpw" placeholder="비밀번호 입력">
        <input type="text" id="cage" name="cage" placeholder="나이">
        <div class="gender-selection">
            <label>
                <i id="maleIcon" class="fa-solid fa-mars fa-2xl gender-icon"></i>
                <input type="radio" name="cgender" value="man" id="manRadio" style="display: none;">
                <span id="maleText" class="gender-text">남자</span>
            </label>
            <label>
                <i id="femaleIcon" class="fa-solid fa-venus fa-2xl gender-icon"></i>
                <input type="radio" name="cgender" value="woman" id="womanRadio" style="display: none;">
                <span id="femaleText" class="gender-text">여자</span>
            </label>
        </div>
        <input type="text" id="cnick_name" name="cnick_name" placeholder="닉네임 입력">
        <input type="email" id="cemail" name="cemail" placeholder="RENTAL@okRental.com">
        <input type="text" id="ctel" name="ctel" placeholder="010-1234-5678">
        <input type="text" id="cadd" name="cadd" placeholder="주소 입력">
        <button type="submit">회원 정보 수정</button>
	</form>
</body>
</html>