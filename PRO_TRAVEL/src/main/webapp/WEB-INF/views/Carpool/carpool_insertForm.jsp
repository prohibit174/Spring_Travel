<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% 
String id =(String)session.getAttribute("member_id");
%>
<!DOCTYPE html>

<html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/carpool_css/city-main-styles.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin2.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin3.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin4.css" />

    <script data-main="/js/page/city"
            src="/js/lib/bower_components/requirejs/require.js"></script>
 <script type="text/javascript" src="${pageContext.request.contextPath}/JS/carpool_javascript/jquery.js"></script>
<script type="text/javascript" src="http://www.nowarch.com/resources/js/jquery-1.10.2.min.js"></script>           
<script type="text/javascript" src="${pageContext.request.contextPath}/JS/carpool_javascript/carpool_JoinEvent.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/JS/carpool_javascript/carpool_JoinEvent2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/JS/carpool_javascript/tests.js"></script>
 <script src='${pageContext.request.contextPath}/GoogleAPI/lib/jquery.min.js'></script>
<script src='${pageContext.request.contextPath}/GoogleAPI/lib/moment.min.js'></script>
<link rel='stylesheet' href='../GoogleAPI/fullcalendar.css' />
<script src='${pageContext.request.contextPath}/GoogleAPI/fullcalendar.js'></script>
<script src="${pageContext.request.contextPath}/GoogleAPI/moment.js"></script>
<script src="${pageContext.request.contextPath}/JS/loginPopup/loginPopup.js"></script>

<head>
</head>
<%@include file="../header.jsp" %>
<body>


<div id="contents"  class="city">
    <div class="conts-container">
        <div class="present">
            <div class="tabs-list">
                
                <ul class="tabs-list">
            <li><a href="main.carpool" class="first-tag active"><span>CARPOOL</span></a></li>
            <li><a class="Carpool_Enrollment"><span>카풀 등록</span></a></li>     
            <li><a href="list.carpool" data-id="2d8eef384cefda06" class=""><span>대기중인 카풀 리스트</span></a></li>
            <li><a class="My_Carpool"><span>내 카풀 등록 조회</span></a></li>
            
		</ul>

                <div id="google-ad-sense" style="margin-top:20px;float:left;" data-type="260x260">
                  <script type="text/javascript">
                    google_ad_client = "ca-pub-9419115827273897";
                    google_ad_slot = "3548612763";
                    google_ad_width = 260;
                    google_ad_height = 260;
                  </script>
                  <!-- search-260x260 -->
                  
                  <script type="text/javascript"
                          src="//pagead2.googlesyndication.com/pagead/show_ads.js">
                  </script>
                </div>
            
            </div><!-- e//tabs-list -->
