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
	<title>코로나 블루 우울증 검사 결과</title>
</head>
<style>
	button[type="submit"] {
	background-color: black;
	color: #E0E0E0;
	padding: 10px 40px 10px 40px; 
	border: 2px solid black;
	border-radius: 20px;
	font-size: 16px;
	outline: none;
	margin: 20px 0px 0px 700px;

	}
	
	#result {
	background-color: #E0E0E0;
	  padding: 0px 20px 10px 20px; 
	  border: 2px solid black;
	  border-radius: 20px;
	  margin: 100px 50px 0px 50px;  /*top right bottom left*/
	  outline: none;

	}
	
	#score {
	color: black;
	padding: 10px 0px 10px 0px; 
	border: 2px solid black;
	border-radius: 20px;
	font-size: 16px;
	outline: none;
	margin: 100px 600px 50px 600px;
	text-align: center;
	
	}
</style>
<body>
<div id="score">
<p>당신의 점수는 : </p> 
<% 
	String result = request.getParameter("option");
	
	out.println(result);
%>
</div>
<form action="../">
<div id="result">
	<h6>0~5점 : 코로나에 기죽지 않는 당신은 씩씩한 파워적응러!</h6>
	<p>힘든 코로나 시대에도 나아질 것이라는 낙관과, 특유의 적응력을 발휘하고 계시군요! 당신에게는 건강한 에너지와 풍성한 심리적 자원이 있으신 것 같아요! 지금처럼 계속 감정을 다스리며 새로운 규범에 적응하고, 자신을 돌본다면 건강하게 이 시기를 이겨낼 수 있을거예요 :) 다른 사람들에게도 안정을 주는 씩씩한 당신, 항상 건강한 그 미소 잃지 않기를 바랍니다!! 우리 마스크 벗고 만날 날까지! 화이팅!</p>
	<h6>6~15점 : 가벼운 코로나 스트레스를 겪고 계시는군요</h6>
	<p>누구나 겪는 일이라고 열심히 참고는 있지만 많은 스트레스가 쌓인 상태이시군요! 조금씩 지쳐간다는 느낌이 드실 것 같습니다. 사람마다 느끼는 감정의 정도는 모두 다를 수 있고, 우울감은 초기에 관리하는 것이 무엇보다 중요합니다. 자신의 우울, 불안, 공포와 같은 감정을 절대 방치하지 마시기를 바라요. 스트레스를 극복하고 활기찬 일상을 얻으시기를 바랍니다! </p>
	<h6>16~21점 : 코로나로 인해 심리건강에 적신호가 켜졌습니다</h6>
	<p>아이고...많이 힘드셨군요ㅠㅠ 코로나로 인해 혹시 일상이나 미래의 모습이 많이 달라지신 건 아닐까 마음이 아픕니다. 이 점수는 사실 높은 수준의 우울이나 불안을 느끼고 있다는 것을 의미합니다. 코로나 시대에 대한 피로도로 인해 무기력함도 클 수 있습니다. 당신은 아무것도 잘못한 것이 없어요..하지만 회복하기 위해서는 조금 더 스스로를 돌봐야합니다 </p>
	<h6>22점~30점 : 코로나 블루 치료가 당장 필요합니다</h6>
	<p>이 점수를 받으셨다면 당신은 매우 위험한 상태일 수 있습니다. 마스크 뒤에 숨겨진 얼굴에 얼마나 깊은 그늘이 있을지 정말 마음이 아프네요.. 개인의 자발적인 노력으로 우울감을 극복하기는 힘든 상황입니다. 지금 바로 전문 심리상담사와 상담하기를 권장합니다. 코로나 바이러스는 모두에게 충격과 두려움을 안겨주었으며, 우리는 힘든 시기를 살아가고 있지만 결국에는 좋은 날이 올것이라는 걸 믿어야 합니다. 우리 모두 마스크를 벗고 환하게 웃으며 만날 떄까지 당신이 건강하시기를 진심으로 바랍니다 </p>
</div>
<div id = "resultButton"></div>
		<button type="submit">홈으로</button>
	</div>
</form>
</body>
</html>