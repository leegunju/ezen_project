<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In Page</title>
</head>
<body>
<!-- c:if를 넣어서 관리자 계정으로 로그인 시 관리자 화면으로 -->
	<h1>관리자 시스템</h1>
	<form action="/member/login" method="post">
		아이디 : <input type="text" name="id" placeholder="ID">
		비밀번호 : <input type="password" name="password" placeholder="Password">
		<button type="submit">Log In</button>
	</form>
	
	<c:if test="${id eq 'admin' }">
		<form action="/member/admin" method="post">
		아이디 : <input type="text" name="id" placeholder="ID">
		비밀번호 : <input type="password" name="password" placeholder="Password">
		<button type="submit">Log In</button>
		</form>
	</c:if>

</body>
</html>