<form action="insertAction.carpool" method="post">	
    <div id="carpool_map">
    	<h3 id="carpool_title">카풀의 출발지와 목적지를 마크 하세요</h3>
    	<br>
    	<div id="map"></div>
    </div>
            </div>

						<div class="nlogin_total_box">
							<h3 class="nlogin_title nlogin_email_title">카풀 등록 정보</h3>
							<div class="nlogin_content">
								<div class="email_member_join">

									<table class="nlogin_table" cellpadding="0" cellspacing="0">
									<colgroup>
										<col width="130" />
										<col width="*" />
									</colgroup>
									<tbody>
										<tr>
											<td colspan="2" colspan="2">
												<div class="nlogin_form_section nlogin_form_text">
													<input type="text" name="start_point" id="" class="start_point" title="이메일 주소"  maxlength="96"  value="출발지"/>
													<span class="email_alpha"></span>
													<span class="login_email_02_pos"></span>
												</div>
												
												<div class="nlogin_form_section nlogin_form_text">
													<input type="text" name="dest_point" id="" class="dest_point" title="이메일 주소" maxlength="96"   value="목적지"/>
													<span class="email_alpha"></span>
													<span class="login_email_02_pos"></span>
												</div>
						
												<div class="nlogin_form_section nlogin_form_text">
													<label for="join_email_id">경유지</label>
													<input type="text" name="way_point" id="" title="이메일 주소" maxlength="96"  />
													<span class="email_alpha"></span>
													<span class="login_email_02_pos"></span>
												</div>
												<span class="nlogin_pass_info" id="join_id_helper"></span>
											</td>
										</tr>
										<tr>
											<td colspan="2">
											<div class="nlogin_form_section">
																								<div class="nlogin_date_info">출발일시는 다른 이용자를 위해 꼭 필요한 정보입니다.</div>
											
													<div class="nlogin_select" id="nlogin_year">
														<input type="hidden" id="nlogin_year_value" name="c_year">
														<p data-value="choice"><span>년도</span></p>
														<ul>
															<li><a href="#" id="y1" data-value="2017">2017</a></li>
															<li><a href="#" id="y1" data-value="2018">2018</a></li>
															<li><a href="#" id="y1" data-value="2019">2019</a></li>
															<li><a href="#" id="y1" data-value="2020">2020</a></li>
														</ul>
													</div>
													
													
													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="c_month">
														<p data-value="choice"><span>월</span></p>
														<ul>
														<li><a href="#" id="m1" data-value="1">1</a></li>
														<li><a href="#" id="m2" data-value="2">2</a></li>
														<li><a href="#" id="m3" data-value="3">3</a></li>
														<li><a href="#" id="m4" data-value="4">4</a></li>
														<li><a href="#" id="m5" data-value="5">5</a></li>
														<li><a href="#" id="m6" data-value="6">6</a></li>
														<li><a href="#" id="m7" data-value="7">7</a></li>
														<li><a href="#" id="m8" data-value="8">8</a></li>
														<li><a href="#" id="m9" data-value="9">9</a></li>
														<li><a href="#" id="m10" data-value="10">10</a></li>
														<li><a href="#" id="m11" data-value="11">11</a></li>
														<li><a href="#" id="m12" data-value="12">12</a></li>
														</ul>
													</div>
													<div class="nlogin_select" id="nlogin_day">
														<input type="hidden" id="nlogin_day_value" name="c_date">
														<p data-value="choice"><span>일</span></p>
														<ul>
																													<li><a href="#" id="d1" data-value="1">1</a></li>
																													<li><a href="#" id="d2" data-value="2">2</a></li>
																													<li><a href="#" id="d3" data-value="3">3</a></li>
																													<li><a href="#" id="d4" data-value="4">4</a></li>
																													<li><a href="#" id="d5" data-value="5">5</a></li>
																													<li><a href="#" id="d6" data-value="6">6</a></li>
																													<li><a href="#" id="d7" data-value="7">7</a></li>
																													<li><a href="#" id="d8" data-value="8">8</a></li>
																													<li><a href="#" id="d9" data-value="9">9</a></li>
																													<li><a href="#" id="d10" data-value="10">10</a></li>
																													<li><a href="#" id="d11" data-value="11">11</a></li>
																													<li><a href="#" id="d12" data-value="12">12</a></li>
																													<li><a href="#" id="d13" data-value="13">13</a></li>
																													<li><a href="#" id="d14" data-value="14">14</a></li>
																													<li><a href="#" id="d15" data-value="15">15</a></li>
																													<li><a href="#" id="d16" data-value="16">16</a></li>
																													<li><a href="#" id="d17" data-value="17">17</a></li>
																													<li><a href="#" id="d18" data-value="18">18</a></li>
																													<li><a href="#" id="d19" data-value="19">19</a></li>
																													<li><a href="#" id="d20" data-value="20">20</a></li>
																													<li><a href="#" id="d21" data-value="21">21</a></li>
																													<li><a href="#" id="d22" data-value="22">22</a></li>
																													<li><a href="#" id="d23" data-value="23">23</a></li>
																													<li><a href="#" id="d24" data-value="24">24</a></li>
																													<li><a href="#" id="d25" data-value="25">25</a></li>
																													<li><a href="#" id="d26" data-value="26">26</a></li>
																													<li><a href="#" id="d27" data-value="27">27</a></li>
																													<li><a href="#" id="d28" data-value="28">28</a></li>
																													<li><a href="#" id="d29" data-value="29">29</a></li>
																													<li><a href="#" id="d30" data-value="30">30</a></li>
																													<li><a href="#" id="d31" data-value="31">31</a></li>
																												</ul>
													</div>

													
														<div class="nlogin_select" id="nlogin_hour">
														<input type="hidden" id="nlogin_hour_value" name="c_hour">
														<p data-value="choice"><span>시</span></p>
														<ul>
															<li><a href="#" data-value="1">1</a></li>
															<li><a href="#" data-value="2">2</a></li>
															<li><a href="#" data-value="3">3</a></li>
															<li><a href="#" data-value="4">4</a></li>
															<li><a href="#" data-value="5">5</a></li>
															<li><a href="#" data-value="6">6</a></li>
														</ul>
													</div>
													
													<div class="nlogin_select" id="nlogin_minute">
														<input type="hidden" id="nlogin_minute_value" name="c_minute">
														<p data-value="choice"><span>분</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="00">00</a></li>
																													<li><a href="#" id="m2" data-value="10">10</a></li>
																													<li><a href="#" id="m3" data-value="20">20</a></li>
																													<li><a href="#" id="m4" data-value="30">30</a></li>
																													<li><a href="#" id="m5" data-value="40">40</a></li>
																													<li><a href="#" id="m6" data-value="50">50</a></li>
														</ul>
													</div>
													

													
												</div>
											</td>
										</tr>
										<tr>
											<td colspan="2">
											<div class="nlogin_date_info">다른 이용자를 위해 가격과 남은 좌석을 설정해 주세요.</div>
												<div class="nlogin_select" id="nlogin_gender">
														<input type="hidden" id="nlogin_gender_value" name="c_person">
														<p data-value="choice"><span>남은 좌석</span></p>
														<ul>
															<li><a href="#" data-value="1">1</a></li>
															<li><a href="#" data-value="2">2</a></li>
															<li><a href="#" data-value="3">3</a></li>
															<li><a href="#" data-value="4">4</a></li>
															<li><a href="#" data-value="5">5</a></li>
															<li><a href="#" data-value="6">6</a></li>
														</ul>
													</div>

												<div class="nlogin_select" id="nlogin_price">
														<input type="hidden" id="nlogin_price_value" name="c_price">
														<p data-value="choice"><span>가격</span></p>
														<ul>
															<li><a href="#" data-value="10">$10</a></li>
															<li><a href="#" data-value="20">$20</a></li>
															<li><a href="#" data-value="30">$30</a></li>
															<li><a href="#" data-value="40">$40</a></li>
															<li><a href="#" data-value="50">$50</a></li>
															<li><a href="#" data-value="60">$60</a></li>
														</ul>
												</div>
											</td>
											
										</tr>
										
										<tr>
											<td colspan="2" class="last">
												<p class="nlogin_date_info">카풀 등록창에 등록될 개인정보 입니다.</p>
												<div class="nlogin_form_section">
													<div class="nlogin_select" id="nlogin_year">
														<input type="hidden" id="nlogin_year_value" name="birth_y">
														<p data-value="choice"><span>아이디 : <%=id %></span></p>
														
													</div>
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>월</span></p>
														<ul>
																													<li><a href="#" id="m1" data-value="1">1</a></li>
																													<li><a href="#" id="m2" data-value="2">2</a></li>
																													<li><a href="#" id="m3" data-value="3">3</a></li>
																													<li><a href="#" id="m4" data-value="4">4</a></li>
																													<li><a href="#" id="m5" data-value="5">5</a></li>
																													<li><a href="#" id="m6" data-value="6">6</a></li>
																													<li><a href="#" id="m7" data-value="7">7</a></li>
																													<li><a href="#" id="m8" data-value="8">8</a></li>
																													<li><a href="#" id="m9" data-value="9">9</a></li>
																													<li><a href="#" id="m10" data-value="10">10</a></li>
																													<li><a href="#" id="m11" data-value="11">11</a></li>
																													<li><a href="#" id="m12" data-value="12">12</a></li>
																												</ul>
													</div>
													<div class="nlogin_select" id="nlogin_day">
														<input type="hidden" id="nlogin_day_value" name="birth_d">
														<p data-value="choice"><span>일</span></p>
														<ul>
																													<li><a href="#" id="d1" data-value="1">1</a></li>
																													<li><a href="#" id="d2" data-value="2">2</a></li>
																													<li><a href="#" id="d3" data-value="3">3</a></li>
																													<li><a href="#" id="d4" data-value="4">4</a></li>
																													<li><a href="#" id="d5" data-value="5">5</a></li>
																													<li><a href="#" id="d6" data-value="6">6</a></li>
																													<li><a href="#" id="d7" data-value="7">7</a></li>
																													<li><a href="#" id="d8" data-value="8">8</a></li>
																													<li><a href="#" id="d9" data-value="9">9</a></li>
																													<li><a href="#" id="d10" data-value="10">10</a></li>
																													<li><a href="#" id="d11" data-value="11">11</a></li>
																													<li><a href="#" id="d12" data-value="12">12</a></li>
																													<li><a href="#" id="d13" data-value="13">13</a></li>
																													<li><a href="#" id="d14" data-value="14">14</a></li>
																													<li><a href="#" id="d15" data-value="15">15</a></li>
																													<li><a href="#" id="d16" data-value="16">16</a></li>
																													<li><a href="#" id="d17" data-value="17">17</a></li>
																													<li><a href="#" id="d18" data-value="18">18</a></li>
																													<li><a href="#" id="d19" data-value="19">19</a></li>
																													<li><a href="#" id="d20" data-value="20">20</a></li>
																													<li><a href="#" id="d21" data-value="21">21</a></li>
																													<li><a href="#" id="d22" data-value="22">22</a></li>
																													<li><a href="#" id="d23" data-value="23">23</a></li>
																													<li><a href="#" id="d24" data-value="24">24</a></li>
																													<li><a href="#" id="d25" data-value="25">25</a></li>
																													<li><a href="#" id="d26" data-value="26">26</a></li>
																													<li><a href="#" id="d27" data-value="27">27</a></li>
																													<li><a href="#" id="d28" data-value="28">28</a></li>
																													<li><a href="#" id="d29" data-value="29">29</a></li>
																													<li><a href="#" id="d30" data-value="30">30</a></li>
																													<li><a href="#" id="d31" data-value="31">31</a></li>
																												</ul>
													</div>
													<div class="nlogin_select" id="nlogin_gender">
														<input type="hidden" id="nlogin_gender_value" name="join_sex">
														<p data-value="choice"><span>성별</span></p>
														<ul>
															<li><a href="#" data-value="1">남</a></li>
															<li><a href="#" data-value="2">여</a></li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										</tbody>
									
									</table>
								</div>
								
							</div>

						</div>
						
						</div>
						
						</div>
						
						<div class="nlogin_join_center">
							<button class="nlogin_btn" type="submit">SIGN UP</button>
					    </div>
