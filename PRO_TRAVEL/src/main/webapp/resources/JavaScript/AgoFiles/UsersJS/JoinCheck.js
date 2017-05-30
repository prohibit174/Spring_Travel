
$(function(){
	$('.nlogin_btn').click(function(){
		if($('#u_id').val()==""){
			alert('아이디는 필수 사항 입니다.');
			$('#u_id').focus();
			return false;
		}else if($('#pwcheck').val()==""){
			alert('비밀번호를 확인 해주세요.');
			$('#pwcheck').focus();
			return false;
		}else if($('#u_name').val()==""){
			alert('닉네임을 설정해주세요');
			$('#u_name').focus();
			return false;
		}else if($('#u_birth').val()==""){
			alert('생일을 입력해주세요.');
			$('#u_birth').focus();
			return false;			
		}else if($('#u_address').val()==""){
			alert('거주 지역을 입력해주세요.');
			$('#u_address').focus();
			return false;			
		}else if($('#law_agree').is(":checked")==false){
			alert('이용 약관에 동의가 필요합니다.');
			return false;
		}else if($('#priv_agree').is(':checked')==false){
			alert('개인정보수집에 동의가 필요합니다.');
			return false;
		}else{
			alert('회원가입을 환영합니다.');
			$(document.getElementsByClassName('join_form').submit());
			
		}		
			return false;
		
	})
})