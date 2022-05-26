<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>faq 게시판</title>
<link rel="stylesheet" type="text/css" href="/camp24/resources/css/w3.css">
<link rel="stylesheet" type="text/css" href="/camp24/resources/css/user.css">
<script type="text/javascript" src="/camp24/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/camp24/resources/js/camp24/board.js"></script>
<style type="text/css">
	label {
		font-size: 14pt;
		/* font-weight: bold; */
		color: gray;
		padding-right: 20px;
		text-align: right;
	}
	input[type="file"].w3-margin-bottom {
		margin-bottom: 5px!important;
	}
</style>
</head>
<body class="w3-light-grey">
<!-- w3-content defines a container for fixed size centered content, 
and is wrapped around the whole page content, except for the footer in this example -->
<div class="w3-content" style="max-width:1400px">

<!-- Header -->
<header class="w3-container w3-center w3-padding-32"> 
  <h1><b><a href="/camp24/main.cmp">Main Sample</a></b></h1>
  <p>Welcome to the blog of <span class="w3-tag">unknown</span></p>
</header>

	<div class="w3-content mxw700 ">
		<h1 class="w3-light-gray w3-padding w3-left">FAQ</h1>
		<div class="w3-col w3-card-4 frmpadding">
			<div class="w3-col w3-margin-top w3-margin-bottom">
				<label class="w3-col s2">제목 : </label>
				<h4 id="title" class="w3-col m10">${DATA.title}</h4>
			</div>
			<div class="w3-col w3-margin-top w3-margin-bottom">
				<label class="w3-col s2">답변 : </label>
				<h4 id="body" class="w3-col m10">${DATA.body}</h4>
			</div>
		</div>
		
		<div class="w3-margin-top w3-col w3-center">
			<div class="w3-button w3-gray w3-margin-top" id="listbtn">목록</div>
	</div>
	
	<form method="POST" action="/camp24/board/faqList.cmp" id="pageFrm" name="pageFrm">
		<input type="hidden" name="nowPage" value="${param.nowPage}">
	</form>
</body>
</html>