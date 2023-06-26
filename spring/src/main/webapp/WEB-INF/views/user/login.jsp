<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body style="background-color: rgb(246,245,239); color: rgb(33,37,41); padding: 1rem;">
<jsp:include page="../layout/header.jsp"></jsp:include>
	<form action="/member/login" method="post">
		<div class="mb-3">
  			<label for="exampleFormControlInput1" class="form-label">ID</label>
  			<input type="text" class="form-control" name="id" id="exampleFormControlInput1" placeholder="Please Enter your ID">
		</div>
		<div class="mb-3">
  			<label for="exampleFormControlInput2" class="form-label">Password</label>
  			<input type="password" class="form-control" name="pw" id="exampleFormControlInput2" placeholder="Please Enter your PW">
		</div>
		<button type="submit" class="btn btn-dark">Log In</button>
	</form>

</body>
</html>