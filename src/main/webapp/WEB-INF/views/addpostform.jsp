<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${path}/resources/css/style.css" />
	<title>Blow Blue</title>
</head>
<body class="background">

<h1 class="container text-center"><img src="${path}/resources/img/title.png" width="500" height="115"><br/></h1>
<form action="addok" method="post">
<table id="edit">
	<tr><td>카테고리</td><td><input type="text" name="category"/></td></tr>
	<tr><td>제목</td><td><input type="text" name="title"/></td></tr>
	<tr><td>작성자</td><td><input type="text" name="writer"/></td></tr>
	<tr><td>내용</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
</table>
	<div class="lleft">
	<button type="button"  class="btn btn-success" onclick="location.href='list'"><span class="glyphicon glyphicon-arrow-left"></span> 목록 보기</button>
	</div>
	<div class="rright">
		<button type="submit" class="btn btn-success">게시글 추가</button>
	</div>
</form>

</body>
</html>