$(document).ready(function(){



function setScrapNotViewed(count,mode){
	if(mode == 'set'){
		setCount = count;
	}else{
		preCount = $('#notViewedScrapCount').html();
		preCount = preCount?parseInt(preCount):0;
		setCount = preCount+parseInt(count);
	}
	$('#notViewedScrapCount').html(setCount);
	$('#notViewedScrapCount').attr('class', 'scrap_count');
	//document.getElementById('notViewedScrapCount').setAttribute('class','scrap_count');
}

var notViewdScrap = 0;
var cookieName = "SCRAPINFO";
var search = cookieName+"=";
var cookie = document.cookie;
if( cookie.length > 0 ){
	startIndex = cookie.indexOf( cookieName );
	if( startIndex != -1 ) {
		startIndex += cookieName.length;
		endIndex = cookie.indexOf( ";", startIndex );
		if( endIndex == -1) endIndex = cookie.length;
		notViewdScrap = unescape( cookie.substring( startIndex + 1, endIndex ) );
	}
}

if(notViewdScrap && notViewdScrap > 0){
	setScrapNotViewed(notViewdScrap,'set');
}

$.fn.hitTest = function(x, y){
	var bounds = this.offset();
	bounds.right = bounds.left + this.outerWidth();
	bounds.bottom = bounds.top + this.outerHeight();
	return x >= bounds.left
	&& x <= bounds.right
	&& y <= bounds.bottom
	&& y >= bounds.top;
};

$.fn.profilePicUploaded = function (_act, _func, _type)
{
	var _this = $(this);

	// 기본값 정의.
	var _src = "//img.tourtips.com/module/upload/upload_frame.html";
	var uploadproc = false;
	var _obj;

	// 신규 등록할때마다 태그 갱신.
	$("body").find(".ifr_frame").remove();
	$("body").append('<div class="ifr_frame"><input type="hidden" name="type" value="'+_type+'" /><div id="ifr_result" style="display:none;">result</div><iframe name="upframe" id="upframe" src="" frameborder="0" width="0" height="0"></iframe></div>');
	$("iframe[name=upframe]").attr("src", _src);

	// 파일열기.
	_this.unbind('click').bind('click', function() {
		// 중복클릭방지를 활성화.
		if (uploadproc == true) {
			alert('프로필 이미지가 변경중입니다.\n잠시 후 다시 시도해주세요');
			return false;
		}
		uploadproc = true;

		_obj = window.setTimeout(function() {
			window.clearTimeout(_obj);

			if (typeof(_act) == "undefined" || _act == ""){
				alert("처리대상이 올바르지 않습니다. {action:처리할주소}");
				return false;
			}
			$("form", $("#upframe").contents()).attr("action", _act);
			$(".ifr_frame").find("input[name=type]").val(_type);

			// 결과 처리.
			$("#ifr_result").unbind('click').bind('click', function(data) {
				_func.call(_this, $("#result", $("#upframe").contents()).text());
				$("iframe[name=upframe]").attr("src", _src);
			});

			// 파일 선택 처리.
			$("input[name=upfile]", $("#upframe").contents()).trigger("click");
		}, 1000);

		// 중복클릭방지 비활성화.
		window.setTimeout(function(){ uploadproc = false; }, 1000);
	});
}

// ie 버그때문에 처리함수 추가.
function uploadedSubmit(tt)
{
	var _src = "//img.tourtips.com/module/upload/upload_frame.html";

	var _ext = {
		"doc":{ext:"doc|DOC|xls|XLS|ppt|PPT|docx|DOCX|xlsx|XLSX|pptx|PPTX|hwp|HWP|txt|TXT|pdf|PDF", "msg":"문서파일만 등록 할 수 있습니다.", size:false},
		"image":{ext:"jpg|JPG|gif|GIF|png|PNG", "msg":"JPG, PNG, GIF파일만 등록할 수 있습니다.", size:15},
		"profile":{ext:"jpg|JPG|gif|GIF|png|PNG", "msg":"10MB 미만의 JPG, PNG, GIF파일만 등록할 수 있습니다.", size:10},
		"pdf":{ext:"pdf", "msg":"PDF파일만 등록가능합니다.", size:false},
		"drop":{ext:"exe|com|bat|sh", "msg":"업로드 할 수 없는 파일입니다.",size:false}
	};

	var _ufrm = $("form", $("#upframe").contents());
	var _type = $(".ifr_frame").find("input[name=type]").val();

	var _uVal = _ufrm.find("input[name=upfile]").val();
	var _lowVal = [];
	for (i = 0; i < _uVal.length; i++){
		_lowVal[_lowVal.length] = _uVal.charAt(i).toLowerCase(); //소문자로
	}

	// 불가파일 체크.
	if (new RegExp("\."+eval("_ext.drop.ext")+"$").test(_lowVal.join(""))){
		alert(eval("_ext.drop.msg"));
		$("iframe[name=upframe]").attr("src", _src);
		return false;
	}

	// 파일 확장자 체크.
	if (typeof(_type) != "undefined" && _type != ""){
		if ((new RegExp("\."+eval("_ext."+_type+".ext")+"$").test(_lowVal.join(""))) == false){
			alert(eval("_ext."+_type+".msg"));
			$("iframe[name=upframe]").attr("src", _src);
			return false;
		}
	}

	_ufrm[0].submit();
}

$(function() {
	//top user info
	$('.login_status').mouseover(function(){
		$('.common_notice_list').hide();
		$('.common_user_info').show();
	}).mouseout(function(){
		$('.common_user_info').hide();
	});

	//gnb
	$('.common_gnb li').each(function(i){
		$(this).mouseover(function(){
			$('.common_notice_list').hide();
			if(i == 2)
			{
				$('.common_gnb_sub table[name=sub'+i+']').css('left','-110px');
			}
			else if(i == 3)
			{
				$('.common_gnb_sub table[name=sub'+i+']').css('left','-58px');
			}
			$(this).addClass('active').siblings().removeClass('active');
			$('.common_gnb_sub table[name=sub'+i+']').addClass('active').siblings().removeClass('active');
		});
		$('.common_gnb_sub').mouseleave(function(){
			$(this).find('table[name=sub'+i+']').removeClass('active');
			$('.common_gnb li').removeClass('active');
		});
	});


	//공지사항 scrolling(기존것 사용)
	$.fn.autoScrolling = function (opt)
	{
		var _this = $(this);
		var opts = {
			sec:(typeof(opt) != 'undefined' ? (typeof(opt.sec) != 'undefined' ? opt.sec : 5000) : 5000),
			speed:(typeof(opt) != 'undefined' ? (typeof(opt.speed) != 'undefined' ? opt.speed : 1000) : 1000),
			css:(typeof(opt) != 'undefined' ? (typeof(opt.css) != 'undefined' ? opt.css : {"top":"-=14px"}) : {"top":"-=14px"}),
			timeString:null,
			run:function ()
			{
				window.clearTimeout(opts.timeString);
				_this.children().each(function(n)
				{
					$(this).animate(opts.css, {duration:opts.speed, complete:function()
						{
							if (n == 0){
								$(this).parent().append($(this).clone());
								$(this).remove();
							}
							$(this).parent().find("p").css('top', 0);
						}
					});
				});
				opts.timeString = window.setTimeout(opts.run, opts.sec);
			}
		};
		if (_this.children().length > 1){
			window.setTimeout(opts.run, opts.sec);
		}
	}

	$('.common_notice').autoScrolling({});
	$('.footer_notice_comment').autoScrolling({});

	//검색 focus
	$('.common_top_info .common_top_search input').focusin(function(){
		$('.common_top_search button').css('background-position', 'center -25px');
		$('.common_top_info .common_top_search input').css('border', '1px solid #ff7610');
	}).focusout(function(){
		$('.common_top_search button').css('background-position', 'center 8px');
		$('.common_top_info .common_top_search input').css({'border':'1px solid #d5d5d5', 'border-top':'1px solid #9d9d9d', 'border-left':'1px solid #9d9d9d'});
	});

	$('#common_user_pic_change').profilePicUploaded('//www.tourtips.com/ap/'+('https:' == document.location.protocol ? 'members' : 'common')+'/picup/?act=imageup', function(data){
		var data = eval("["+data+"]");
		imgData = data[0];
		if(!imgData.result){
			alert(imgData.message);
		} else {
			var myinfo = $('#userProfileImage img'), u = '&ts='+new Date().getTime();
			$('#common_user_pic').attr('src','').attr('src',imgData.url+u);
			if (myinfo) {
				myinfo.attr('src','').attr("src", imgData.url+u+'&t=b');
			}
		}
	}, 'profile');

	//notice 오버시
	$('.common_notice').mouseenter(function(){
		$('.common_notice_list').slideDown('fast', function(){
			$(window).mousemove(function(e){
				if(!$('.common_notice_list').hitTest(e.pageX, e.pageY)){
					$('.common_notice_list').mouseleave();
					$(window).off('mousemove');
				}
				//console.log('move');
			});
		});
	});

	$('.common_notice_list').mouseleave(function(){
		$(this).slideUp('fast');
	});

	// 로그인 페이지
	$('.nlogin_form_text input').focus(function(){
		$(this).parent().find('label').hide();
	});

	$('.nlogin_form_text input').blur(function(){
		var str = $(this).val();
		if(str == ""){
			$(this).parent().find('label').show();
		}
	});

	$('.nlogin_total_box input[type="text"], .nlogin_total_box input[type="password"]').each(function(i){
		var str = $(this).val();
		if(str != ""){
			$(this).parent().find('label').hide();
		}else{
			$(this).parent().find('label').show();
		}
	});

	//custom selectbox
	var arrSelectOpen = [];
	var selectOpenTempIndex;
	$('.nlogin_select').each(function(i, element){
		arrSelectOpen[i] = false;
		$(this).on('click', function(e){
			if(arrSelectOpen[i]){
				$(this).find('ul').stop(true, true).slideUp('fast');
				arrSelectOpen[i] = false;
			}else{
				$('.nlogin_select').find('ul').slideUp('fast');
				arrSelectOpen[selectOpenTempIndex] = false;
				$(this).find('ul').slideDown('fast');
				arrSelectOpen[i] = true;
			}
			selectOpenTempIndex = i;
		});
	});

	//메일 셀렉트 박스 선택시 직접입력일 경우
	$('.nlogin_select > ul > li > a').on('click', function(e){
		e.preventDefault();
		var value = $(this).attr('data-value');
		var direct = $(this).html();
		var email_pos = $(this).parents('.nlogin_form_section').find('.login_email_02_pos');
		var processId = $(this).closest('div.nlogin_select').attr('id');
		var parentDiv = $(this).closest('div.nlogin_select');

		if(value != "custom"){
			$(this).parents('.nlogin_select').find('p > span').html(direct);
			if(processId == 'emailHost'){
				parentDiv.css('width','202px');
				$('#join_email_host').remove();
				email_pos.removeClass('nlogin_add_input');
				$('<input type="hidden" id="join_email_host" value="'+value+'" />').prependTo(email_pos);
			}
		}else{
			if(processId == 'emailHost'){
				parentDiv.css('width','150px');
			}
			if(!email_pos.hasClass('nlogin_add_input')){
				$('#join_email_host').remove();
				$('<input type="text" id="join_email_host" value="" />').prependTo(email_pos);
				email_pos.addClass('nlogin_add_input');
			}
			$(this).parents('.nlogin_select').find('p > span').html(direct)
		}

		if(processId == 'emailHost'){
			if(typeof emailCopy != 'undefined'){
				emailCopy('focusout');
			}
		}else{
			var hiddenValue = processId+'_value';
			$('#'+hiddenValue).val(value);
		}
	})

	$('#common_set_homepage').click(function() {
		if (document.all) {
			// IE
			document.body.style.behavior = 'url(#default#homepage)';
			document.body.setHomePage('http://www.tourtips.com');
		} else if (window.sidebar) {
			// Mozilla
			if (window.netscape) {
				try {
					netscape.security.PrivilegeManager.enablePrivilege('UniversalXPConnect');
				} catch (e) {}

			}
			var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
			prefs.setCharPref('browser.startup.homepage', 'http://www.tourtips.com');
		}

	});

	$('#common_set_bookmark').click(function() {
		try {
			if (window.sidebar && window.sidebar.addPanel) { // Mozilla Firefox Bookmark
				window.sidebar.addPanel('투어팁스 - 친절한 여행가이드 투어팁스','http://www.tourtips.com','');
			} else if(document.getElementById || (window.external && window.external.AddFavorite)) { // IE Favorite
				window.external.AddFavorite('http://www.tourtips.com','투어팁스 - 친절한 여행가이드 투어팁스');
			}
			/*오페라 지원하지 않음*/
		//	else if(window.opera && window.print) { // Opera Hotlist
		//		this.title='투어팁스 - 친절한 여행가이드 투어팁스';
		//		return true;
			//}
			/*오페라 지원하지 않음*/
		} catch (e) {
		}
	});

	//실시간 가격비교 버튼
	$(".ref_pricebtn").click(function(){
		var categoryID = $(this).attr("categoryID");
		$.ajax({
			url :"/ap/lodge/pop_vendor/",
			data : "categoryID="+categoryID,
			type : "get",
			dataType : "json",
			success : function(data){
				if(data[0]==1){
					$("#refPriceLayer .pop_contents").html(data[1]);
					$("#refPriceLayer").show();
					$(".pop_closebtn_gray").click(function(){
						$("#carendar_box").remove();
						$(this).parent().parent().parent().hide();
					});
					//숙소 타이틀 위로 빼주기 위한 코드
					$("#refPriceLayer .pop_header_verti").html("");
					$("#refPriceLayer .pop_header_verti").html($(".pop_title_verti"));
				}else if(data[0]==2){
					location.href=data[1];
				}else{
					alert('가격조회 링크가 제공 되지 않는 숙박입니다.');
				}
			}
		})
	});

	//최저가 호텔 자세히 보기
	$('.compare_info a').hover(function(){
		$(this).parent().find('.want_make_comment').show();
	}, function(){
		$(this).parent().find('.want_make_comment').hide();
	});

});
});
