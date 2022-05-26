<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BlackPink 게시판 리스트</title>
<link rel="stylesheet" type="text/css" href="/camp24/resources/css/w3.css">
<link rel="stylesheet" type="text/css" href="/camp24/resources/css/user.css">
<script type="text/javascript" src="/camp24/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/camp24/resources/js/camp24/board.js"></script>
<style type="text/css">
	html, body {
		height: 100%;
		margin: 0px;
		padding: 0px;
	}
	.w3-button {
		padding: 1px 16px;
	}
	.mid {
		position: relative;
		top: 5px;
		right: 5px;
	}
	.brdList {
		cursor: pointer;
	}
</style>
<script type="text/javascript">
</script>
</head>
<body class="w3-light-grey">
	<form method="POST" action="/camp24/board/fqaDetail.cmp" id="frm" name="frm">
		<input type="hidden" name="nowPage" value="${PAGE.nowPage}">
		<input type="hidden" name="bno" >
	</form>
	<div class="w3-content mxw700">
		<!-- 페이지 헤더 -->
		<header class="w3-col w3-card-4 mgb20">
			<h1 class="w3-gray w3-center w3-padding w3-card-4 mg0">FQA</h1>
			</nav>
		</header>
		
		<div class="w3-col w3-white w3-card-4 w3-round-large pd15">
			<div class="w3-col w3-light-grey w3-center w3-border">
				<div class="w3-col m3">
					<div class="w3-col m7 w3-border-right">글번호</div>
				</div>
				<div class="w3-col m6 w3-border-center">글제목</div>
				<div class="w3-col m2 w3-border-left">작성일</div>
				<div class="w3-col m1 w3-border-left">조회수</div>
			</div>
<c:forEach var="data" items="${LIST}">
			<div class="w3-col w3-white w3-center w3-border-bottom w3-border-left w3-border-right brdList" id="${data.bno}">
				<div class="w3-col m3">
					<div class="w3-col m7 w3-border-right">${data.bno}</div>
				</div>
				<div class="w3-col m6 w3-border-center">${data.title}</div>
				<div class="w3-col m2 w3-border-left">${data.sdate}</div>
				<div class="w3-col m1 w3-border-left">${data.click}</div>
			</div>
</c:forEach>
		</div>
		
		<!-- 페이지 처리 시작 -->
		<div class="w3-center">
			<div class="w3-bar w3-border w3-round-medium w3-card w3-margin-top w3-margin-bottom">
	<c:if test="${PAGE.startPage eq 1}">
				<div class="w3-bar-item w3-light-grey">&laquo;</div>
	</c:if>
	<c:if test="${PAGE.startPage ne 1}">
				<div class="w3-bar-item w3-button  pbtn" id="${PAGE.startPage - 1}">&laquo;</div>
	</c:if>
	<c:forEach var="page" begin="${PAGE.startPage}" end="${PAGE.endPage}">
			<c:if test="${page eq PAGE.nowPage}">
				<div class="w3-bar-item w3-gray">${page}</div>
			</c:if>
			<c:if test="${page ne PAGE.nowPage}">
				<div class="w3-bar-item w3-button  pbtn" id="${page}">${page}</div>
			</c:if>
	</c:forEach>
			<c:if test="${PAGE.endPage eq PAGE.totalPage}">
				<div class="w3-bar-item w3-light-grey">&raquo;</div>
			</c:if>
			<c:if test="${PAGE.endPage ne PAGE.totalPage}">
				<div class="w3-bar-item w3-button pbtn" id="${PAGE.endPage + 1}">&raquo;</div>
			</c:if>
			</div>
		</div>
		<!-- 페이지 처리 태그 끝 -->
		<form method="POST" action="/camp24/board/fqaList.cmp" id="pageFrm" name="pageFrm">
			<input type="hidden" name="nowPage" id="nowPage" value="${PAGE.nowPage}">
		</form>
	</div>
</body>
</html>