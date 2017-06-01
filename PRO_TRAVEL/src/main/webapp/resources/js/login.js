$(function(){
	$('#login-button').click(function(){
			if($('#login-button').text() === "LOGIN"){
				alert("로그인!");
				location.href="login_form";
			}else if($('#login-button').text() === "LOGOUT"){
				location.href = "logoutAction.main";
			}
		});
});