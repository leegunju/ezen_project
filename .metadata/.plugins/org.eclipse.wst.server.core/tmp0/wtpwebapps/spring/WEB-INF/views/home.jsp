<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<body>

	<h1>희희</h1>
	<c:if test="${ses.cid == null }">
		<a href="/member/login"><button type="button">
		로그인</button></a>
		<a href="/member/signup"><button type="button">
		회원가입</button></a>
	</c:if>
	
</body>
</html>