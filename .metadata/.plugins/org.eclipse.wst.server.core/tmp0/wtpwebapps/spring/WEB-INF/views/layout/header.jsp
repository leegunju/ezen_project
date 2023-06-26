<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="headDiv" style="padding: 12px; background-color: rgb(246,245,239); display: flex; justify-content: space-between; width: 100%; height: 4rem;">
	<a href="/" style="text-decoration: none; color: rgb(33,37,41); font-size: 1.4rem;">Hello world!</a>
	<div>
		<a href="/member/signup"><button type="button" class="btn btn-light">Sign Up</button></a>
		<c:if test="${ses.id == null }">
		<a href="/member/login"><button type="button" class="btn btn-light">Log In</button></a>
		</c:if>
		<c:if test="${ses.id != null }">
		<a href="/member/logout"><button type="button" class="btn btn-light">Log Out</button></a>
		</c:if>
	</div>
	</div>
</body>
</html>