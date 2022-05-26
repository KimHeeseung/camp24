<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠핑의 모든것</title>
<link rel="stylesheet" type="text/css" href="/camp24/resources/css/w3.css">
</head>
<body>
	<c:if test="${empty SID}">
				<div class="w3-col w3-border-bottom">
					<span class="w3-col m1 w3-button w3-small w3-dark-gray  w3-right" id="jbtn">Join</span>
					<span class="w3-col m1 w3-button w3-small w3-light-gray  w3-right" id="lbtn">Login</span>
				</div>
</c:if>
				<div class="w3-col" id="btnfr">
<c:if test="${not empty SID}">
					<script type="text/javascript">
						alert('${SID} 님이 로그인했습니다.');
					</script>

					<div class="w3-col w3-border-bottom pdb3">
						<span class="w3-cell m2 w3-button w3-small w3-gray w3-right mt0" id="obtn">LogOut</span>
						<span class="w3-cell m2 w3-button w3-small w3-dark-gray  w3-right mt0" id="ibtn">마이페이지</span>
					</div>
</c:if>
	<div style="width: 100%;">
		<div class="w3-col m3 w3-button w3-blue w3-hover-light-green" id="home"><strong>Camping</strong></div>
	</div>
