<%@page import="travel.product.model.Product_Request"%>
<%@page import="java.util.List"%>
<%@page import="travel.product.model.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
ProductDao dao = ProductDao.getInstance();
String pr_reqnum=request.getParameter("pr_reqnum");

Product_Request productReq=dao.detailProductReq(pr_reqnum);
request.setAttribute("productReq", productReq);

//System.out.println(p_num);
%>

<!DOCTYPE html>
<html>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product_css/city-curation-page-styles.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/product_css/city-main-styles.css">
<head>
</head>
<%@include file="../header.jsp" %>
<body>


<!-- <script>
    g_localizedString["_Won_"] = "원";
g_localizedString["_Sale_"] = "할인";
</script>
<div class="rotation-searh-info">
    
<div class="page-rotation">
    
    
        
        
        
        <a href="/city?serviceType=global">전세계</a>
        
    

    <span> > </span><a href="/city?serviceType=global">추천콘텐츠</a>
    
</div>

    
    <p class="search-info-txt">
        현재  <span class="number">273,732</span>개의 <span>여행일정</span>과 <span class="number">368,793</span>개의 <span>여행명소 정보</span>가 있습니다.
    </p>
    
</div>

<div class="slide-and-widget">
    <div class="inner-box">
        
        <div id="slide">
    ** 전달해야될 값들 **
    introBanners
    {banner-container
    <div id="intro_banner_container" class="banner-container">
        <div class="banner-inner-box">
            <div>
                <ul class="slider-list-container" style="margin-left:-1600px;">
                    
                    
                    
                    <li>
                        <a href="https://goo.gl/UHLbGk"  target="_blank" >
                            <img src="https://thumb-wishbeen.akamaized.net/KXjkkqRt-jC3UeGnQ4Yo1oKVJJk=/800x320/smart/filters:no_upscale()/img-wishbeen.akamaized.net/introbanner/1492659513724_-1.png" style="height: 100%;" alt="우리펜션"/>
                        </a>
                    </li>
                    
                    <li>
                        <a href="https://goo.gl/WPAZAX" >
                            <img src="https://thumb-wishbeen.akamaized.net/mPCCuNPJCb-nQl99v9TQZBx-6dk=/800x320/smart/filters:no_upscale()/img-wishbeen.akamaized.net/introbanner/1492659616525_-3.png" style="height: 100%;" alt="한인텔"/>
                        </a>
                    </li>
                    
                    <li>
                        <a href="https://www.wishbeen.co.kr/plan/62a3fd246828e82f"  target="_blank" >
                            <img src="https://thumb-wishbeen.akamaized.net/L-pqtcxosWAsr9nKPZpc3IDcdbc=/800x320/smart/filters:no_upscale()/img-wishbeen.akamaized.net/introbanner/1491879143528_web.jpg" style="height: 100%;" alt="베스트 여행기"/>
                        </a>
                    </li>
                    
                    <li>
                        <a href="https://www.wishbeen.co.kr/"  target="_blank" >
                            <img src="https://thumb-wishbeen.akamaized.net/XJ8imtdZmRuZeb6RamYTgO7o_-0=/800x320/smart/filters:no_upscale()/img-wishbeen.akamaized.net/introbanner/1478594089652_wb_banner_web_161102.png" style="height: 100%;" alt="여행핫딜 배너"/>
                        </a>
                    </li>
                    
                    <li>
                        <a href="https://goo.gl/UHLbGk"  target="_blank" >
                            <img src="https://thumb-wishbeen.akamaized.net/KXjkkqRt-jC3UeGnQ4Yo1oKVJJk=/800x320/smart/filters:no_upscale()/img-wishbeen.akamaized.net/introbanner/1492659513724_-1.png" style="height: 100%;" alt="우리펜션"/>
                        </a>
                    </li>
                    
                    <li>
                        <a href="https://goo.gl/WPAZAX" >
                            <img src="https://thumb-wishbeen.akamaized.net/mPCCuNPJCb-nQl99v9TQZBx-6dk=/800x320/smart/filters:no_upscale()/img-wishbeen.akamaized.net/introbanner/1492659616525_-3.png" style="height: 100%;" alt="한인텔"/>
                        </a>
                    </li>
                    
                    <li>
                        <a href="https://www.wishbeen.co.kr/plan/62a3fd246828e82f"  target="_blank" >
                            <img src="https://thumb-wishbeen.akamaized.net/L-pqtcxosWAsr9nKPZpc3IDcdbc=/800x320/smart/filters:no_upscale()/img-wishbeen.akamaized.net/introbanner/1491879143528_web.jpg" style="height: 100%;" alt="베스트 여행기"/>
                        </a>
                    </li>
                    
                    <li>
                        <a href="https://www.wishbeen.co.kr/"  target="_blank" >
                            <img src="https://thumb-wishbeen.akamaized.net/XJ8imtdZmRuZeb6RamYTgO7o_-0=/800x320/smart/filters:no_upscale()/img-wishbeen.akamaized.net/introbanner/1478594089652_wb_banner_web_161102.png" style="height: 100%;" alt="여행핫딜 배너"/>
                        </a>
                    </li>
                    
                    
                </ul>
            </div>
            <div class="right-box sdw"></div>
            <div class="left-box sdw"></div>
            <a class="btn-prev"><span></span></a>
            <a class="btn-next"><span></span></a>
        </div>
    </div>banner-container }
</div>
        
        <script>
  g_localizedString["DATETIME_FORMATS"] = {"AMPMS":["오전","오후"],"DAY":["일요일","월요일","화요일","수요일","목요일","금요일","토요일"],"MONTH":["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],"SHORTDAY":["일","월","화","수","목","금","토"],"SHORTMONTH":["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],"fullDate":"yy년 m월 d일 DD","longDate":"y년 M월 d일","medium":"y. M. d. a h:mm:ss","mediumDate":"y. M. d.","mediumTime":"a h:mm:ss","short":"yy. M. d. a h:mm","shortDate":"yy. M. d.","shortTime":"a h:mm"};
  g_localizedString["_CantGetLocation_"] = "위치 정보를 가져 올 수 없습니다.";
  g_localizedString["_AroundCurrentLocation_"] = "현재 내 위치 근처";
  g_localizedString["_EnterDestination_"] = "목적지를 입력 해주세요.";
  g_data['clientType'] = "web";
