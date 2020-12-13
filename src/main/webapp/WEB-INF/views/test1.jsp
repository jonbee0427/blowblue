<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
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
<title>코로나 블루 우울증 검사</title>
<style>
	button[type="submit"] {
	background-color: lightblue;
	color: black;
	padding: 10px 40px 10px 40px; 
	border: 2px solid black;
	border-radius: 20px;
	font-size: 16px;
	outline: none;
	margin: 20px 0px 0px 700px;
	}
</style>
</head>
<body>
<div id = "question" style = "display : block;">
<h1>코로나 이후 슬픈 감정을 느낄 때가 있나요?</h1>
<img src="https://d2qrvi4l1nprmf.cloudfront.net/images/promotion/channel/covid-19-with-depressive/icon.png">
   <form action="test2" method="post" >
	   <div id = "answer">
	      <input type="radio" name="option" value="0" >
	      <label>전혀 슬프지 않아요</label><br>
	      <input type="radio" name="option" value="1" >
	      <label>슬픈 편이에요</label><br>
	      <input type="radio" name="option" value="2" >
	      <label>항상 슬프고 기운이 안나요</label><br>
	      <input type="radio" name="option" value="3" >
	      <label>너무 슬프고 불행해서 견딜 수 없어요</label><br>
	    </div>
	    </div>
		<button type="submit">다음 문제</button>
	</form>
</body>
</html>