//암호확인
$(function(){ 
	var regexp = "^(?=([a-zA-Z]+[0-9]+[a-zA-Z0-9]*|[0-9]+[a-zA-Z]+[a-zA-Z0-9]*)$)";
	//숫자, 영어 대/소문자 조합으로 6-12자리


	$('#u_pwd').keyup(function(){ 
		$('#check').text(''); 

		if($('#u_pwd').val().length<6 || $('#u_pwd').val().length>12){ 
			$('#check').text(''); 
			$('#check').html('적합하지 않은 길이입니다'); 
		} 
		if(!($('#u_pwd').val().match(regexp)))
	/*	if( !regexp.test($('#u_pwd').val()))*/{ 
			$('#check').text(''); 
			$('#check').html('조건에 맞지않습니다'); 
		} 
	}); 

	$('#pwcheck').keyup(function(){ 
		if($('#u_pwd').val()!=$('#pwcheck').val()){ 
			$('#check').text(''); 
			$('#check').html('암호를 다시 확인하세요'); 
		} else{ 
			$('#check').text(''); 
			$('#check').html(''); 
		} 
	});
})



