<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상담 신청</title>
</head>
<body>
	<h2>상담신청</h2>
	<form action="/consult/register" method="post">
	상품 : <input type="text" name="cs_pno"><br>
	고객명 : <input type="text" name="name"><br>
	연락처 : <input type="text" name="tel"><br>
	상담 가능 시간 : <input type="text" name="csdate">
	<button type="submit">상담신청</button>
	</form>
</body>
</html>