<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="/resources/css/home.css">
	<title>Home</title>
</head>
<body>
<jsp:include page="./layout/header.jsp"></jsp:include>
<div style="text-align: center; margin: 2rem;">
	<c:if test="${ses.id != null }">
		<h3 style="color: white; font-size: 2rem; font-weight: bold;">Welcome ${ses.id } !!</h3>
		<a href="/board/register"><button type="button" class="btn btn-dark">Register Board</button></a>
		<a href="/board/list"><button type="button" class="btn btn-dark">Board List</button></a>
	</c:if>
</div>
<script type="text/javascript">
	const msg_login = `<c:out value="${msg_login}"/>`;
	const msg_logout = `<c:out value="${msg_logout}"/>`;
	console.log(msg_login);
	console.log(msg_logout);
	if(msg_login === '0') {
		alert("Failed Login");
	}
	if(msg_logout === '1') {
		alert("Success Logout");
	}
</script>

</body>
</html>
