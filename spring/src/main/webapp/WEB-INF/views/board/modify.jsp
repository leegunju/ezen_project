<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Modify Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body style="background-color: rgb(246,245,239); color: rgb(33,37,41); padding: 1rem;">
<jsp:include page="../layout/header.jsp"></jsp:include>
	<h3>Board Modify Page</h3>
	<form action="/board/modify" method="post" enctype="multipart/form-data">
		<div class="mb-3">
  			<label for="exampleFormControlInput1" class="form-label">Board Number</label>
  			<input type="text" class="form-control" name="bno" id="exampleFormControlInput1" value="${board.bno }" readonly="readonly">
		</div>
		<div class="mb-3">
  			<label for="exampleFormControlInput2" class="form-label">Title</label>
  			<input type="text" class="form-control" name="title" id="exampleFormControlInput2" value="${board.title }">
		</div>
		<div class="mb-3">
  			<label for="exampleFormControlInput3" class="form-label">Writer</label>
  			<input type="text" class="form-control" name="writer" id="exampleFormControlInput3" value="${board.writer }" readonly="readonly">
		</div>
		<div class="mb-3">
			  <label for="exampleFormControlTextarea1" class="form-label">Text Area</label>
			  <textarea class="form-control" name="content" id="exampleFormControlTextarea1" rows="3">${board.content }</textarea>
		</div>
		<c:set var="flist" value="${boardDTO.flist }"></c:set>
		 <div>
		 	<ul>
		 		<c:forEach items="${flist }" var="fvo">
		 		<li>
		 			<c:choose>
		 				<c:when test="${fvo.file_type > 0 }">
		 					<div>
		 						<img alt="없음" src="/upload/${fn:replace(fvo.save_dir, '\\','/')}/${fvo.uuid}_th_${fvo.file_name}">
		 					</div>
		 				</c:when>
		 				<c:otherwise>
		 					<div>
		 						<!-- 클립모양같은 파일 아이콘 모양 값을 넣을 수 있음-->
		 					</div>
		 				</c:otherwise>
		 			</c:choose>
		 			<div>
		 				<div>${fvo.file_name }</div>
		 				<button type="button" class="file-x" data-uuid="${fvo.uuid }">X</button>
		 			</div>			
		 		</li>
		 		</c:forEach>
		 	</ul>
		 </div>	
		File: <input type="file" id="file" name="files" multiple style="display:none">
		<button type="button" id="trigger">FileUpload</button> <br>
		<div id="fileZone">
		
		</div>
		<button id="regBtn" type="submit" class="btn btn-dark">수정</button> 
	</form>
<script type="text/javascript" src="/resources/js/boardRegister.js"></script>
<script type="text/javascript" src="/resources/js/boardModify.js"></script>	
</body>
</html>