</form>					

    <style>
       #map {
        height: 400px;
        width: 100%;

       }
       #calendar {
        height:600px;
        width: 50%;
       }
		#carpool_map{
		margin-left: 300px;
		}
		#footer{
		height: 30%;
		}

    </style>



    <script>

    var markerPosition;   
     var marker_zoom4=[];
     var marker_zoom5=[];
     var latLngList=[];
     
     function createLine(latLngList, map){ 
         var movingPath = new google.maps.Polyline({
          path: latLngList,
          geodesic: true,
          strokeColor: '#000000',
          strokeOpacity: 10.0,
          strokeWeight: 1
        });
         if(latLngList.length>1){
         movingPath.setMap(map);
         }
      }
    
    
    function initMap() {
     // when zoom is 4, present location of france, belgium, germany, swiss.
      var franceLocation = {lat: 48.856667, lng: 2.350833};
      var belgiumLocation = {lat: 50.85, lng: 4.35};
      var germanyLocation = {lat: 52.500556, lng: 13.398889};
      var swissLocation = {lat: 46.95, lng: 7.45};
      
      // when zoom is 5, present marker of location of below cities.
      var parisLocation = {lat: 48.856667, lng: 2.350833};
      var niceLocation = {lat: 43.703333, lng: 7.266389};
      var brusselsLocation = {lat: 50.85, lng: 4.35};
      var berlinLocation = {lat: 52.518611, lng: 13.408056};
      var munichLocation = {lat: 48.133333, lng: 11.566667};
      var bernLocation = {lat: 46.95, lng: 7.45};
      var zurichLocation = {lat: 47.366667, lng: 8.55};
      
    
     
       marker_zoom4[0] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: franceLocation,
          map: map,
          title:'france'
        });
     marker_zoom4[1] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: belgiumLocation,
          map: map,
          title:'belguim'
        });
     marker_zoom4[2] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: germanyLocation,
          map: map,
          title:'germany'
        });
     marker_zoom4[3] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: swissLocation,
          map: map,
          title:'swiss'
       });
     
      marker_zoom5[0] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: parisLocation,
          map: map,
          title:'paris'
        });
     marker_zoom5[1] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: niceLocation,
          map: map,
          title:'nice'
        });
     marker_zoom5[2] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: brusselsLocation,
          map: map,
          title:'brussels'
        });
     marker_zoom5[3] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: berlinLocation,
          map: map,
          title:'berlin'
        });
     marker_zoom5[4] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: munichLocation,
          map: map,
          title:'munich'
        });
     marker_zoom5[5] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: bernLocation,
          map: map,
          title:'bern'
        });
     marker_zoom5[6] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: zurichLocation,
          map: map,
          title:'zurich'
        });
     
 	/* 지도 좌표 정보 ajax */
     for(i=0;i<marker_zoom4.length;i++)
    {
    	 var count = 0;
       marker_zoom4[i].addListener('click', function() {
    	   count ++;
    	   latLngList.push(this.getPosition());
    	   createLine(latLngList, map);
    	   console.log(this.getTitle());
    	   if(count%2 != 0){
    	   $.ajax({
    		    url :	'./register.jsp',
    			type : 'post',
    			data : {
    				start : this.getTitle()
    			},
    			success: function sendHandler(data) {
   		         $('input.start_point').val("");
		         $('input.start_point').val(data);
		         
   				}
    	   });
    	   alert("출발지가 추가 되었습니다.")
    	   return false;
    	   }else{
    	   
     	   $.ajax({
   		    url :	'./register.jsp',
   			type : 'post',
   			data : {
   				start : this.getTitle()
   			},
   			success: function sendHandler(data) {
   		      $('input.dest_point').val("");
   	         $('input.dest_point').val(data);
   	         
   				}
   	   });
   	   alert("목적지가 추가 되었습니다.")
   	   return false;
    	   }
        });   
    }
 for(i=0;i<marker_zoom5.length;i++)
 {
	 var count = 0;
    marker_zoom5[i].addListener('click', function() {
    	count++;
 	   latLngList.push(this.getPosition());
 	  	console.log(this.getTitle());
 	   createLine(latLngList, map);

 	   if(count%2 != 0){
 	   $.ajax({
 		    url :	'./register.jsp',
 			type : 'post',
 			data : {
 				start : this.getTitle()
 			},
 			success: function sendHandler(data) {
		         $('input.start_point').val("");
		         $('input.start_point').val(data);
		         
				}
 	   });
 	   alert("출발지가 추가 되었습니다.")
 	   return false;
 	   }else{
 	   
  	   $.ajax({
		    url :	'./register.jsp',
			type : 'post',
			data : {
				start : this.getTitle()
			},
			success: function sendHandler(data) {
		      $('input.dest_point').val("");
	         $('input.dest_point').val(data);
	         
				}
	   });
	   alert("목적지가 추가 되었습니다.")
	   return false;
 	   }
    });   
 }

      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 4,
        center: parisLocation
      });

      map.addListener('zoom_changed', function() {
          if(map.getZoom()<5){

             if(marker_zoom5[0]!=null){
                for(i=0; i<7; i++){
                    marker_zoom5[i].setMap(null);
                 } 
             }
             for(i=0; i<4; i++){
             marker_zoom4[i].setMap(map);
             }
           }
          else if(map.getZoom()>=5){
             
          for(i=0; i<4; i++){
                marker_zoom4[i].setMap(null);
             }   
            for(i=0; i<7; i++){
                marker_zoom5[i].setMap(map);
             }
          }
        });
    }/* ------------------------initMap() 종료 --------------------------------------------------------*/

	/* 지도 좌표 정보 ajax */
	

    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>

<%@include file="../footer.jsp" %>
</body>
</html>