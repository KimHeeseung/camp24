
 $(document).ready(function(){
	// 회원가입버튼 클릭이벤트
	$('#jbtn').click(function(){
		$(location).attr('href', '/camp24/member/join.cmp');
	});

	$('#lbtn').click(function(){
		$(location).attr('href', '/camp24/member/login.cmp');
	});
	
	$('#obtn').click(function(){
		$(location).attr('href', '/camp24/member/logout.cmp');
	});
	
	$('#mlbtn').click(function(){
		$(location).attr('href', '/camp24/member/memberList.cmp');
	});
	
	$('#ibtn').click(function(){
		$(location).attr('href', '/camp24/member/myInfo.cmp');
	});
});