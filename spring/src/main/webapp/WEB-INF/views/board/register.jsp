<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body style="background-color: rgb(246,245,239); color: rgb(33,37,41); padding: 1rem;">
<jsp:include page="../layout/header.jsp"></jsp:include>
	<form action="/board/register" method="post" enctype="multipart/form-data">
		<div class="mb-3">
  			<label for="exampleFormControlInput1" class="form-label">Title</label>
  			<input type="text" class="form-control" name="title" id="exampleFormControlInput1" placeholder="Title">
		</div>
		<div class="mb-3">
  			<label for="exampleFormControlInput2" class="form-label">Writer</label>
  			<input type="text" class="form-control" name="writer" id="exampleFormControlInput2" value="${ses.id }" readonly="readonly">
		</div>
		<div class="mb-3">
			  <label for="exampleFormControlTextarea1" class="form-label">Text Area</label>
			  <textarea class="form-control" name="content" id="exampleFormControlTextarea1" rows="3"></textarea>
		</div>
	
 		File: <input type="file" class="form-control" id="file" name="files" multiple style="display:none">
		<button type="button" id="trigger" class="btn btn-dark">File Upload</button>
		
		<div id="fileZone">
		
		</div>
		<button id="regBtn" type="submit" class="btn btn-dark">등록</button>
	</form>
	<script type="text/javascript" src="/resources/js/boardRegister.js"></script>
</body>
</html>