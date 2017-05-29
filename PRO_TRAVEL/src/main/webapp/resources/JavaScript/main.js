$(function() {
	var $container = $('.slideshow'); //슬라이드 쇼 전체 컨테이너
	var $slideGroup = $('.slideshow-slides'); //슬라이드 그룹
	var $slides = $container.find('.slide'); //각각의 슬라이드
	var $nav = $container.find('.slideshow-nav'); //네이게이션(Prev/Next)
	var $indicator = $container.find('.slideshow-indicator'); //인디케이터

	var currentIndex = 0; //현재의 인덱스
	var slideCount = $slides.length; // 슬라이드 갯수
	var indicatorHTML = "";
	var timer;

	$slides.each(function(i) {
		$(this).css({
			left : 100 * i + '%'
		});

		indicatorHTML += '<a href= "#">' + (i + 1) + '</a>';
	});

	$indicator.html(indicatorHTML);

	//슬라이드 이동 함수
	function goToSlide(index) {
		$slideGroup.animate({
			left : -100 * index + '%'
		}, 500);
		currentIndex = index;
		updateNav();
	}

	//네비게이션 이벤트
	$nav.find('a').click(function(event) {
		event.preventDefault(); // return false 와 동일하게 이벤트 취소하는 방법
		if ($(this).hasClass('prev')) {
			goToSlide(currentIndex - 1);
		} else {
			goToSlide(currentIndex + 1);
		}
	});

	//네비게이션 업데이트 함수
	function updateNav() {
		var $navPrev = $nav.find('.prev');
		var $navNext = $nav.find('.next');

		if (currentIndex == 0) {
			$navPrev.addClass('disabled');
		} else {
			$navPrev.removeClass('disabled');
		}

		if (currentIndex == slideCount - 1) {
			$navNext.addClass('disabled');
		} else {
			$navNext.removeClass('disabled');
		}

		//해당 인디케이터에게 'active' 클래스명 주입
		$indicator.find('a').removeClass('active').eq(currentIndex).addClass('active');
	}  //eq 요소 불러오기
	//인디케이터 이벤트
	$indicator.on('click', 'a', function(event) {
		event.preventDefault();
		goToSlide($(this).index());
		$(this).addClass('active');
	});

	//타이머 시작함수
	function startTimer() {
		timer = setInterval(function() { //주기적으로 호출 setInterval
			var nextIndex = (currentIndex + 1) % slideCount;
			goToSlide(nextIndex);
		}, 2000);
	}

	//타이머 중지하는 함수
	function stopTimer() {
		clearTimeout(timer);
	}

	//마우스 이벤트 설정 : mouseenter, mouselearve

	$container.on({
		mouseenter: stopTimer,
		mouseleave: startTimer
	});

	goToSlide(currentIndex);
//startTimer();
});