<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ page session="false" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<title>Blow Blue</title>
	<link rel="stylesheet" href="${path}/resources/css/style.css" />
</head>
<body>

	<div class="split left">
	  <div class="centered">
	    <img src="${path}/resources/img/form.png"><br/>
	    <p><br/><button type="button" class="btn btn-success" onclick="location.href='board/test1'">테스트 시작!</button></p>
	  </div>
	</div>
	
	<div class="split right">
	  <div class="centered">
	    <img src="${path}/resources/img/community.png"><br/>
	    <p><br/><button type="button" class="btn btn-success" onclick="location.href='board/list'">게시글 이동!</button></p>
	  </div>
	</div>


</body>
</html>
