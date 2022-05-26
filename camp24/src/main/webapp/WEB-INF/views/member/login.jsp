<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" type="text/css" href="/camp24/resources/css/w3.css">
<link rel="stylesheet" type="text/css" href="/camp24/resources/css/base.css">
<script type="text/javascript" src="/camp24/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/camp24/resources/js/camp24/login.js"></script>
<style type="text/css">
	label {
		font-size: 16pt;
	}
	
	#msg {
		font-size: 20pt;
		font-weight: bold;
		color: indigo;
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

	<div class="w3-content w3-center mx650">
		<h1 class="w3-dark-gray w3-padding w3-card-4">로그인</h1>
		<form method="POST" action="" class="w3-col w3-padding w3-card-4 w3-margin-top" id="frm" name="frm">
			<div class="w3-col w3-margin-top">
				<label for="id" class="w3-col s2 w3-right-align w3-text-grey">아이디: &nbsp;</label>
				<div class="w3-col m9 pdl10">
					<input type="text" name="id" id="id" placeholder="내용을 입력해주세요"
							class="w3-col w3-input w3-border w3-round-medium">
				</div>
			</div>
			<div class="w3-col w3-margin-top w3-margin-bottom">
				<label for="pw" class="w3-col s2 w3-right-align w3-text-grey">비밀번호 : &nbsp;</label>
				<div class="w3-col m9 pdl10">
					<input type="password" name="pw" id="pw" placeholder="내용을 입력해주세요"
							class="w3-col w3-input w3-border w3-round-medium">
				</div>
			</div>
		</form>
		<div class="w3-col w3-margin-top w3-card-4 w3-center w3-margin-bottom">
			<div class="w3-col w3-button w3-blue-gray" id="lbtn">로그인</div>
		</div>

		<div class="w3-col w3-margin-top w3-card-4">
			<div class="w3-third w3-button w3-dark-gray " id="lckbtn">아이디찾기</div>
			<div class="w3-third w3-button w3-light-gray " id="pckbtn">비밀번호찾기</div>
			<div class="w3-third w3-button w3-gray " id="jbtn">회원가입</div>
		</div>
		<div class="w3-col w3-padding w3-card-4 w3-hide"><span id="msg">${SID} 님은 이미 로그인했습니다!!!</span></div>
	</div>
</body>
</html>