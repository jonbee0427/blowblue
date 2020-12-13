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
	<h1>코로나로 인한 삶의 변화에 억울함이나 분노를 느끼시나요?</h1>
	<img src="https://d2qrvi4l1nprmf.cloudfront.net/images/promotion/channel/covid-19-with-depressive/icon.png">
	<form action="testResult" method="post">
		<div id = "answer">
			<input type="radio" id="opt1" name="option" value="<%=Integer.parseInt(request.getParameter("option"))+0%>">
			<label>그렇지 않아요</label><br>
			<input type="radio" id="opt2" name="option" value="<%=Integer.parseInt(request.getParameter("option"))+1%>">
			<label>조금은 그런 것도 같아요</label><br>
			<input type="radio" id="opt3" name="option" value="<%=Integer.parseInt(request.getParameter("option"))+2%>">
			<label>그런 감정이 자주 드는 편이에요</label><br>
			<input type="radio" id="opt4" name="option" value="<%=Integer.parseInt(request.getParameter("option"))+3%>">
			<label>화가 나고 억울해서 아무것도 할 수 없을 지경이에요</label><br>
			
		</div>
		</div>
		<button type="submit">다음 문제</button>
	</form>

</body>
</html>