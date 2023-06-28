<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up Page</title>
</head>
<body>
	<form action="/member/signup" method="post">
	이름 : <input type="text" name="cname"><br>
	아이디 : <input type="text" name="cid"><br>
	비밀번호 : <input type="password" name="cpw" min="4" maxlength="12" placeholder="최초 4, 최대 12"><br>
	나이 : <input type="text" name="cage"><br>
	성별 : 남자 <input type="radio" name="cgender" value="man"> 여자 <input type="radio" name="gender" value="woman"><br>
	닉네임 : <input type="text" name="cnick_name"><br>
	이메일 : <input type="email" name="cemail"><br>
	전화번호 : <input type="text" name="ctel"><br>
	주소 : <input type="text" name="cadd"><br>
	<button type="submit">회원가입</button>
	</form>
</body>
</html>