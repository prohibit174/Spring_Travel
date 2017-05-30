$(document).ready(function() {
	window.onload = function() {
	if($('.btn-new-plan').text() === "로그인"){
		if ($('#frames span').text() != '') {
			var html = '';
			html += '<span> 님 환영합니다 </span>';
			$('#frames').append(html);

			/*$('.btn-new-plan').empty();
			$('.btn-new-plan').append("로그아웃");*/
			$('.btn-new-plan').text("로그아웃")

		}
	}else if($('.btn-new-plan').text() === "로그아웃"){
		$('.btn-new-plan').text("로그인");
		$('#frames').empty();
	}
	}

});