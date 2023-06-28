<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Detail Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body style="background-color: rgb(246,245,239); color: rgb(33,37,41); padding: 1rem;">
<jsp:include page="../layout/header.jsp"></jsp:include>
<c:set var="board" value="${boardDTO.bvo }"></c:set>
<table class="table">
  	<tr>
		<th scope="col">Board Number</th>
     	<td>${board.bno }</td>
   	</tr>
   	<tr>
		<th scope="col">Title</th>
     	<td>${board.title }</td>
   	</tr>
   	<tr>
		<th scope="col">Writer</th>
     	<td>${board.writer }</td>
   	</tr>
   	<tr>
		<th scope="col">Read Count</th>
     	<td>${board.read_count }</td>
   	</tr>
   	<tr>
		<th scope="col">Register Date</th>
     	<td>${board.reg_date }</td>
   	</tr>
   	<tr>
		<th scope="col">Content</th>
     	<td>${board.content }</td>
   	</tr>
</table>
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
 				${fvo.reg_date }
 			</div>
 			<span>${fvo.file_size }Bytes</span>
 		</li>
 		</c:forEach>
 	</ul>
 </div>
<c:if test="${ses != null && ses.id == board.writer }">
	<div style="padding: 0.4rem;">
		<a href="/board/modify?bno=${board.bno }"><button class="btn btn-dark">Modify</button></a>
		<a href="/board/delete?bno=${board.bno }"><button class="btn btn-dark">Delete</button></a>
	</div>
</c:if>
	<!-- comment -->
	<div>
		<span id="cmtWriter">${ses.id }</span>
		<input type="text" id="cmtText" placeholder="Enter a Comment">
		<button type="button" id="cmtPostBtn">Add</button>
	</div>
	<!-- comment -->
	<div>
		<ul id="cmtListArea">
			<li>
				<div>
				<div>Writer</div>
					Content for Comment
				</div>
				<span>Mod_date</span>
			</li>
		</ul>
	</div>
<script type="text/javascript">
	const bnoVal = `<c:out value="${boardDTO.bvo.bno}" />`;
	console.log(">>> bno > " + bnoVal);
</script>
<script type="text/javascript" src="/resources/js/boardComment.js"></script>
<script type="text/javascript">
	getCommentList(bnoVal);
</script>
</body>
</html>