$(function(){
	$('.nlogin_join_center').click(function(){
		if($('#pwcheck').val()==""){
			alert('비밀번호를 확인 해주세요.');
			$('#pwcheck').focus();
			return false;		
		}else if($('#u_address').val()==""){
			alert('거주 지역을 입력해주세요.');
			$('#u_address').focus();
			return false;			
		}else{
			alert('수정 완료.');
			$(document.getElementsByClassName('join_form').submit());

		}
		
		return false;
	})
})