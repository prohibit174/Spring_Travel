//id확인
$(function(){
	
	var regexp = "^[a-z0-9]"
	
	$("#u_idcheck").click(function(){
		$.ajax({
			url : "IdCheckAction.users",
			type : "post",
			data : $("#u_id").serialize(),
			success : function(data){
				if(data>0){
					alert("사용중인 아이디 입니다")
				}else if($("#u_id").val().length<5 || $("#u_id").val().length>12){
					alert('아이디는 4~12자로 등록해주세요.');
				}else if(!$("#u_id").val().match(regexp)){
					alert('아이디는 알파벳 소문자, 숫자로 구성됩니다.');
				}else{
					$('#idcheck').text(''); 
					$('#idcheck').html('사용가능한 아이디 입니다.'); 
				}
			}
		
		})
	})
	
	
})