<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.spring.CRUDSBoard.board.BoardDAO, com.spring.CRUDSBoard.board.BoardVO, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<title>Blow Blue</title>
	<link rel="stylesheet" href="${path}/resources/css/style.css" />
	
	<script>
		function delete_ok(id){
			var a = confirm("정말로 삭제하겠습니까?");
			if(a) location.href='deleteok/' + id;
		}
	</script>
</head>
<body class="background">

<h1 class="container text-center"><img src="${path}/resources/img/title.png" width="500" height="115"><br/></h1>

<table id="list">
<tr>
	<th>No</th>
	<th>카테고리</th>
	<th>제목</th>
	<th>글쓴이</th>
	<th>내용</th>
	<th>작성일자</th>
	<th>수정</th>
	<th>삭제</th>
</tr>

<c:forEach items="${list}" var="u" varStatus="status">
	<tr>
		<td>${fn:length(list)-status.index}</td>
		<td>${u.category}</td>
		<td>${u.title}</td>
		<td>${u.writer}</td>
		<td>${u.content}</td>
		<td>${u.regdate}</td>
		<td><a href="editform/${u.seq}">수정</a></td>
		<td><a href="javascript:delete_ok('${u.seq}')">삭제</a></td>
	</tr>
</c:forEach>
</table>
<br/>
	<div class="lleft">
		<a role="button" class="btn btn-success" href="../"><span class="glyphicon glyphicon-arrow-left"></span> 메인 화면</a>
	</div>
	
	<div class="rright">
		 <a role="button" class="btn btn-success" href="add"> 신규 게시물 추가</a>
	</div>
	
</body>
</html>