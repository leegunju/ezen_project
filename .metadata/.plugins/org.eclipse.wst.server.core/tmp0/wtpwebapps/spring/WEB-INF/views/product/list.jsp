<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
</head>
<body>
<div>
	<c:forEach items="${dtoList}" var="dto">
   		<c:forEach items="${dto.flist}" var="file">
   			<img alt="image" src="/upload/${fn:replace(file.save_dir, '\\','/') }/${file.uuid}_th_${file.file_name}"><br>
		</c:forEach>
		<p>${dto.pvo.pname}</p>
		<p>${dto.pvo.price}</p>
		<p>${dto.pvo.content}</p>
	</c:forEach>
</div>  	
       
   
</body>
</html>