</script>
<div id="widget">201603위젯
  <div class="widget-wrap">
    
    <div class="tab-widget">
      <ul>
        <li class="active" data-target="htl-widget"><a>최저가 호텔</a></li>
        <li data-target="flight-widget"><a>항공권 조회</a></li>
        <li data-target="hotdeal-widget"><a>여행핫팅</a></li>
      </ul>
    </div> e//tab-widget
    

    
    <div  class="htl-widget widget-content active"> 호텔  {
    <div class="widget-data">
        <div class="btn-box"><button id="near-hotel" class="btn btn-near-htl"> 오늘밤 가능한 인근 호텔</button></div>
        <form action="" method="post">
            <fieldset>
                <div class="destination box">
                    <label for="destination">목적지</label>
                <span class="field">
                  <div>
                      <input type="text"  id="destination" placeholder="현재 내 위치 근처" class="ui-autocomplete-input" autocomplete="off" value="">
                  </div>
                </span>
                    <button type="button" class="btn-cancel" id="destination-cancel"></button>
                </div>

                <div class="check-in box">
                    <label for="check-in">체크인</label>
                <span class="field">
                  <div>
                      <input type="text" id="check-in" readonly="true">
                  </div>
                </span>
                    <div id="check-in-picker"></div>
                </div>
                <div class="check-out box">
                    <label for="check-out">체크아웃</label>
                <span class="field">
                  <div>
                      <input type="text" id="check-out" readonly="true">
                  </div>
                </span>
                    <div id="check-out-picker"></div>
                </div>

                <div class="htl-rooms box">
                    <span class="tit">객실</span>
              <span class="field">
                <div class="select-option">
                    <div>
                        <select id="room-selector">
                            <option value="1-1">객실수 1 성인 1</option>
                            <option value="2-1" selected>객실수 1 성인 2 </option>
                            <option value="3-1">객실수 1 성인 3 </option>
                            <option value="4-1">객실수 1 성인 4 </option>
                            <option value="2-2">객실수 2 성인 2 </option>
                        </select>
                    </div>
                </div>
              </span>
                </div>

                <div class="btn-box"><button type="button" class="btn btn-pakage btn-primary" id="search-hotel">검색하기</button></div>
            </fieldset>
        </form>
        <div class="txt-widget-info">
            <p>위시빈의 최저가 호텔 조회는 호텔스컴바인과의 제휴를 통해 정보를 제공해 드리고 있습니다. 당사는 본 제휴와 관련한 상담, 예약, 구매 등에 대해 단순 정보 제공 이상으로는 관여하지 않으며, 이로 인해 발생하는 모든 일에 대한 책임을 지지 않습니다.</p> <p>예약 내역은 당 제휴사에서 전송하는 이메일 등으로 확인하실 수 있으며, 예약의 변경/취소 등에 관련한 내용은 실제 예약을 진행한 업체에 직접 문의하셔야 합니다.</p>
        </div>
    </div>
</div>e//호텔  hlt-widget }
    
    
    <div id="flight-widget-" class="flight-widget widget-content ">항공  {
    <fieldset>
        <div class="widget-data">
            <div class="departure box">
                <label for="departure">출발지</label>
            <span class="field">
              <div class=""><input type="text" name="" id="departure" placeholder="도시명"  class="place" value="인천국제공항 "></div>
              <span class="alert">출발지를 선택해주세요.</span>
            </span>
            </div>

            <i class="change"><button type="button" id="flight-change-btn" class="btnChange ui-btn ui-shadow ui-corner-all"></button></i>

            <div class="destination box">
                <label for="destination">도착지</label>
              <span class="field">
                <div class=""><input type="text" id="destination" placeholder="도시명"></div>
                <span class="alert">목적지를 입력 해주세요.</span>
              </span>
            </div>

            <div class="start-data box">
                <label for="start-data">출발일</label>
              <span class="field">
                <div class=""><input type="text" id="start-date" readonly="true"></div>
                <span class="alert">출발일을 선택해주세요.</span>
              </span>
                <div id="start-date-picker"></div>
            </div>

            <div class="arrival box">
                <label for="arrival">도착일</label>
              <span class="field">
                <div class=""><input type="text" id="arrival-date" readonly="true"></div>
                <span class="alert">도착일을 선택해주세요.</span>
              </span>
                <div id="arrival-date-picker"></div>
            </div>

            <div class="personal">
            <span class="field">
            <div class="select-option">
                <div id="adults-select" >
                    <select id="adults">
                        <option value="1">성인 1</option>
                        <option value="2">성인 2</option>
                        <option value="3">성인 3</option>
                        <option value="4">성인 4</option>
                        <option value="5">성인 5</option>
                        <option value="6">성인 6</option>
                        <option value="7">성인 7</option>
                        <option value="8">성인 8</option>
                    </select>
                </div>
            </div>
            <i class="ico"></i>
          </span>
          <span class="field">
            <div class="select-option">
                <div id="children-select" >
                    <select id="children">
                        <option value="0">아동 0</option>
                        <option value="1">아동 1</option>
                        <option value="2">아동 2</option>
                        <option value="3">아동 3</option>
                        <option value="4">아동 4</option>
                        <option value="5">아동 5</option>
                        <option value="6">아동 6</option>
                        <option value="7">아동 7</option>
                        <option value="8">아동 8</option>
                    </select>
                </div>
            </div>
            <i class="ico"></i>
          </span>
          <span class="field">
          <div class="select-option">
              <div id="infant-select" >
                  <select id="infant">
                      <option value="0">유아 0</option>
                      <option value="1">유아 1</option>
                      <option value="2">유아 2</option>
                      <option value="3">유아 3</option>
                      <option value="4">유아 4</option>
                      <option value="5">유아 5</option>
                      <option value="6">유아 6</option>
                      <option value="7">유아 7</option>
                      <option value="8">유아 8</option>
                  </select>
              </div>
          </div>
          <i class="ico"></i>
          </span>
            </div>e//persanl

            <div class="btn-box"><button id="flight-search-btn" type="button" class="btn btn-pakage btn btn-primary">검색하기</button></div>

            <div class="txt-widget-info">
                <p>위시빈의 최저가 항공권 조회는 스카이스캐너와의 제휴를 통해 정보를 제공해 드리고 있습니다. 당사는 본 제휴와 관련한 상담, 예약, 구매 등에 대해 단순 정보 제공 이상으로는 관여하지 않으며, 이로 인해 발생하는 모든 일에 대한 책임을 지지 않습니다.</p> <p>예약 내역은 당 제휴사에서 전송하는 이메일 등으로 확인하실 수 있으며, 예약의 변경/취소 등에 관련한 내용은 실제 예약을 진행한 업체에 직접 문의하셔야 합니다.</p>
            </div>
        </div>
    </fieldset>
</div>e//항공 flight-widget  }
    
    
  </div>
</div>
    </div>
</div>

<div id="contents" class="main">
    
    여행꿀팁 영역
    <div class="conts-container conts-box">
        <div class="contents-wrap">
            <div class="bigHeader">
                여행꿀팁
            </div>
            <div class="content-tabs">

            </div>
            <div class="conts-box-list">
                <div class="inner-box">
                    
                    




<div data-id="6a341fddf4c819fc" class="content-box type01">
  

  <a href="/plan/3e5564ed7d45785b" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/p_wNQU2-utSUwVL9bL9x7CMS8Ts=/218x180/smart/img-wishbeen.akamaized.net/spot/1385501535032_plazadela.jpg" alt="img" />
      </div>
      
      <div class="tit">여행작가와 함께하는 쿠바 여행</div>
      <div class="desc">
        <span>봄사랑쿠바사랑</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>





<div data-id="2984b3f6f7bc5a5c" class="content-box type01">
  

  <a href="/plan/43592af952ac78e8" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/gp0yEVJ9QpGj-H7uheFyZQOQZV0=/218x180/smart/img-wishbeen.akamaized.net/plan/1487738928525_image" alt="img" />
      </div>
      
      <div class="tit">오사카 2박 3일 with 려니</div>
      <div class="desc">
        <span>Hyemi Jeong</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>





<div data-id="fb8b1036e9303841" class="content-box type01">
  

  <a href="/plan/c5d4e519df6328c2" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/12q_XtSntnuOkSGRs3KBFt9kA28=/218x180/smart/img-wishbeen.akamaized.net/plan/1488698138544_image" alt="img" />
      </div>
      
      <div class="tit">[세부보홀] 아주부부의 4박6일 자유여행기</div>
      <div class="desc">
        <span>오주희</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>





<div data-id="d29d44f3f4e7a9b8" class="content-box type01">
  

  <a href="/plan/bc319c8ed3d0d898" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/oyVTxGoiBxdXaHWtgp6O-3U9zR8=/218x180/smart/img-wishbeen.akamaized.net/plan/1491142029631_10f2b105-f75d-40db-968b-357fe488a3ba.jpg" alt="img" />
      </div>
      
      <div class="tit">2017 제주 힐링 여행</div>
      <div class="desc">
        <span>eui-jin Kim</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>





<div data-id="8cace9a90c56cba9" class="content-box type01">
  

  <a href="/plan/391e4d2311d9d94a" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/xQ09Oni8WGswSdXtXxz8XYYgc68=/218x180/smart/img-wishbeen.akamaized.net/plan/1490697071330_brighton.jpg" alt="img" />
      </div>
      
      <div class="tit">영국 브라이튼의 숨겨진 명소 10가지</div>
      <div class="desc">
        <span>EF코리아</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>





<div data-id="2eea82b4df740b6a" class="content-box type01">
  

  <a href="/plan/51a42e25a6b34a2d" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/tGkd_2XGOKrelEsR6TKjEQEwAs4=/218x180/smart/img-wishbeen.akamaized.net/curation/1482807420292_mainskt.jpg" alt="img" />
      </div>
      
      <div class="tit">2017 떠오를 것 같은(?) 여행지 BEST</div>
      <div class="desc">
        <span>rachelggg</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>





<div data-id="f72082906d85682c" class="content-box type01">
  

  <a href="/plan/3d73a9282649f989" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/HaenVFU_BvnmA1UFxL-Y0m9Xu-U=/218x180/smart/img-wishbeen.akamaized.net/plan/1484285691302_coins-1726618_12801.jpg" alt="img" />
      </div>
      
      <div class="tit">여행 경비 줄이는 소소한 꿀팁 총정리</div>
      <div class="desc">
        <span>Bianca</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>





<div data-id="1a6adde1e084e99c" class="content-box type01">
  

  <a href="/plan/1b25a6c0c02569be" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/xXUPvxXlMtgj-6y1avgDh9Ch9jg=/218x180/smart/img-wishbeen.akamaized.net/curation/1480990932529_15.jpg" alt="img" />
      </div>
      
      <div class="tit">유럽의 자연을 200% 느끼는 오스트리아 여행법!</div>
      <div class="desc">
        <span>Bianca</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>





<div data-id="0b8b7e9d2a0ec875" class="content-box type01">
  

  <a href="/plan/834dff138c6c88c4" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/N7d1riOC_zvx3eDu8cUkIo2g2Po=/218x180/smart/img-wishbeen.akamaized.net/curation/1482807484729_mainshinhan.jpg" alt="img" />
      </div>
      
      <div class="tit">해외여행 준비할때 가장 많이하는 질문 Best 12</div>
      <div class="desc">
        <span>꾸꾸까까</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>





<div data-id="b831e659af652a72" class="content-box type01">
  

  <a href="/plan/6d3ea17c3a6398ef" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/-IILZglC6dUaxM64a0rTIQTS5CY=/218x180/smart/img-wishbeen.akamaized.net/plan/1480506168208_0882CP_FACADE3.jpg" alt="img" />
      </div>
      
      <div class="tit">아는만큼 아낄 수 있는 면세점 꿀팁 총정리!</div>
      <div class="desc">
        <span>Bianca</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>





<div data-id="c526070ca4fc3850" class="content-box type01">
  

  <a href="/plan/df673947f9e6c954" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/lsg6QuVcOCEGrJv0Bz5wUdMmrUU=/218x180/smart/img-wishbeen.akamaized.net/curation/1480659889152_IMG_6898.jpg" alt="img" />
      </div>
      
      <div class="tit">직접 다녀와서 알려주는 오감만족 싱가포르 3박 5일</div>
      <div class="desc">
        <span>rachelggg</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>





<div data-id="80cf7b6dc65778f2" class="content-box type01">
  

  <a href="/plan/234949b005519b27" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/mhzFHBNO4x76bUI1ruDbN2M9ZJI=/218x180/smart/img-wishbeen.akamaized.net/curation/1480659544078_1241.jpg" alt="img" />
      </div>
      
      <div class="tit">개인적으로 최고였던, 싱가포르항공 이코노미 탑승후기</div>
      <div class="desc">
        <span>rachelggg</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>





<div data-id="f67960ebf8a3a871" class="content-box type01">
  

  <a href="/plan/7243efe341109b60" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/KDJSE2VxDwHlQGvgvHmCM_25G4c=/218x180/smart/img-wishbeen.akamaized.net/curation/1479086211876_jejumain.png" alt="img" />
      </div>
      
      <div class="tit">당장 가고 싶은 제주 동쪽 버킷리스트 7곳</div>
      <div class="desc">
        <span>여행또갈래</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>





<div data-id="c2fe3927559a8ba5" class="content-box type01">
  

  <a href="/plan/713a387996159820" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/Ck9Ej1gqAgrbilE9yHwRCViEECg=/218x180/smart/img-wishbeen.akamaized.net/curation/1480991913534_3.jpg" alt="img" />
      </div>
      
      <div class="tit">나만 알고 싶은 오사카 감성골목 여행</div>
      <div class="desc">
        <span>Yenn</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>





<div data-id="eeb1e10c6d2d59d8" class="content-box type01">
  

  <a href="/plan/fe6155e97235b8af" target=&#34;_blank&#34; >
    <div class="type01">
      <div class="cover-img">
        <img src="https://thumb-wishbeen.akamaized.net/nfg2HjQlhYPXpAr1QP4iTUVQ2zE=/218x180/smart/img-wishbeen.akamaized.net/curation/1480991662080_10.jpg" alt="img" />
      </div>
      
      <div class="tit">정보 대박 많은 런던 3박 4일 일정</div>
      <div class="desc">
        <span>져니킹</span>
        <span>일정</span>
      </div>
    </div>
  </a>
</div>



                    <div class="clear"></div>
                </div>
                <div class="btn-box center">
                    
                    <a class="btn-more" href="/city?serviceType=global&amp;tab=specialTip"><span>여행꿀팁</span> 더보기 <img src="/images/btn-more.png" alt=""/></a>
                    
                </div>e//btn-box
            </div>
        </div>
    </div>
    

    여행핫딜 영역
    
    <div class="conts-container conts-box">
        <div class="contents-wrap">

            <div class="content-tabs">

            </div>
            <div class="conts-box-list">
                <div class="inner-box" id="hotdeal-list" data-keyword="에어텔" data-category="T_22">
                    


                </div>
                <div class="clear"></div>

e//btn-box
            </div>
        </div>
    </div>
    

    커뮤니티 영역
    
    <div class="conts-container community">
        <div class="contents-wrap">
            <div class="bigHeader">
                커뮤니티
            </div>
            <div class="content-tabs">

            </div>
            <div class="conts-box-list">
                <div class="inner-box">
                    



<div class="community-contents">
    
    
    <span class="community-img">
      <a href="/post/796f4a7403e0293b" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/ictMc-2vXVQ0RjxPPaStr0EWiZg=/149x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/post/1490666321883__MG_3609.JPG" alt="" /></a>
    </span>
    

    <div class="community-info-box ">
        <h4 class="community-tit"><a href="/post/796f4a7403e0293b" target="_blank"><span class="btn-reviews">리뷰</span>제주도 방문할때 들리는 곳</a></h4>
        <div class="long-desc">
            <a href="/post/796f4a7403e0293b" target="_blank">제주도에 일때문에 올때마다 방문하는 곳인데요. 식당 내부에 사람들이 항상 바글바글하지만 &nbsp;친절한 강며느리님이 응대를 워낙 잘해주셔서 먹기 전부터 기분이 좋아지는 곳입니다.아참! 돌우럭조림은 꼭 드셔보세요. 가마솥밥에 슥슥 비벼 먹으면 정말 맛있는 집밥을 먹는 기분입니다 乃</a>
        </div>
        <div class="user-name">
            <p><a href="/myPage/user/df1bfaf8619a691d?active=myNotice" target="_blank">mini7879</a></p>
        </div>
    </div>

    
</div>


<div class="community-contents">
    
    

    <div class="community-info-box no-img">
        <h4 class="community-tit"><a href="/post/2c374cb8827e7874" target="_blank"><span class="btn-ask">질문</span>가족단체 제주도 여행가요..</a></h4>
        <div class="long-desc">
            <a href="/post/2c374cb8827e7874" target="_blank">저희 엄마 칠순기념 제주도 여행가요..13명 대식구인데 초1학년부터 어르신들포함이라어디를 다녀야 재미있을지 싶네요..2박3일코스지만  비행기시간생각하면2일 빠듯한듯요..괜찮은 여행코스 추천받아요...</a>
        </div>
        <div class="user-name">
            <p><a href="/myPage/user/d4c29d4cb60089cb?active=myNotice" target="_blank">문정희</a></p>
        </div>
    </div>

    
</div>


<div class="community-contents">
    
    
    <span class="community-img">
      <a href="/post/fc1fb96f24d2a852" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/KLuqjP_QowrnRabvXbfxNq_5vhw=/149x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/post/1491159813781_image" alt="" /></a>
    </span>
    

    <div class="community-info-box ">
        <h4 class="community-tit"><a href="/post/fc1fb96f24d2a852" target="_blank"><span class="btn-journal">여행기</span></a></h4>
        <div class="long-desc">
            <a href="/post/fc1fb96f24d2a852" target="_blank">한국사람들이 많이 다녀가서 그런지 한국어 메뉴판이 있어요! 고수 꼭 빼달라고 하세요!!!저는 토종 한국 입맛이라 조금만 냄새나도 못먹어서할머니쌀국수가 그렇게 맛있다고해서 갔는데 절반도 못먹었어요ㅠㅠ</a>
        </div>
        <div class="user-name">
            <p><a href="/myPage/user/700fbe4a26fda870?active=myNotice" target="_blank">혜수 권</a></p>
        </div>
    </div>

    
</div>


<div class="community-contents">
    
    
    <span class="community-img">
      <a href="/post/5301f915bb8f0b40" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/zd__klgps3LbxODeCRcI8p5PVSM=/149x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/post/1491958692585_KakaoTalk_20170325_174327716.jpg" alt="" /></a>
    </span>
    

    <div class="community-info-box ">
        <h4 class="community-tit"><a href="/post/5301f915bb8f0b40" target="_blank"><span class="btn-reviews">리뷰</span></a></h4>
        <div class="long-desc">
            <a href="/post/5301f915bb8f0b40" target="_blank">막국수 나오기 전에 한 컷! 역시 등갈비는 뜯어먹는 재미!! ㅋㅋㅋ한입 뜯고 마늘 하나 먹으면 조합 끝내줌!!</a>
        </div>
        <div class="user-name">
            <p><a href="/myPage/user/3a2c18baa420e884?active=myNotice" target="_blank">Violet</a></p>
        </div>
    </div>

    
</div>


<div class="community-contents">
    
    
    <span class="community-img">
      <a href="/post/72638b6a8c35e8eb" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/xbVvmOF5XfRpsCAnvWsHEhE2Sak=/149x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/post/1491298738007_brighton-4.jpg" alt="" /></a>
    </span>
    

    <div class="community-info-box ">
        <h4 class="community-tit"><a href="/post/72638b6a8c35e8eb" target="_blank"><span class="btn-info">정보</span></a></h4>
        <div class="long-desc">
            <a href="/post/72638b6a8c35e8eb" target="_blank">사진 제공: EF브라이튼은 영국 남단에 위치한 특이하면서 '쿨'한 도시로, 브라이튼을 매력적인 도시로 인정할 수 밖에 없도록 하는 여러 알려지지 않은 요소들이 가득하다. EF 전문 블로거 Nathalie가 실제로 Brighton에 거주하면서 발견한 그녀만의 꿀명소 8가지를 공유한다. 영국여행 혹은 영국어학연수 중이라면, 또는 계획 중이라면 브라이튼을 선택지에 넣어 보는 건 어떨까. &nbsp;</a>
        </div>
        <div class="user-name">
            <p><a href="/myPage/user/1cfae49cd6f6b9c4?active=myNotice" target="_blank">EF코리아</a></p>
        </div>
    </div>

    
</div>


<div class="community-contents">
    
    

    <div class="community-info-box no-img">
        <h4 class="community-tit"><a href="/post/609cd4ee602078d1" target="_blank"><span class="btn-reviews">리뷰</span>너~~~무 깔끔한 내부 인테리어와 친절한 마사지사와 카운터 언니까지 . 정말 인생마사지샵이였습니다. 같은건물에 있는 다른샵을 먼저 갔었는데 어두컴컵한 내부에서 정말 무슨일 일어날지도 모를듯한 그런 곳에서 마사지를 받는게 참 내키지 않았는데 자스민에서는 한국인이 안내부터 필요한것두챙겨주시고, 무었보다 마사지받기전에 픽업서비스를 이용해서 미리 시내권으로 나와 짐까지 맡길 수 있다는 점 정말 !!!!감사했습니다 ❣️</a></h4>
        <div class="long-desc">
            <a href="/post/609cd4ee602078d1" target="_blank"></a>
        </div>
        <div class="user-name">
            <p><a href="/myPage/user/2999924581c9287d?active=myNotice" target="_blank">Vicky Jeon</a></p>
        </div>
    </div>

    
</div>


<div class="community-contents">
    
    
    <span class="community-img">
      <a href="/post/7a14967810007b5c" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/19r_-xsjIVXxQ9G9UAVP1u84Lys=/149x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/post/1490762142017_DSC07362.JPG" alt="" /></a>
    </span>
    

    <div class="community-info-box ">
        <h4 class="community-tit"><a href="/post/7a14967810007b5c" target="_blank"><span class="btn-journal">여행기</span>외국인들에게는 바가지요금을 씌우는 호이안행 01번 버스</a></h4>
        <div class="long-desc">
            <a href="/post/7a14967810007b5c" target="_blank">내국인들은 더 저렴한데, 관광하러 온 외국인들에게는 50,000동으로 부르더라구요.그래서 웃으면서 둘이서 80,000동 내니까 어이없어했어요 ㅋㅋㅋㅋㅋ</a>
        </div>
        <div class="user-name">
            <p><a href="/myPage/user/afd1953de1e1b861?active=myNotice" target="_blank">유로링</a></p>
        </div>
    </div>

    
</div>


<div class="community-contents">
    
    
    <span class="community-img">
      <a href="/post/9109df576c10f816" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/7z0HXaNAU0wGWJ6sgP-ER3J1-0E=/149x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/post/1491041559906_image" alt="" /></a>
    </span>
    

    <div class="community-info-box ">
        <h4 class="community-tit"><a href="/post/9109df576c10f816" target="_blank"><span class="btn-reviews">리뷰</span>왜 정통중화요리집인지 알게 된다</a></h4>
        <div class="long-desc">
            <a href="/post/9109df576c10f816" target="_blank">우선 맛있다. 우리가 생각하는 요리 그대로의 음식들. 양장피 간풍기 고추잡채 탕수육 쟁반자징전부 실망시키지 않는 맛이다. </a>
        </div>
        <div class="user-name">
            <p><a href="/myPage/user/1a54781cb793bb78?active=myNotice" target="_blank">Ben</a></p>
        </div>
    </div>

    
</div>


<div class="community-contents">
    
    

    <div class="community-info-box no-img">
        <h4 class="community-tit"><a href="/post/ca956d26a2afc8a4" target="_blank"><span class="btn-reviews">리뷰</span>키로스 살싸 피칸테(매운맛 소스)~</a></h4>
        <div class="long-desc">
            <a href="/post/ca956d26a2afc8a4" target="_blank">나빌리오에 위치하고 있고 어떤 음식보다 더 각광받고 있는 맛집이다 . 친구에 권유로 찾아갔는데 우리한테 훨씬 입맛에 딱이다.뭘 주문하더라도 살싸 피칸테로 주문하면 매콤하게 우리의 맛과 비슷해서 느끼하지도 질리지도 않는다.꼭. 한번쯤 가 보기를 추천한다!!!!</a>
        </div>
        <div class="user-name">
            <p><a href="/myPage/user/f099b93c2841e927?active=myNotice" target="_blank">Xho  Ana</a></p>
        </div>
    </div>

    
</div>




<div class="clear"></div>


                    <div class="clear"></div>
                </div>
                <div class="btn-box center">
                    
                    <a class="btn-more" href="/city?serviceType=global&amp;tab=community"><span>커뮤니티</span> 더보기 <img src="/images/btn-more.png" alt=""/></a>
                    
                </div>e//btn-box
            </div>-e//conts-box-list
        </div>
    </div>
    


    여행일정 영역
    
    <div class="conts-container plan">
        <div class="contents-wrap">
            <div class="bigHeader">
                여행일정
            </div>
            <div class="conts-box-list">
                <div class="inner-box">
                    



<div class="plan-contents">
    <a href="/plan/5af6eeb7a7245a0c" target="_blank">
        <div class="cover-img">
            <img src="https://thumb-wishbeen.akamaized.net/6nOka6tz7O2cenpDTHEUzawJXPo=/390x150/smart/img-wishbeen.akamaized.net/plan/1462948625627_cover.jpg" alt=""/>
            <div class="cover-bg"></div>
            <div class="tit">
                <p>제주 핵심 명소 78곳 1분 요약</p>
                <div class="desc">
                    <span>한국</span>
                    <span>1일</span>
                    <span>여행 전</span>
                </div>
            </div>
        </div>
    </a>
    
</div>


<div class="plan-contents">
    <a href="/plan/7e6dcbc8dc1d2864" target="_blank">
        <div class="cover-img">
            <img src="https://thumb-wishbeen.akamaized.net/-tWHSTiEZVNV9rs4GHeNTss03dQ=/390x150/smart/img-wishbeen.akamaized.net/plan/1456997958914_kansai_best2.jpg" alt=""/>
            <div class="cover-bg"></div>
            <div class="tit">
                <p>직접 먹고 온 곳만 골라서 추천하는 오사카 맛집 10선</p>
                <div class="desc">
                    <span>일본</span>
                    <span>1일</span>
                    <span>여행 전</span>
                </div>
            </div>
        </div>
    </a>
    
</div>


<div class="plan-contents">
    <a href="/plan/a609265da9e478a4" target="_blank">
        <div class="cover-img">
            <img src="https://thumb-wishbeen.akamaized.net/6QnIdTUunb4Ym5okAEYMFe_N0kI=/390x150/smart/img-wishbeen.akamaized.net/plan/1449027439620_Osaka_Dotonbori_Ebisu_Bridge1.jpg" alt=""/>
            <div class="cover-bg"></div>
            <div class="tit">
                <p>40만원대로 즐기는 오사카 먹방 여행 A to Z</p>
                <div class="desc">
                    <span>일본</span>
                    <span>3일</span>
                    <span>여행 후</span>
                </div>
            </div>
        </div>
    </a>
    
</div>


<div class="plan-contents">
    <a href="/plan/a39ce8edef1038e0" target="_blank">
        <div class="cover-img">
            <img src="https://thumb-wishbeen.akamaized.net/0yRVgFImylEw-3hd4w49lJpRXpw=/390x150/smart/img-wishbeen.akamaized.net/plan/1433124068711_%ED%94%84%EB%9D%BC%ED%95%98.png" alt=""/>
            <div class="cover-bg"></div>
            <div class="tit">
                <p>[동유럽] 프라하-빈-부다페스트 명소 모음 BEST</p>
                <div class="desc">
                    <span>체코,오스트리아,헝가리,슬로바키아</span>
                    <span>4일</span>
                    <span>여행 전</span>
                </div>
            </div>
        </div>
    </a>
    
</div>


<div class="plan-contents">
    <a href="/plan/b518024340958b1e" target="_blank">
        <div class="cover-img">
            <img src="https://thumb-wishbeen.akamaized.net/wIq3GQVktTNYGxfQsrX7Ce92D_A=/390x150/smart/img-wishbeen.akamaized.net/plan/1411550254627_%EC%9C%84%EC%8B%9C%EB%B9%88_%ED%94%BD_%ED%8C%8C%EB%A6%AC2.jpg" alt=""/>
            <div class="cover-bg"></div>
            <div class="tit">
                <p>파리 핵심 골라잡기!</p>
                <div class="desc">
                    <span>프랑스</span>
                    <span>5일</span>
                    <span>여행 후</span>
                </div>
            </div>
        </div>
    </a>
    
</div>


<div class="plan-contents">
    <a href="/plan/04197d30ccc8d88d" target="_blank">
        <div class="cover-img">
            <img src="https://thumb-wishbeen.akamaized.net/oJYOdwer-dTZZ7aek7hWVRbJIHE=/390x150/smart/img-wishbeen.akamaized.net/plan/1465353036786_IMG_8026.png" alt=""/>
            <div class="cover-bg"></div>
            <div class="tit">
                <p>25만원으로 혼자 떠난 제주도 3박4일 여행</p>
                <div class="desc">
                    <span>한국</span>
                    <span>4일</span>
                    <span>여행 후</span>
                </div>
            </div>
        </div>
    </a>
    
</div>


<div class="plan-contents">
    <a href="/plan/a545e6cfcbc558a5" target="_blank">
        <div class="cover-img">
            <img src="https://thumb-wishbeen.akamaized.net/dN7DDXetkWwm-pyKesuUJ0rw3rc=/390x150/smart/img-wishbeen.akamaized.net/plan/1434090018184_8641971939_702c660baa_o.jpg" alt=""/>
            <div class="cover-bg"></div>
            <div class="tit">
                <p>[간사이] 알찬 여행을 위한 정보모음</p>
                <div class="desc">
                    <span>일본</span>
                    <span>1일</span>
                    <span>여행 전</span>
                </div>
            </div>
        </div>
    </a>
    
</div>


<div class="plan-contents">
    <a href="/plan/bb41ea19f208c87b" target="_blank">
        <div class="cover-img">
            <img src="https://thumb-wishbeen.akamaized.net/Clvz0v08X-hILlsbWahrhTbdm3Q=/390x150/smart/img-wishbeen.akamaized.net/plan/1431410619124_%EC%82%AC%ED%98%84%EC%A7%80.jpg" alt=""/>
            <div class="cover-bg"></div>
            <div class="tit">
                <p>사현지의 교토/오사카 7박 8일</p>
                <div class="desc">
                    <span>일본</span>
                    <span>8일</span>
                    <span>여행 후</span>
                </div>
            </div>
        </div>
    </a>
    
</div>


<div class="plan-contents">
    <a href="/plan/7d43057ada7a788a" target="_blank">
        <div class="cover-img">
            <img src="https://thumb-wishbeen.akamaized.net/u9KrWFkGvb-m7hskhtvpDIyQ8jQ=/390x150/smart/img-wishbeen.akamaized.net/plan/1482124278566_IMG_0824.JPG" alt=""/>
            <div class="cover-bg"></div>
            <div class="tit">
                <p>신나게 돌아댕기는 오사카-쿄토여행 (관광 30% + 쇼핑 30% + 먹방 40%)</p>
                <div class="desc">
                    <span>일본</span>
                    <span>5일</span>
                    <span>여행 후</span>
                </div>
            </div>
        </div>
    </a>
    
</div>




<div class="clear"></div>

                    <div class="clear"></div>
                </div>
            </div>
            <div class="btn-box center">
                
                <a class="btn-more" href="/city?serviceType=global&amp;tab=plan"><span>여행일정</span> 더보기 <img src="/images/btn-more.png" alt=""/></a>
                
            </div>e//btn-box
        </div>
    </div>
    


    스팟 영역
    <div class="conts-container spot">
        가볼만한 곳
        <div class="contents-wrap plance">
            <div class="bigHeader">
                가볼만한 곳
            </div>
            <div class="conts-box-list">
                <div class="inner-box">
                    
                    
                    




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/4930d60dc65d38f9" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/0cgS0Ts5dKICb95YLCCBiVvw8ho=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1466357288237_20150803_210401-01.jpg" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type00">
        <h4 class="spot-name"><a href="/spot/4930d60dc65d38f9" target="_blank">도톤보리 (道頓堀, Dotonbori)</a></h4>
        <span class="spot-state">오사카를 상징하는 식도락의 거리, 유행의 거리</span>
        <div class="desc">
            <span class="town">일본 Chūō-ku</span>
            <span class="popular">인기도 5602</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/4930d60dc65d38f9"><span>571</span> 개의 포스트</span>
        </div>
    </div>

    
</div>




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/fc2fceef91418a51" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/oA-0YBLr4-rt_8LHSaQTHcnP3fM=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1396504674860_IMGP1573.jpg" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type00">
        <h4 class="spot-name"><a href="/spot/fc2fceef91418a51" target="_blank">스펀 (十分, Shifen)</a></h4>
        <span class="spot-state">알록달록한 천등가게가 줄지어 있는 스펀</span>
        <div class="desc">
            <span class="town">대만 New Taipei City</span>
            <span class="popular">인기도 5064</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/fc2fceef91418a51"><span>378</span> 개의 포스트</span>
        </div>
    </div>

    
</div>




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/a6bae6554a272897" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/73R3UaLFR-TRftDGHJI5FYH_Zy4=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1400578919442_DSC04232-20130702-001815.jpg" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type00">
        <h4 class="spot-name"><a href="/spot/a6bae6554a272897" target="_blank">쇠소깍 (Seosokkak)</a></h4>
        <span class="spot-state">기암절벽 계곡사이로 보이는 바다경관이 아름다운 곳</span>
        <div class="desc">
            <span class="town">한국 서귀포시</span>
            <span class="popular">인기도 5014</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/a6bae6554a272897"><span>231</span> 개의 포스트</span>
        </div>
    </div>

    
</div>




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/58d97a501a90a8d4" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/NFNGpTHj1cOCD8AvrmfzIRjzz-4=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1417966658571_ferriswheel_main.jpg" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type00">
        <h4 class="spot-name"><a href="/spot/58d97a501a90a8d4" target="_blank">헵파이브 (ヘップファイブ, Hep Five)</a></h4>
        <span class="spot-state">대관람차가 있는 복합상업시설</span>
        <div class="desc">
            <span class="town">일본 기타 구</span>
            <span class="popular">인기도 4950</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/58d97a501a90a8d4"><span>371</span> 개의 포스트</span>
        </div>
    </div>

    
</div>




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/d18c6238c9ed8bf1" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/vgMsqYUue4HtjJsOL8eDZEFficA=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1377788245047_Osaka_Castle_Nishinomaru_Garden_April_2005.JPG" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type00">
        <h4 class="spot-name"><a href="/spot/d18c6238c9ed8bf1" target="_blank">오사카성 (大阪城, Osaka Castle)</a></h4>
        <span class="spot-state">도요토미 히데요시가 누린 부귀영화의 상징</span>
        <div class="desc">
            <span class="town">일본 Chūō-ku</span>
            <span class="popular">인기도 4829</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/d18c6238c9ed8bf1"><span>538</span> 개의 포스트</span>
        </div>
    </div>

    
</div>





                    
                </div>
                <div class="btn-box center">
                    
                    <a class="btn-more" href="/city?serviceType=global&amp;tab=attraction"><span>가볼만한 곳</span> 더보기 <img src="/images/btn-more.png" alt=""/></a>
                    
                </div>e//btn-box
            </div>
        </div>
        맛집
        <div class="contents-wrap foods">
            <div class="bigHeader">
                맛집
            </div>
            <div class="conts-box-list">
                <div class="inner-box">
                    
                    
                    




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/c8f0e9696903d836" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/15QAownqTLJsWWmTFmHR_e0M45A=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1402123294976_IMG_7630.jpg" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type01">
        <h4 class="spot-name"><a href="/spot/c8f0e9696903d836" target="_blank">리치망고 애월본점 (Rich Mango)</a></h4>
        <span class="spot-state">국내최초 필리핀 디저트카페</span>
        <div class="desc">
            <span class="town">한국 제주시</span>
            <span class="popular">인기도 3345</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/c8f0e9696903d836"><span>171</span> 개의 포스트</span>
        </div>
    </div>

    
</div>




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/317802c2581618e5" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/RqiTD4f3_jo0LwHg0sncMY8iUY4=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1396501769413_cd821494613fb46890aabea5103aba4f.jpg" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type01">
        <h4 class="spot-name"><a href="/spot/317802c2581618e5" target="_blank">명진전복</a></h4>
        <span class="spot-state">고소한 맛이 일품인 전복전문점</span>
        <div class="desc">
            <span class="town">한국 제주시</span>
            <span class="popular">인기도 2197</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/317802c2581618e5"><span>101</span> 개의 포스트</span>
        </div>
    </div>

    
</div>




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/3f73a5e3875a2bc4" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/pqYnUGPTj88XUO1iAPbi_RnMzfc=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1397464918633_EAB3A0EAB8B0EAB5ADEC88991.jpg" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type01">
        <h4 class="spot-name"><a href="/spot/3f73a5e3875a2bc4" target="_blank">자매국수</a></h4>
        <span class="spot-state">국수의 전설, 올래 국수와 함께 3대 국수집으로 손꼽히는 곳</span>
        <div class="desc">
            <span class="town">한국 제주시</span>
            <span class="popular">인기도 1998</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/3f73a5e3875a2bc4"><span>195</span> 개의 포스트</span>
        </div>
    </div>

    
</div>




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/c77e085315ad185a" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/pIoekg9WCs1DVger6XpWJRtvxwU=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1465896253781_20160602120158_IMG_0480.JPG" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type01">
        <h4 class="spot-name"><a href="/spot/c77e085315ad185a" target="_blank">이치란 도톤보리점 (一蘭 道頓堀店, Ichiran Dotonbori)</a></h4>
        <span class="spot-state">진한 국물의 돈코쓰 라멘이 유명한 이치란.오사카 이치란라멘 2호점</span>
        <div class="desc">
            <span class="town">일본 Chūō-ku</span>
            <span class="popular">인기도 1971</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/c77e085315ad185a"><span>203</span> 개의 포스트</span>
        </div>
    </div>

    
</div>




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/ee426b2435e828a8" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/y02PSi5Z9cjw5OdRlzUmDzrMMo4=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1412575605820_%ED%81%AC%EA%B8%B0%EB%B3%80%ED%99%98_IMG_1525_copy_%EB%B3%B5%EC%82%AC.jpg" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type01">
        <h4 class="spot-name"><a href="/spot/ee426b2435e828a8" target="_blank">삼형제 빙수 (三兄妹, Sanxiongmei)</a></h4>
        <span class="spot-state">대만 3대 빙수(아이스몬스터, 스무시, 삼형매)중 하나로 망고 빙수가 유명</span>
        <div class="desc">
            <span class="town">대만 Taipei City</span>
            <span class="popular">인기도 1801</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/ee426b2435e828a8"><span>127</span> 개의 포스트</span>
        </div>
    </div>

    
</div>





                    
                </div>
                <div class="btn-box center">
                    
                    <a class="btn-more" href="/city?serviceType=global&amp;tab=food"><span>맛집</span> 더보기 <img src="/images/btn-more.png" alt=""/></a>
                    
                </div>e//btn-box
            </div>
        </div>
        숙소
        <div class="contents-wrap rooms">
            <div class="bigHeader">
                숙소
            </div>
            <div class="conts-box-list">
                <div class="inner-box">
                    
                    
                    




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/6a26031e694caa6c" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/ZZqA2g1J3dD2W7w5HwYeKhwlNrw=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1423105201845_217010808_b56f651579_b.jpg" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type02">
        <h4 class="spot-name"><a href="/spot/6a26031e694caa6c" target="_blank">베네시안 리조트 호텔 (The Venetian Resort Hotel)</a></h4>
        <span class="spot-state">베네시안 마카오 내부에 있는 유명한 호텔</span>
        <div class="desc">
            <span class="town">마카오 Taipa</span>
            <span class="popular">인기도 1129</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/6a26031e694caa6c"><span>141</span> 개의 포스트</span>
        </div>
    </div>

    
</div>




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/fc6a37b42e26386f" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/XlLo5g9mAfexoNMekr9D04ZbIkA=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1421205756826_MBS_HR_21.jpg" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type02">
        <h4 class="spot-name"><a href="/spot/fc6a37b42e26386f" target="_blank">마리나 베이 샌즈 호텔 (Marina Bay Sands Hotel)</a></h4>
        <span class="spot-state">싱가포르에서 가장 스펙타클한 호텔</span>
        <div class="desc">
            <span class="town">싱가포르 Singapore</span>
            <span class="popular">인기도 1083</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/fc6a37b42e26386f"><span>189</span> 개의 포스트</span>
        </div>
    </div>

    
</div>




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/7cbf17014368382b" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/SWyWKMbAz7zPaU-c0bpo0tTpvgk=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1376236173250_cod_exterior_20100609101441-955x1024.jpg" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type02">
        <h4 class="spot-name"><a href="/spot/7cbf17014368382b" target="_blank">시티 오브 드림즈 (City of Dreams Crown Towers)</a></h4>
        <span class="spot-state">더 하우스 오브 댄싱 워터 공연을 하는 호텔</span>
        <div class="desc">
            <span class="town">마카오 Cotai</span>
            <span class="popular">인기도 798</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/7cbf17014368382b"><span>37</span> 개의 포스트</span>
        </div>
    </div>

    
</div>




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/5cc748f4a62c69eb" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/YHIhnZLqWG9Ugx7hwSEweJM-bcI=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1423442006515_5171820_42_b.jpg" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type02">
        <h4 class="spot-name"><a href="/spot/5cc748f4a62c69eb" target="_blank">쉐라톤 마카오 호텔, 코타이 센트럴 (Sheraton Macao Hotel, Cotai Central)</a></h4>
        <span class="spot-state"></span>
        <div class="desc">
            <span class="town">마카오 에스트라다 꼬타이 마카오</span>
            <span class="popular">인기도 723</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/5cc748f4a62c69eb"><span>50</span> 개의 포스트</span>
        </div>
    </div>

    
</div>




<div class="spots-contents">
    <span class="spot-img">
      <a href="/spot/f26d2701d42bfa95" target="_blank"><img src="https://thumb-wishbeen.akamaized.net/aExxruqCxkml5xOemY6VytfgEBc=/150x149/smart/filters:no_upscale()/img-wishbeen.akamaized.net/spot/1404245863291_Eastin-Grand-Hotel-Sathorn-Bangkok-Building-s.jpg" alt="img"></a>
    </span>
    <div class="spot-info-box spot-type02">
        <h4 class="spot-name"><a href="/spot/f26d2701d42bfa95" target="_blank">이스틴 그랜드 호텔 사톤 (Eastin Grand Hotel Sathorn)</a></h4>
        <span class="spot-state">BTS수락싹역과 연결되어 있어 대중교통 이용이 편리하고 가성비가 좋은 호텔, 수영장이 있는 호텔</span>
        <div class="desc">
            <span class="town">태국 방콕</span>
            <span class="popular">인기도 714</span>
        </div>
        <div class="count-box">
            <span class="btn-post" href="/spot/f26d2701d42bfa95"><span>65</span> 개의 포스트</span>
        </div>
    </div>

    
</div>





                    
                </div>
                <div class="btn-box center">
                    
                    <a class="btn-more" href="/city?serviceType=global&amp;tab=sleep"><span>숙소</span> 더보기 <img src="/images/btn-more.png" alt=""/></a>
                    
                </div>e//btn-box
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>

<div id="google-ad-sense" data-type="728x90">
  <div align="center">
    <script type="text/javascript">
      google_ad_client = "ca-pub-9419115827273897";
      google_ad_slot = "4386217560";
      google_ad_width = 728;
      google_ad_height = 90;
    </script>
    main-bottom
    <script type="text/javascript"
            src="//pagead2.googlesyndication.com/pagead/show_ads.js">
    </script>
  </div>
</div>


<div class="plan-search-top">위로가기 버튼
    <a class="btn-top" style="display: none;"><img src="/images/btn-top.png" alt="go to top"></a>
</div> -->
<!--  
<h1> 여기가 컨텐츠 부분입니다.<br><br> 원하는 거 집어 넣으면 돼요</h1>-->

<h4 align="center">거래요청 성공 
</h4>
  <div class="btn-box center">
            <a class="btn-more" href="listAction.product"><span>메인으로 가기</span> </a>
            <a class="btn-more" href="detailReqAction.product?pr_reqnum=${productReq.pr_reqnum}"><span>확인하기</span></a>
  </div>

<%@include file="../footer.jsp" %>


</body>
</html>