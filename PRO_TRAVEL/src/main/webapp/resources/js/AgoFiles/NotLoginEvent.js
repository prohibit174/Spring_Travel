$(function() {
	//로그인 하지 않고 마이페이지 버튼 눌렀을 때.
	$('.myPage_btn').on('click', function() {
		if ($('.btn-new-plan').text() === "로그인") {
			alert('로그인이 필요합니다');
		} else {
			location.href = "main.mypage";
		}
	});
	//로그인 하지 않고 카풀 등록, 내 카풀 조회 창 눌렀을 때.
	$('.Carpool_Enrollment').on('click', function() {
		if ($('.btn-new-plan').text() === "로그인") {
			alert('로그인이 필요합니다');
		} else {
			location.href = "insertForm.carpool";
		}
	});
	
	$('.My_Carpool').on('click', function() {
		if ($('.btn-new-plan').text() === "로그인") {
			alert('로그인이 필요합니다');
		} else {
			location.href = "carpoolCheck.mypage";
		}
	});
	
	$('.accomp_createRoute').on('click', function() {
		if ($('.btn-new-plan').text() === "로그인") {
			alert('로그인이 필요합니다');
		} else {
			location.href = "accomp_createRoute.accompany";
		}
	});
	
	
});