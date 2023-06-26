<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board List Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
</head>
<body style="padding: 2rem;">
<jsp:include page="../layout/header.jsp"></jsp:include>
	<form action="/board/list" method="get">
		<div class="select is-normal" style="display: flex;">
		<c:set var="typed" value="${ph.pgvo.type }"/>
			<select name="type">
				<option value="t" ${typed eq 't' ? 'selected':'' }>Title</option>
				<option value="c" ${typed eq 'c' ? 'selected':'' }>Content</option>
				<option value="w" ${typed eq 'w' ? 'selected':'' }>Writer</option>
				<option value="tc" ${typed eq 'tc' ? 'selected':'' }>Title and Contnent</option>
				<option value="tw" ${typed eq 'tw' ? 'selected':'' }>Title and Writer</option>
				<option value="cw" ${typed eq 'cw' ? 'selected':'' }>Content and Writer</option>
				<option value="tcw" ${typed eq 'tcw' ? 'selected':'' }>All</option>
			</select>
			<input type="text" name="keyword" value="${ph.pgvo.keyword }" placeholder="Search" style="border-radius: 8px; margin: 0 8px;">
			<input type="hidden" name="pageNo" value="1">
			<input type="hidden" nme="qty" value="${ph.pgvo.qty }">
			<button type="submit" class="btn btn-secondary">Search!</button>
		</div>
	</form>
	<table class="table">
	  <thead>
	    <tr>
	      <th scope="col">Board Number</th>
	      <th scope="col">Title</th>
	      <th scope="col">Writer</th>
	      <th scope="col">Register Date</th>
	      <th scope="col">Read Count</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach items="${list }" var="bvo">
	    <tr>
	      <th scope="row">${bvo.bno }</th>
	      <td><a href="/board/detail?bno=${bvo.bno }">${bvo.title }</a></td>
	      <td>${bvo.writer }</td>
	      <td>${bvo.reg_date }</td>
	      <td>${bvo.read_count }</td>
	    </tr>
	    </c:forEach>
	  </tbody>
	</table>
	<!-- paging line -->
	<div>
   	<c:if test="${ph.prev }">
     	<a href="/board/list?PageNo=${ph.startPage - 1 }&qty=${ph.pgvo.qty}&type=${ph.pgvo.type}&keyword=${ph.pgvo.keyword}"> ◀ </a>
   	</c:if>
   
   	<c:forEach begin="${ph.startPage }" end="${ph.endPage }" var="i">
      	<a href="/board/list?pageNo=${i }&qty=${ph.pgvo.qty}&type=${ph.pgvo.type}&keyword=${ph.pgvo.keyword}">${i } | </a>
   	</c:forEach>
   
   	<c:if test="${ph.next }">
      	<a href="/board/list?PageNo=${ph.endPage + 1 }&qty=${ph.pgvo.qty}&type=${ph.pgvo.type}&keyword=${ph.pgvo.keyword}"> ▶ </a>
   	</c:if>
   	</div>
   	
</body>
</html>