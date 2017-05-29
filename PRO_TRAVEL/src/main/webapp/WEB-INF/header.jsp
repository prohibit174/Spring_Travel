<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width, user-scalable=no" />
<meta name="fragment" content="!" />
<meta name="naver-site-verification" content="b5dc8e0c6fe0f77b6e8a970e244d1d74397fc8cf"/>
<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?1">
<meta name="referrer" content="origin">


<!--common meta data-->
<title>가볼만한곳/맛집/숙박 정보, 항공/호텔 가격비교, 나만의 여행일정 | 여행의 모든 것, 위시빈</title>
<meta name="keywords" content="위시빈, 여행일정, 여행정보, 여행꿀팁, 세계여행정보, 국내여행정보, 해외여행정보, 여행팁, 자유여행, 자유여행준비, 가이드북, 지도, 추천일정, 테마여행, 명소, 스팟, 맛집, 쇼핑, 숙박, 호텔, 게스트하우스, 최저가 항공권 검색, 최저가 숙박 검색, 최저가 호텔 검색, 특가 항공권, 무료 항공 이벤트, 무료 호텔 이벤트, 여행Q&A, 여행후기, 홍콩, 마카오, 오사카, 후쿠오카, 도쿄, 타이베이, 베이징, 상하이, 칭다오, 싱가포르, 방콕, 푸껫, 보라카이, 코타 키나발루, 파리, 로마, 런던, 바르셀로나, 크로아티아, 이스탄불, 뉴욕, 하와이, 미서부, 괌, 시드니, 제주, 타이중, 가오슝">
<meta name="description" content="궁금한 여행정보, 위시빈에 다 있다! 1천 개 이상의 전 세계 여행꿀팁 · 25만 개의 자유 여행일정 · 40만 개의 전 세계 가볼만한 곳, 맛집, 숙박 정보 · 여행자들이 직접 남긴 100만 개의 리뷰/후기/꿀팁 · 항공, 호텔 가격비교 · 나만의 여행일정 계획하기"/>
<link rel="canonical" href="https://www.wishbeen.co.kr/">
<meta name="url" content=https://www.wishbeen.co.kr/>
<!--<meta name="keywords" content="">-->
<meta name="subject" content="가볼만한곳/맛집/숙박 정보, 항공/호텔 가격비교, 나만의 여행일정">
<meta name="googlebot" content="index,follow">

<!--open graph data -->
<meta property="og:url" content="https://www.wishbeen.co.kr/">
<meta property="og:type" content="website">
<meta property="og:title" content="가볼만한곳/맛집/숙박 정보, 항공/호텔 가격비교, 나만의 여행일정 | 여행의 모든 것, 위시빈">
<meta property="og:image" content="https://wishbeen.akamaized.net/v2.5/images/wb_logo.png">
<meta property="og:description" content="궁금한 여행정보, 위시빈에 다 있다! 1천 개 이상의 전 세계 여행꿀팁 · 25만 개의 자유 여행일정 · 40만 개의 전 세계 가볼만한 곳, 맛집, 숙박 정보 · 여행자들이 직접 남긴 100만 개의 리뷰/후기/꿀팁 · 항공, 호텔 가격비교 · 나만의 여행일정 계획하기">
<meta property="og:site_name" content="wishbeen">
<meta property="og:locale" content="ko-KR">



<meta property="fb:app_id" content="1422306324649276" />


<meta name="google-signin-client_id" content="41152955122-5m3ufq08325k2m3mgeppmkknn9rql13h.apps.googleusercontent.com">
<link rel="stylesheet" href="./css/carpool_css/city-main-styles.css">
 <script type="text/javascript" src="${pageContext.request.contextPath}/JS/carpool_javascript/jquery.js"></script>
<script data-main="/js/page/city" src="/js/lib/bower_components/requirejs/require.js"></script>
<script src="${pageContext.request.contextPath}/JS/loginPopup/loginPopup.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/JS/loginPopup/login_success.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/JS/NotLoginEvent.js"></script>

<style type="text/css">
  body, pre {
    font-family: "맑은 고딕","Malgun Gothic","Helvetica Neue","Apple SD Gothic Neo",Helvetica,Arial,"Apple Gothic","돋움",Dotum,sans-serif!important;
  }

  .if-me{
    display: none !important;
  }

</style>



</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <!-- {header -->
  <div class="header">
    <div class="main-nav-con">
      <a href="home.main"><p class="wishbeen-logo"><span>나를 클릭하면 HOME으로 갑니다</span></p></a>


		
      <div class="nav-login-search">
        <a class="btn-new-plan">로그인</a>

        <div class="login-and-profile">

          <div>
            <a href="JoinForm.users" id="nav-btn-about"  >회원가입</a>
            <a  id="nav-login-btn" class="myPage_btn">마이페이지</a>
          </div>

        </div><!-- login-and-profile -->
        
      </div>
      
      <p id="frames"><br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      <span>${member_id}</span>
      </p>
    </div>
  </div><!-- header } -->


<!-- 포함되어야 할 파라미터 목록 -->
<!-- language, curCity, tab (현재 선택된 탭) -->
<script>
  g_data['searchTabData'] = {
    language : "ko-KR",
    curServiceType: "global",
    curCityName: "전세계",
    tab: ""
  };
  g_localizedString['_SearchRegion_'] = "지역검색";
</script>


<div id="search_tab_dim" class="bg hide"></div>

<div class="main-tabs">
    <div class="tabs-list">
        <ul id="menu_tab_list">
            <li><a href="home.main" >HOME</a></li>
            <li><a href="main.accompany" >동행</a></li>
            <li><a href="main.carpool" >카풀</a></li>
            <li><a href="listAction.product" >물품교환</a></li>
            <li><a data-tab="plan" >커뮤니티</a></li>
            <li><a data-tab="attraction" >블로그</a></li>

        </ul><!-- e// tabs -->
    </div><!-- e//tabs-list -->

   <!-- e//search-box -->
</div><!-- e//main-tabs -->
</body>
</html>
