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
	이름 : <input type="text" name="name"><br>
	아이디 : <input type="text" name="id"><br>
	비밀번호 : <input type="password" name="password"><br>
	나이 : <input type="text" name="age"><br>
	성별 : 남자 <input type="radio" name="gender" value="남자"> 여자 <input type="radio" name="gender" value="여자"><br>
	닉네임 : <input type="text" name="nickname"><br>
	이메일 : <input type="email" name="email"><br>
	전화번호 : <input type="text" name="telephone"><br>
	주소 : <input type="text" name="address"><br>
	<button type="submit">회원가입</button>
	</form>
</body>
</html>