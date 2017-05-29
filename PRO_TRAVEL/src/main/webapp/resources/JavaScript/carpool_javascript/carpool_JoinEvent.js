var _mario = _mario || {};

// 만드는 중
_mario.join = {

	helpIcon : '<img src="//img.tourtips.com/images/join/tipbox_w.gif" alt="" />'
	, exprID : /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i
	//, exprPW : /^[a-zA-Z0-9!@#$%^&*]{8,20}$/
	, exprPW : /^.*(?=^.{8,20}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=*]).*$/
	, exprName : /^[가-힣ㄱ-ㅎㅏ-ㅣa-zA-Z0-9!@#$%^&*]{2,20}$/

	, errCode : {
		e000 : '완료'
		,e100 : '이메일을 입력해주세요.'
		,e101 : '올바른 이메일 주소가 아닙니다.'
		,e102 : '이미 가입된 이메일 입니다. <a href="//www.tourtips.com/ap/members/login/">로그인 하기</a>'
		,e103 : '이미 가입된 이메일 입니다. 하지만 인증되지 않은 이메일 입니다. <a href="javascript:_mario.join.progress();">인증 안내</a>'
		,e104 : '탈퇴한 이메일은 '
		//,e104 : '탈퇴한 이메일입니다. 탈퇴 후 24시간 이후에 재가입 가능합니다.'
		,e105 : '계정 확인이 필요합니다. 고객센터로 문의해주세요. <a href="http://www.tourtips.com/ap/helpdesk/question/">고객 센터</a>'
		,e106 : '회원정보 메일을 제외한 나머지 메일을 받으실 수 있습니다.'
		,e107 : '가입이 불가능한 이메일 주소입니다. 1회용 이메일의 가입을 허용하지 않습니다.'
		,e200 : '영문,숫자,특수문자(!@#$%^&*)를 포함하여 8-20자'
		,e201 : '비밀번호 확인을 입력해주세요.'
		,e202 : '비밀번호와 일치하지 않습니다.'
		,e203 : '비밀번호를 잊어버렸나요?  <a href="//www.tourtips.com/ap/members/recover/">비밀번호 찾기</a>'
		,e204 : '비밀번호를 입력해주세요.'
		,e205 : '새 비밀번호 확인을 입력해주세요.'
		,e206 : '새 비밀번호와 일치하지 않습니다.'
		,e207 : '현재 비밀번호와 동일합니다.'
		,e300 : '이름을 입력해주세요.'
		,e301 : '한글 1~10,영문,숫자,특수문자(!@#$%^&*) 2~20 (혼용 가능)'
		,e302 : '이름의 길이는 한글 1~10자, 영문,숫자,특수문자(!@#$%^&*) 2~20자 입니다.'
		,e400 : '생년월일을 확인해주세요. \r\n본인 확인을 위해 꼭 필요한 정보입니다.'
		,e401 : '성별을 선택해주세요. \r\n본인 확인을 위해 꼭 필요한 정보입니다.'
		,e402 : '서비스 이용을 위해 이용약관에 동의가 필요합니다.'
		,e403 : '서비스 이용을 위해 개인정보수집 및 이용동의가 필요합니다.'
		,e500 : '인증메일이 재발송 되었습니다.'
		,e501 : '지금 이메일 재발송이 되지 않고 있습니다.\r\n계속 안되면 고객센터로 문의해주시기 바랍니다.'
		,e502 : '이미 회원가입이 완료되었습니다. \r\n가입한 계정으로 로그인 해보시기 바랍니다.'
		,e503 : '휴면계정으로 전환된 계정입니다. <a href="//www.tourtips.com/ap/members/login/">휴면계정 활성화 하기</a>' //150827 휴면계정 관련 추가
	}

	, charLen : function (o) {
		var i, l=0, p = $.trim(o.val()), t = p.length;
		for(i=0; i< t; i++) {
			(p.charCodeAt(i)  > 255) ? l+=2 : l++;
		}
		return l;
	}

	, validateEmpty : function (o) {
		return (!o || !o.val() || $.trim(o.val()) == '') ? false : true;
	}

	, validateExpr : function (o, expr) {
		var pattern = new RegExp(expr);
        var patternCheck = pattern.test( $.trim(o.val()) );
        if(o.attr('name')=='join_pw' || o.attr('name')=='newPass' && patternCheck==true){
			var pw = $.trim(o.val());
			var eng_check = pw.search(/[a-zA-Z]/ig);
			var num_check = pw.search(/[0-9]/g);
			var spe_check = pw.search(/[!@#$%^&*]/gi);
			if(eng_check< 0 || num_check < 0 || spe_check < 0 ){
				patternCheck = false;
			}
		}
		return ( patternCheck ) ? true : false;
	}

	, validateBirth : function (y, m, d) {
		y = parseInt($.trim(y.val())), m = parseInt($.trim(m.val())), d = parseInt($.trim(d.val()));
		return (!y || !m || !d) ? false : true;
	}

	, validateCheck : function(o) {
		return (!parseInt(o.val())) ? false : true;
	}

	, helpDisplay : function (fid, hid, errcode, stat, ffocus, falert) {
		if (stat == 'init') {
			fid.toggleClass('i_text_wrong', false);
			hid.html(_mario.join.helpIcon+errcode).removeClass('i_wrong').addClass('i_tip').show();
			return true;
		} else if (stat == 'ok') {
			errcode = _mario.join.errCode.e000;
			fid.toggleClass('i_text_wrong', false);
			hid.removeClass('i_tip').removeClass('i_wrong').addClass('i_ok').html(errcode);
			return true;
		} else if (stat == 'fix') {
			fid.toggleClass('i_text_wrong', false);
			hid.removeClass('i_wrong').addClass('i_default').show();
			return true;
		}

		fid.toggleClass('i_text_wrong', true);
		hid.removeClass('i_tip').removeClass('i_default').removeClass('i_ok').addClass('i_wrong').html(errcode);

		if (ffocus) {
			fid.focus();
		}

		if (falert) {
			alert(errcode);
		}

		return false;
	}
	, showHelper : function(fid,hid,message,stat,ffocus,falert){

		if(stat == 'init' || stat == 'ok' || stat == 'fix'){
			hid.css('color','#666').html(message);
			fid.removeClass('i_text_wrong');
			return true;
		}else{
			hid.css('color','#ff7b11').html(message);
			fid.addClass('i_text_wrong');
		}

		if (ffocus) {
			fid.focus();
		}

		if (falert) {
			alert(message);
		}

		return false;
	}
}

$('#join_form').submit( function() {
	var mario = _mario.join
	, id = $('#join_id')
	, id_h = $('#join_id_helper')
	, pw = $('#join_pw')
	, pw_h = $('#join_pw_helper')
	, rpw = $('#join_rpw')
	, rpw_h = $('#join_rpw_helper')
	, name = $('#join_name')
	, name_h = $('#join_name_helper')
	/*
	, year = $('input:checked[name="birth_y"]')
	, month = $('input:checked[name="birth_m"]')
	, day = $('input:checked[name="birth_d"]')
	*/
	, year = $('input[name="birth_y"]')
	, month = $('input[name="birth_m"]')
	, day = $('input[name="birth_d"]')
	, sex = $('input[name="join_sex"]')
	, a_law = $('input:checked[name="law_agree"]')
	, a_priv = $('input:checked[name="priv_agree"]')
	, pw_val = rpw_val = null;

	if (! mario.validateEmpty(id) ) {
		mario.showHelper(id, id_h, mario.errCode.e100, null, true, true);
		return false;
	}

	if (! mario.validateExpr(id, mario.exprID) ) {
		mario.showHelper(id, id_h, mario.errCode.e101, null, true, true);
		return false;
	}

	$.ajax({
		type: "POST",
		url: "/ap/members/find/",
		data: { e: $(this).val() }
	}).done(function( msg ) {
		if (msg != '') { msg = $.trim(msg); }
		var result_msg = msg.split('||');
		msg = result_msg[0];

		if (msg == 'R') {
			mario.showHelper($(this), id_h, mario.errCode.e103, null, true, true);
			return false;
		} else if (msg == 'U' || msg == 'S') {
			mario.showHelper($(this), id_h, mario.errCode.e102, null, true, true);
			return false;
		} else if(msg == 'E') {
			mario.showHelper($(this), id_h, mario.errCode.e104 + result_msg[1], null, true, true);
			return false;
		} else if(msg == 'B') {
			mario.showHelper($(this), id_h, mario.errCode.e107, null, true, true);
			return false;
		} else if(msg == 'Q') {
			mario.showHelper($(this), id_h, mario.errCode.e503, null, true, true); //150827 휴면계정 관련 추가
			return false;
		} else if(msg != 'N') {
			mario.showHelper($(this), id_h, mario.errCode.e105, null, true, true);
			return false;
		}
	});

	pw_val = $.trim(pw.val());
	rpw_val = $.trim(rpw.val());

	pw.val(pw_val);
	rpw.val(rpw_val);

	if (!mario.validateEmpty(pw)) {
		mario.showHelper(pw, pw_h, mario.errCode.e204, null, true, true);
		return false;
	}

	if (!mario.validateExpr(pw, mario.exprPW)) {
		var passMsg = '비밀번호의 형식을 확인해주세요.\n' + mario.errCode.e200 + '\n연속적인 숫자나 생일, 전화번호 등 추측하기 쉬운 정보 및\n아이디와 비슷한 비밀번호는 사용하지 않는 것을 권장';
		mario.showHelper(pw, pw_h, passMsg, null, true, true);
		return false;
	}

	if (! mario.validateEmpty(rpw) ) {
		mario.showHelper(rpw, rpw_h, mario.errCode.e201, null, true, true);
		return false;
	}

	if (! mario.validateExpr(rpw, mario.exprPW) ) {
		mario.showHelper(rpw, rpw_h, mario.errCode.e200, null, true, true);
		return false;
	}

	if (pw.val() !== rpw.val() ) {
		mario.showHelper(rpw, rpw_h, mario.errCode.e202, null, true, true);
		return false;
	}

	if (!mario.validateEmpty(name)) {
		mario.showHelper(name, name_h, mario.errCode.e300, null, true, true);
		return false;
	}

	if (!mario.validateExpr(name, mario.exprName)) {
		mario.showHelper(name, name_h, '이름의 형식을 확인해주세요.\n' + mario.errCode.e301, null, true, true);
		return false;
	}

	var name_len = mario.charLen(name);
	if (name_len < 2 || name_len > 20) {
		mario.showHelper(name, name_h, '이름의 길이를 확인해주세요\n'+mario.errCode.e302, null, true, true);
		return false;
	}

	if (!mario.validateBirth(year,month,day)) {
		alert(mario.errCode.e400);
		return false;
	}

	if (!mario.validateCheck(sex)) {
		alert(mario.errCode.e401);
		return false;
	}

	if (!mario.validateCheck(a_law)) {
		alert(mario.errCode.e402);
		return false;
	}

	if (!mario.validateCheck(a_priv)) {
		alert(mario.errCode.e403);
		return false;
	}
});

_mario.join.progress = function () {
	var id = $('#join_id');
	if (!id.val()) {
		return false;
	}
	id = $.trim(id.val());
	url = '//www.tourtips.com/ap/members/join/?step=progress&id='+id;
	document.location.replace(url);
}

$('#resend').click(function () {
	$.ajax({
		type: "POST",
		url: "/ap/members/resend/",
		data: { id: $(this).attr('data') }
	}).done(function( msg ) {
		msg = $.trim(msg);

		if(msg == 'Y') {
			alert(_mario.join.errCode.e500);
			return false;
		} else if (msg == 'A') {
			alert(_mario.join.errCode.e502);
			document.location.replace('//www.tourtips.com/ap/members/login/');
			return false;
		} else if (msg == 'N') {
			alert(_mario.join.errCode.e501);
			return false;
		}
	});

});

$('#help_question').click(function () {
	document.location.replace('//www.tourtips.com/ap/helpdesk/question/');
});

$('#join_id').focusin( function() {
	_mario.join.showHelper($(this), $('#join_id_helper'), _mario.join.errCode.e100, 'init');
}).focusout( function() {

	var mario = _mario.join, help = $('#join_id_helper');

	if (! mario.validateEmpty($(this)) ) {
		mario.showHelper($(this), help, mario.errCode.e100);
		return;
	}

	if (! mario.validateExpr($(this), mario.exprID) ) {
		if($('#join_email_host').val()){
			var errCode = mario.errCode.e101;
		}else{
			var errCode = mario.errCode.e100;
		}
		mario.showHelper($(this), help, errCode);
		return;
	}

	$.ajax({
		type: "POST",
		url: "/ap/members/find/",
		data: { e: $(this).val() }
	}).done(function( msg ) {
		if (msg != '') { msg = $.trim(msg); }
		var result_msg = msg.split('||');
		msg = result_msg[0];

		if (msg == 'R') {
			mario.showHelper($(this), help, mario.errCode.e103);
			return;
		} else if (msg == 'U' || msg == 'S') {
			mario.showHelper($(this), help, mario.errCode.e102);
			return;
		} else if(msg == 'E') {
			mario.showHelper($(this), help, mario.errCode.e104 + result_msg[1]);
			return;
		} else if(msg == 'B') {
			mario.showHelper($(this), help, mario.errCode.e107);
			return;
		} else if(msg == 'Q') {
			mario.showHelper($(this), help, mario.errCode.e503); //150827 휴면계정 관련 추가
			return;
		} else if(msg != 'N') {
			mario.showHelper($(this), help, mario.errCode.e105);
			return;
		} else {
			mario.showHelper($(this), help, mario.errCode.e000, 'ok');
			return;
		}

	});

	//mario.helpDisplay($(this), help, mario.errCode.e000, 'ok');
	//$('#join_id_help').hide();

});

function emailCopy(trigger){
	var emailId   = $('#join_email_id').val();
	var emailHost = $('#join_email_host').val();
	var eamil = emailId+'@'+emailHost;

	$('#join_id').val(eamil);
	if(trigger){
		$('#join_id').trigger(trigger);
	}
}

$('#content').on('focusin','#join_email_id, #join_email_host',function(){
	emailCopy();
	$('#join_id').trigger('focusin');
}).on('focusout','#join_email_id, #join_email_host',function(){
	emailCopy();
	$('#join_id').trigger('focusout');
});
/*
$('#join_email_id, #join_email_host').on('focusin',function(){
	emailCopy();
	$('#join_id').trigger('focusin');
}).on('focusout',function(){
	emailCopy();
	$('#join_id').trigger('focusout');
});
*/
/*
$('#emailHost').change(function(){
	var _thisVal = $(this).val();
	$('#join_email_host').val(_thisVal);
	emailCopy();
	if(_thisVal){
		$('#join_id').trigger('focusout');
	}else{
		$('#join_email_host').focus();
	}
});
*/

// 한글 영문 비교, 특수문자 범위 추가
$('#join_pw').focusin( function() {
	_mario.join.showHelper($(this), $('#join_pw_helper'), _mario.join.errCode.e200, 'init');
}).focusout( function() {
	var mario = _mario.join, help = $('#join_pw_helper');

	if (!mario.validateEmpty($(this))) {
		mario.showHelper($(this), help, mario.errCode.e204);
		return;
	}

	if (!mario.validateExpr($(this), mario.exprPW)) {
		mario.showHelper($(this), help, mario.errCode.e200);
		return;
	}

	if ($('#join_rpw').val() == '') {
		mario.showHelper($(this), help, mario.errCode.e201);
		return;
	}


	if ($('#join_rpw').val() != '') {
		if ($('#join_rpw').val() !== $(this).val() ) {
			mario.showHelper($(this), help, mario.errCode.e202);
			return;
		}
	}

	/*
	if ($('#join_rpw').val() != '') {
		if ($('#join_rpw').val() !== $(this).val() ) {
			mario.helpDisplay($(this), help, mario.errCode.e202);
			return;
		}
	}
	*/

	mario.showHelper($(this), help, mario.errCode.e000, 'ok');
	//$('#join_pw_help').hide();
});

$('#join_rpw').focusin( function() {
	//_mario.join.showHelper($(this), $('#join_pw_helper'), _mario.join.errCode.e201, 'init');
}).focusout( function() {
	var mario = _mario.join, help = $('#join_pw_helper');

	if (! mario.validateEmpty($(this)) ) {
		mario.showHelper($(this), help, mario.errCode.e201);
		return;
	}

	if ($('#join_pw').val() !== $(this).val() ) {
		mario.showHelper($(this), help, mario.errCode.e202);
		return;
	}

	if (!mario.validateEmpty($('#join_pw'))) {
		mario.showHelper($('#join_pw'), help, mario.errCode.e204);
		return;
	}

	if (!mario.validateExpr($('#join_pw'), mario.exprPW)) {
		mario.showHelper($('#join_pw'), help, mario.errCode.e200);
		return;
	}

	mario.showHelper($(this), help, mario.errCode.e000, 'ok');
	//$('#join_rpw_help').hide();
});

// 한글 영문 비교, 특수문자 범위 추가
$('#join_name').focusin( function() {
	_mario.join.showHelper($(this), $('#join_name_helper'), _mario.join.errCode.e301, 'init');
}).focusout( function() {
	var mario = _mario.join, help = $('#join_name_helper');

	if (!mario.validateEmpty($(this)) ){
		mario.showHelper($(this), help, mario.errCode.e300);
		return;
	}

	if (!mario.validateExpr($(this), mario.exprName)) {
		mario.showHelper($(this), help, mario.errCode.e301);
		return;
	}

	var name_len = mario.charLen($(this));
	if (name_len < 2 || name_len > 20) {
		mario.showHelper($(this), help, mario.errCode.e302);
		return;
	}

	mario.showHelper($(this), help, mario.errCode.e000, 'ok');
	//$('#join_name_help').hide();
});

try {
	$('#go_mail').click(function() {
		var url = $(this).attr('data');
		window.open(url);
	});

	$('#go_login').click(function() {
		var id = $(this).attr('data'), url = '//www.tourtips.com/ap/members/login/';
		if ($.trim(id) != '') {
			url = url+'?id='+id;
		}
		document.location.replace(url);
	});
} catch(e) {}

var fbset = {};

fbset = {
	init:function(){
		//facebook.init(appid);
	}
	,setInfo:function(){
		// console.log('setInfo');
		FB.getLoginStatus(function(response) {
	        if(response.status == 'connected'){
	        	token = response.authResponse.accessToken;
	        	FB.api('/me',{fields: 'email,name,picture,gender,birthday'},function(res){
	        		// console.log(res);
	        		birthday = (typeof res.birthday == 'undefined')?'':res.birthday;
	        		email    = res.email;
	        		name     = res.name;
	        		sex      = res.gender=='male'?'1':'2';

	        		if(birthday){
	        			tmp = birthday.split('/');
		        		year  = tmp[2];
		        		month = parseInt(tmp[0]);
		        		day   = parseInt(tmp[1]);
	        		}else{
	        			year  = '';
	        			month = '';
	        			day   = '';
	        		}

	        		var email_id   = '';
	        		var email_host = '';
	        		if(email){
	        			var tmp = email.split('@');
	        			email_id   = tmp[0];
	        			email_host = tmp[1];
	        		}

	        		$('#facebookUserName').text(name);
	        		$('input[name=join_id]').val(email);
	        		$('input[name=join_name]').val(name);
	        		$('input[name=join_email_id]').val(email_id);
	        		$('#emailHost').trigger('click');
	        		$('#emailHost').find('a[data-value="'+email_host+'"]').eq(0).trigger('click');
	        		//$('input[name=join_email_host]').val(email_host);
	        		//$('#emailHost').val(email_host);

	        		$('#nlogin_year').trigger('click');
	        		$('#nlogin_year').find('a[data-value="'+year+'"]').eq(0).trigger('click');

	        		$('#nlogin_month').trigger('click');
	        		$('#nlogin_month').find('a[data-value="'+month+'"]').eq(0).trigger('click');

	        		$('#nlogin_day').trigger('click');
	        		$('#nlogin_day').find('a[data-value="'+day+'"]').eq(0).trigger('click');

	        		$('#nlogin_gender').trigger('click');
	        		$('#nlogin_gender').find('a[data-value="'+sex+'"]').eq(0).trigger('click');
	        		
	        		$('#nlogin_price').trigger('click');
	        		$('#nlogin_price').find('a[data-value="'+sex+'"]').eq(0).trigger('click');

	        		$('#nlogin_hour').trigger('click');
	        		$('#nlogin_hour').find('a[data-value="'+sex+'"]').eq(0).trigger('click');

	        		$('#nlogin_minute').trigger('click');
	        		$('#nlogin_minute').find('a[data-value="'+sex+'"]').eq(0).trigger('click');

	        		/*
	        		$('#birth_y').val(year);
	        		$('#birth_m').val(month);
	        		$('#birth_d').val(day);
	        		$('input[name=join_sex][value='+sex+']').attr('checked','checked');
	        		*/

	        		$('input[name=join_email_id]').trigger('focus');
	        		$('input[name=join_id]').trigger('focusout');
	        		$('input[name=join_name]').trigger('focus');

	        		if ($('#join_id').val() =='') {
	        			$('#join_id').focus();
	        		} else {
	        			$('#join_id').trigger('focusout');
	        			$('#join_pw').focus();
	        		}

	        		$('input[name=skey]').val(res.id);
	        		$('input[name=stok]').val(token);
	        		$('input[name=smail]').val(email);


					fb_user_img   = res.picture.data.url;
        			is_silhouette = res.picture.data.is_silhouette;
        			img_url       = 'https://img.tourtips.com/images/common/man_b.gif';

					if (fb_user_img && is_silhouette == false) {
						img_url = fb_user_img;
						$('input[name=spic]').val(fb_user_img);
					}

					$('#facebookUserImage').attr('src',img_url).attr('alt',name);
	        	});
	        }else{
	        	alert('페이스북과의 연결이 원활하지 않습니다.다시 로그인 해주세요.');
	        	fbset.returnToJoin();
	        }
		});
	}
	,returnToJoin:function(){
		location.href = '/ap/members/join/?redirect='+redirect;
	}
	,doLogin:function(){
		facebook.doLogin(scope,function(res){
			if(res.authResponse.userID){
				location.href='/ap/members/join/?step=fb_join&fi='+res.authResponse.userID+'&redirect='+redirect;
			}
		});
	}
	,goFaceBookJoin:function(res){
		if(fbouth == 'Y' && res){
			userId = res.authResponse.userID;
			if(userId){
				url = 'https://www.tourtips.com/ap/members/join/?step=fb_join&fi='+userId+'&redirect='+redirect;
				location.href = url;
			}
		}
	}
	,feedMe:function(){
		var fedd_link    = 'http://www.tourtips.com';
		var feed_name    = '친절한 여행가이드, 투어팁스';
		var feed_message = '투어팁스와 함께 떠날 준비 되셨나요? 이제 투어팁스와 즐거운 여행을 시작합니다~';
		var feed_desc    = '바쁜 대한민국 여행자들을 위해 최근 여행후기와 여행 전문가의 도움을 받아 꼭 가봐야 할 스팟만을 추천해 드리고,꼭 필요한 여행팁만을 쏙쏙 모아 전해드리는 투어팁스!';

		facebook.putFeedMe(fedd_link,feed_name,feed_message,feed_desc,'',function(res){
			//console.log(res);
		});
	}
}

$(function() {

	if(typeof step != 'undefined' && step == 'nv_process'){
		var selGender = gender=='F'?'2':'1';

		$('#emailHost').trigger('click');
		$('#emailHost').find('a[data-value="'+emailHost+'"]').eq(0).trigger('click');

		$('#nlogin_month').trigger('click');
		$('#nlogin_month').find('a[data-value="'+birth_m+'"]').eq(0).trigger('click');

		$('#nlogin_day').trigger('click');
		$('#nlogin_day').find('a[data-value="'+birth_d+'"]').eq(0).trigger('click');

		$('#nlogin_gender').trigger('click');
		$('#nlogin_gender').find('a[data-value="'+selGender+'"]').eq(0).trigger('click');

		$('input[name=join_email_id]').trigger('focus');
		$('input[name=join_id]').trigger('focusout');
		$('input[name=join_name]').trigger('focus');

		if ($('#join_id').val() =='') {
			$('#join_id').focus();
		} else {
			$('#join_id').trigger('focusout');
			$('#join_pw').focus();
		}
	}

    $('#join_name').keydown(function(e){
        var _this = $(this);
    	var name_len = _mario.join.charLen(_this);
        if(name_len > 19){
            var newTxt = _this.val().substring(0,10);
            _this.val(newTxt);
        }
    });

	$('#nvJoinBtn').click(function(){
		var nvJoinUrl = 'https://www.tourtips.com/ap/members/join/?step=nv_join&redirect='+redirect;
		if(nvDisplayType == 'popup'){
			window.open(nvJoinUrl,'nv_app','width=400.height=500');
		}else{
			location.href = nvJoinUrl;
		}
	});
	

});
