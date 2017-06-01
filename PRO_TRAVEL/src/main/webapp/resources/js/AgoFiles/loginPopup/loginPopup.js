$(document).ready(function(){
	$('.btn-new-plan').click(function(){
		if($('.btn-new-plan').text() === "로그인"){
		var popUrl = "login.main";
		var popOption = "width= 400, height=300, resizable=no, status=no, top=250, left= 500;";
		window.open(popUrl, "" , popOption);
		}else if($('.btn-new-plan').text() === "로그아웃"){
			location.href = "logoutAction.main";
		}
	});
	

});
	
