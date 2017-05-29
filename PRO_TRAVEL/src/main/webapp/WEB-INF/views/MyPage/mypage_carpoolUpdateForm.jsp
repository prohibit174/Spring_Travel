<%@page import="travel.carpool.model.Carpool"%>
<%@page import="travel.carpool.model.CarpoolDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
    <%
String c_num = request.getParameter("c_num");

    CarpoolDao dao = CarpoolDao.getInstance();
    Carpool carpool = dao.detailCarpool(c_num);
   
   request.setAttribute("carpool", carpool);
   
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
    
<%@include file="../header.jsp" %>
<body>


<div id="contents"  class="city">
    <div class="conts-container">
        <div class="present">
            <div class="tabs-list">
                
                <ul class="tabs-list">
    
        
            <li><a href="/city?serviceType=global&amp;tab=hotdeal" class="first-tag active"><span>CARPOOL</span></a></li>
            
            
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=5d1504d8bebfc81e" data-id="5d1504d8bebfc81e" class=""><span>카풀 등록</span></a></li>
            
            
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=2d8eef384cefda06" data-id="2d8eef384cefda06" class=""><span>대기중인 카풀 리스트</span></a></li>
            
            
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=f9188662257e085d" data-id="f9188662257e085d" class=""><span>내 카풀 등록 조회</span></a></li>
            
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
<form action="carpoolUpdate2.mypage?c_num=${carpool.c_num}" method="post">	
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
													<label for="join_email_id">출발위도</label>
													<input type="text" name="start_lati"   id="join_email_id" title="이메일 주소"  maxlength="96"/>
													<span class="email_alpha"></span>
													<span class="login_email_02_pos"></span>
												</div>
												
												<div class="nlogin_form_section nlogin_form_text">
													<label for="join_email_id">출발경도</label>
													<input type="text" name="start_longti" id="join_email_id" title="이메일 주소" maxlength="96"/>
													<span class="email_alpha"></span>
													<span class="login_email_02_pos"></span>
												</div>
												
												<div class="nlogin_form_section nlogin_form_text">
													<label for="join_email_id">도착위도</label>
													<input type="text" name="dest_lati"  id="join_email_id" title="이메일 주소"  maxlength="96"/>
													<span class="email_alpha"></span>
													<span class="login_email_02_pos"></span>
												</div>
												
												<div class="nlogin_form_section nlogin_form_text">
													<label for="join_email_id">도착경도</label>
													<input type="text" name="dest_longti" id="join_email_id" title="이메일 주소" maxlength="96"/>
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
														<input type="hidden" id="nlogin_year_value" name="birth_y">
														<p data-value="choice"><span>년도</span></p>
														<ul>
																													<li><a href="#" id="y1" data-value="2003">2003</a></li>
																													<li><a href="#" id="y2" data-value="2002">2002</a></li>
																													<li><a href="#" id="y3" data-value="2001">2001</a></li>
																													<li><a href="#" id="y4" data-value="2000">2000</a></li>
																													<li><a href="#" id="y5" data-value="1999">1999</a></li>
																													<li><a href="#" id="y6" data-value="1998">1998</a></li>
																													<li><a href="#" id="y7" data-value="1997">1997</a></li>
																													<li><a href="#" id="y8" data-value="1996">1996</a></li>
																													<li><a href="#" id="y9" data-value="1995">1995</a></li>
																													<li><a href="#" id="y10" data-value="1994">1994</a></li>
																													<li><a href="#" id="y11" data-value="1993">1993</a></li>
																													<li><a href="#" id="y12" data-value="1992">1992</a></li>
																													<li><a href="#" id="y13" data-value="1991">1991</a></li>
																													<li><a href="#" id="y14" data-value="1990">1990</a></li>
																													<li><a href="#" id="y15" data-value="1989">1989</a></li>
																													<li><a href="#" id="y16" data-value="1988">1988</a></li>
																													<li><a href="#" id="y17" data-value="1987">1987</a></li>
																													<li><a href="#" id="y18" data-value="1986">1986</a></li>
																													<li><a href="#" id="y19" data-value="1985">1985</a></li>
																													<li><a href="#" id="y20" data-value="1984">1984</a></li>
																													<li><a href="#" id="y21" data-value="1983">1983</a></li>
																													<li><a href="#" id="y22" data-value="1982">1982</a></li>
																													<li><a href="#" id="y23" data-value="1981">1981</a></li>
																													<li><a href="#" id="y24" data-value="1980">1980</a></li>
																													<li><a href="#" id="y25" data-value="1979">1979</a></li>
																													<li><a href="#" id="y26" data-value="1978">1978</a></li>
																													<li><a href="#" id="y27" data-value="1977">1977</a></li>
																													<li><a href="#" id="y28" data-value="1976">1976</a></li>
																													<li><a href="#" id="y29" data-value="1975">1975</a></li>
																													<li><a href="#" id="y30" data-value="1974">1974</a></li>
																													<li><a href="#" id="y31" data-value="1973">1973</a></li>
																													<li><a href="#" id="y32" data-value="1972">1972</a></li>
																													<li><a href="#" id="y33" data-value="1971">1971</a></li>
																													<li><a href="#" id="y34" data-value="1970">1970</a></li>
																													<li><a href="#" id="y35" data-value="1969">1969</a></li>
																													<li><a href="#" id="y36" data-value="1968">1968</a></li>
																													<li><a href="#" id="y37" data-value="1967">1967</a></li>
																													<li><a href="#" id="y38" data-value="1966">1966</a></li>
																													<li><a href="#" id="y39" data-value="1965">1965</a></li>
																													<li><a href="#" id="y40" data-value="1964">1964</a></li>
																													<li><a href="#" id="y41" data-value="1963">1963</a></li>
																													<li><a href="#" id="y42" data-value="1962">1962</a></li>
																													<li><a href="#" id="y43" data-value="1961">1961</a></li>
																													<li><a href="#" id="y44" data-value="1960">1960</a></li>
																													<li><a href="#" id="y45" data-value="1959">1959</a></li>
																													<li><a href="#" id="y46" data-value="1958">1958</a></li>
																													<li><a href="#" id="y47" data-value="1957">1957</a></li>
																													<li><a href="#" id="y48" data-value="1956">1956</a></li>
																													<li><a href="#" id="y49" data-value="1955">1955</a></li>
																													<li><a href="#" id="y50" data-value="1954">1954</a></li>
																													<li><a href="#" id="y51" data-value="1953">1953</a></li>
																													<li><a href="#" id="y52" data-value="1952">1952</a></li>
																													<li><a href="#" id="y53" data-value="1951">1951</a></li>
																													<li><a href="#" id="y54" data-value="1950">1950</a></li>
																													<li><a href="#" id="y55" data-value="1949">1949</a></li>
																													<li><a href="#" id="y56" data-value="1948">1948</a></li>
																													<li><a href="#" id="y57" data-value="1947">1947</a></li>
																													<li><a href="#" id="y58" data-value="1946">1946</a></li>
																													<li><a href="#" id="y59" data-value="1945">1945</a></li>
																													<li><a href="#" id="y60" data-value="1944">1944</a></li>
																													<li><a href="#" id="y61" data-value="1943">1943</a></li>
																													<li><a href="#" id="y62" data-value="1942">1942</a></li>
																													<li><a href="#" id="y63" data-value="1941">1941</a></li>
																													<li><a href="#" id="y64" data-value="1940">1940</a></li>
																													<li><a href="#" id="y65" data-value="1939">1939</a></li>
																													<li><a href="#" id="y66" data-value="1938">1938</a></li>
																													<li><a href="#" id="y67" data-value="1937">1937</a></li>
																													<li><a href="#" id="y68" data-value="1936">1936</a></li>
																													<li><a href="#" id="y69" data-value="1935">1935</a></li>
																													<li><a href="#" id="y70" data-value="1934">1934</a></li>
																													<li><a href="#" id="y71" data-value="1933">1933</a></li>
																													<li><a href="#" id="y72" data-value="1932">1932</a></li>
																													<li><a href="#" id="y73" data-value="1931">1931</a></li>
																													<li><a href="#" id="y74" data-value="1930">1930</a></li>
																													<li><a href="#" id="y75" data-value="1929">1929</a></li>
																													<li><a href="#" id="y76" data-value="1928">1928</a></li>
																													<li><a href="#" id="y77" data-value="1927">1927</a></li>
																													<li><a href="#" id="y78" data-value="1926">1926</a></li>
																													<li><a href="#" id="y79" data-value="1925">1925</a></li>
																													<li><a href="#" id="y80" data-value="1924">1924</a></li>
																													<li><a href="#" id="y81" data-value="1923">1923</a></li>
																													<li><a href="#" id="y82" data-value="1922">1922</a></li>
																													<li><a href="#" id="y83" data-value="1921">1921</a></li>
																													<li><a href="#" id="y84" data-value="1920">1920</a></li>
																													<li><a href="#" id="y85" data-value="1919">1919</a></li>
																													<li><a href="#" id="y86" data-value="1918">1918</a></li>
																													<li><a href="#" id="y87" data-value="1917">1917</a></li>
																													<li><a href="#" id="y88" data-value="1916">1916</a></li>
																													<li><a href="#" id="y89" data-value="1915">1915</a></li>
																													<li><a href="#" id="y90" data-value="1914">1914</a></li>
																													<li><a href="#" id="y91" data-value="1913">1913</a></li>
																													<li><a href="#" id="y92" data-value="1912">1912</a></li>
																													<li><a href="#" id="y93" data-value="1911">1911</a></li>
																													<li><a href="#" id="y94" data-value="1910">1910</a></li>
																													<li><a href="#" id="y95" data-value="1909">1909</a></li>
																													<li><a href="#" id="y96" data-value="1908">1908</a></li>
																													<li><a href="#" id="y97" data-value="1907">1907</a></li>
																													<li><a href="#" id="y98" data-value="1906">1906</a></li>
																													<li><a href="#" id="y99" data-value="1905">1905</a></li>
																													<li><a href="#" id="y100" data-value="1904">1904</a></li>
																													<li><a href="#" id="y101" data-value="1903">1903</a></li>
																													<li><a href="#" id="y102" data-value="1902">1902</a></li>
																													<li><a href="#" id="y103" data-value="1901">1901</a></li>
																													<li><a href="#" id="y104" data-value="1900">1900</a></li>
																													<li><a href="#" id="y105" data-value="1899">1899</a></li>
																													<li><a href="#" id="y106" data-value="1898">1898</a></li>
																													<li><a href="#" id="y107" data-value="1897">1897</a></li>
																													<li><a href="#" id="y108" data-value="1896">1896</a></li>
																													<li><a href="#" id="y109" data-value="1895">1895</a></li>
																													<li><a href="#" id="y110" data-value="1894">1894</a></li>
																												</ul>
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

													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>시</span></p>
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
													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>분</span></p>
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
													
												</div>
											</td>
										</tr>
										<tr>
											<td colspan="2">
											<div class="nlogin_date_info">도착일시는 다른 이용자를 위해 꼭 필요한 정보입니다.</div>
												<div class="nlogin_select" id="nlogin_year">
														
												
														<input type="hidden" id="nlogin_year_value" name="birth_y">
														
														<p data-value="choice"><span>년도</span></p>
														<ul>
																													<li><a href="#" id="y1" data-value="2003">2003</a></li>
																													<li><a href="#" id="y2" data-value="2002">2002</a></li>
																													<li><a href="#" id="y3" data-value="2001">2001</a></li>
																													<li><a href="#" id="y4" data-value="2000">2000</a></li>
																													<li><a href="#" id="y5" data-value="1999">1999</a></li>
																													<li><a href="#" id="y6" data-value="1998">1998</a></li>
																													<li><a href="#" id="y7" data-value="1997">1997</a></li>
																													<li><a href="#" id="y8" data-value="1996">1996</a></li>
																													<li><a href="#" id="y9" data-value="1995">1995</a></li>
																													<li><a href="#" id="y10" data-value="1994">1994</a></li>
																													<li><a href="#" id="y11" data-value="1993">1993</a></li>
																													<li><a href="#" id="y12" data-value="1992">1992</a></li>
																													<li><a href="#" id="y13" data-value="1991">1991</a></li>
																													<li><a href="#" id="y14" data-value="1990">1990</a></li>
																													<li><a href="#" id="y15" data-value="1989">1989</a></li>
																													<li><a href="#" id="y16" data-value="1988">1988</a></li>
																													<li><a href="#" id="y17" data-value="1987">1987</a></li>
																													<li><a href="#" id="y18" data-value="1986">1986</a></li>
																													<li><a href="#" id="y19" data-value="1985">1985</a></li>
																													<li><a href="#" id="y20" data-value="1984">1984</a></li>
																													<li><a href="#" id="y21" data-value="1983">1983</a></li>
																													<li><a href="#" id="y22" data-value="1982">1982</a></li>
																													<li><a href="#" id="y23" data-value="1981">1981</a></li>
																													<li><a href="#" id="y24" data-value="1980">1980</a></li>
																													<li><a href="#" id="y25" data-value="1979">1979</a></li>
																													<li><a href="#" id="y26" data-value="1978">1978</a></li>
																													<li><a href="#" id="y27" data-value="1977">1977</a></li>
																													<li><a href="#" id="y28" data-value="1976">1976</a></li>
																													<li><a href="#" id="y29" data-value="1975">1975</a></li>
																													<li><a href="#" id="y30" data-value="1974">1974</a></li>
																													<li><a href="#" id="y31" data-value="1973">1973</a></li>
																													<li><a href="#" id="y32" data-value="1972">1972</a></li>
																													<li><a href="#" id="y33" data-value="1971">1971</a></li>
																													<li><a href="#" id="y34" data-value="1970">1970</a></li>
																													<li><a href="#" id="y35" data-value="1969">1969</a></li>
																													<li><a href="#" id="y36" data-value="1968">1968</a></li>
																													<li><a href="#" id="y37" data-value="1967">1967</a></li>
																													<li><a href="#" id="y38" data-value="1966">1966</a></li>
																													<li><a href="#" id="y39" data-value="1965">1965</a></li>
																													<li><a href="#" id="y40" data-value="1964">1964</a></li>
																													<li><a href="#" id="y41" data-value="1963">1963</a></li>
																													<li><a href="#" id="y42" data-value="1962">1962</a></li>
																													<li><a href="#" id="y43" data-value="1961">1961</a></li>
																													<li><a href="#" id="y44" data-value="1960">1960</a></li>
																													<li><a href="#" id="y45" data-value="1959">1959</a></li>
																													<li><a href="#" id="y46" data-value="1958">1958</a></li>
																													<li><a href="#" id="y47" data-value="1957">1957</a></li>
																													<li><a href="#" id="y48" data-value="1956">1956</a></li>
																													<li><a href="#" id="y49" data-value="1955">1955</a></li>
																													<li><a href="#" id="y50" data-value="1954">1954</a></li>
																													<li><a href="#" id="y51" data-value="1953">1953</a></li>
																													<li><a href="#" id="y52" data-value="1952">1952</a></li>
																													<li><a href="#" id="y53" data-value="1951">1951</a></li>
																													<li><a href="#" id="y54" data-value="1950">1950</a></li>
																													<li><a href="#" id="y55" data-value="1949">1949</a></li>
																													<li><a href="#" id="y56" data-value="1948">1948</a></li>
																													<li><a href="#" id="y57" data-value="1947">1947</a></li>
																													<li><a href="#" id="y58" data-value="1946">1946</a></li>
																													<li><a href="#" id="y59" data-value="1945">1945</a></li>
																													<li><a href="#" id="y60" data-value="1944">1944</a></li>
																													<li><a href="#" id="y61" data-value="1943">1943</a></li>
																													<li><a href="#" id="y62" data-value="1942">1942</a></li>
																													<li><a href="#" id="y63" data-value="1941">1941</a></li>
																													<li><a href="#" id="y64" data-value="1940">1940</a></li>
																													<li><a href="#" id="y65" data-value="1939">1939</a></li>
																													<li><a href="#" id="y66" data-value="1938">1938</a></li>
																													<li><a href="#" id="y67" data-value="1937">1937</a></li>
																													<li><a href="#" id="y68" data-value="1936">1936</a></li>
																													<li><a href="#" id="y69" data-value="1935">1935</a></li>
																													<li><a href="#" id="y70" data-value="1934">1934</a></li>
																													<li><a href="#" id="y71" data-value="1933">1933</a></li>
																													<li><a href="#" id="y72" data-value="1932">1932</a></li>
																													<li><a href="#" id="y73" data-value="1931">1931</a></li>
																													<li><a href="#" id="y74" data-value="1930">1930</a></li>
																													<li><a href="#" id="y75" data-value="1929">1929</a></li>
																													<li><a href="#" id="y76" data-value="1928">1928</a></li>
																													<li><a href="#" id="y77" data-value="1927">1927</a></li>
																													<li><a href="#" id="y78" data-value="1926">1926</a></li>
																													<li><a href="#" id="y79" data-value="1925">1925</a></li>
																													<li><a href="#" id="y80" data-value="1924">1924</a></li>
																													<li><a href="#" id="y81" data-value="1923">1923</a></li>
																													<li><a href="#" id="y82" data-value="1922">1922</a></li>
																													<li><a href="#" id="y83" data-value="1921">1921</a></li>
																													<li><a href="#" id="y84" data-value="1920">1920</a></li>
																													<li><a href="#" id="y85" data-value="1919">1919</a></li>
																													<li><a href="#" id="y86" data-value="1918">1918</a></li>
																													<li><a href="#" id="y87" data-value="1917">1917</a></li>
																													<li><a href="#" id="y88" data-value="1916">1916</a></li>
																													<li><a href="#" id="y89" data-value="1915">1915</a></li>
																													<li><a href="#" id="y90" data-value="1914">1914</a></li>
																													<li><a href="#" id="y91" data-value="1913">1913</a></li>
																													<li><a href="#" id="y92" data-value="1912">1912</a></li>
																													<li><a href="#" id="y93" data-value="1911">1911</a></li>
																													<li><a href="#" id="y94" data-value="1910">1910</a></li>
																													<li><a href="#" id="y95" data-value="1909">1909</a></li>
																													<li><a href="#" id="y96" data-value="1908">1908</a></li>
																													<li><a href="#" id="y97" data-value="1907">1907</a></li>
																													<li><a href="#" id="y98" data-value="1906">1906</a></li>
																													<li><a href="#" id="y99" data-value="1905">1905</a></li>
																													<li><a href="#" id="y100" data-value="1904">1904</a></li>
																													<li><a href="#" id="y101" data-value="1903">1903</a></li>
																													<li><a href="#" id="y102" data-value="1902">1902</a></li>
																													<li><a href="#" id="y103" data-value="1901">1901</a></li>
																													<li><a href="#" id="y104" data-value="1900">1900</a></li>
																													<li><a href="#" id="y105" data-value="1899">1899</a></li>
																													<li><a href="#" id="y106" data-value="1898">1898</a></li>
																													<li><a href="#" id="y107" data-value="1897">1897</a></li>
																													<li><a href="#" id="y108" data-value="1896">1896</a></li>
																													<li><a href="#" id="y109" data-value="1895">1895</a></li>
																													<li><a href="#" id="y110" data-value="1894">1894</a></li>
																												</ul>
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

													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>시</span></p>
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
													
													<div class="nlogin_select" id="nlogin_month">
														<input type="hidden" id="nlogin_month_value" name="birth_m">
														<p data-value="choice"><span>분</span></p>
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

											</td>
										</tr>
										<tr>
											<td colspan="2" class="last">
												<p class="nlogin_date_info">생년월일과 성별은 이메일/비밀번호 분실하였을경우 본인확인을 위해 꼭 필요한 정보입니다.</p>
												<div class="nlogin_form_section">
													<div class="nlogin_select" id="nlogin_year">
														<input type="hidden" id="nlogin_year_value" name="birth_y">
														<p data-value="choice"><span>생일 년도</span></p>
														<ul>
																													<li><a href="#" id="y1" data-value="2003">2003</a></li>
																													<li><a href="#" id="y2" data-value="2002">2002</a></li>
																													<li><a href="#" id="y3" data-value="2001">2001</a></li>
																													<li><a href="#" id="y4" data-value="2000">2000</a></li>
																													<li><a href="#" id="y5" data-value="1999">1999</a></li>
																													<li><a href="#" id="y6" data-value="1998">1998</a></li>
																													<li><a href="#" id="y7" data-value="1997">1997</a></li>
																													<li><a href="#" id="y8" data-value="1996">1996</a></li>
																													<li><a href="#" id="y9" data-value="1995">1995</a></li>
																													<li><a href="#" id="y10" data-value="1994">1994</a></li>
																													<li><a href="#" id="y11" data-value="1993">1993</a></li>
																													<li><a href="#" id="y12" data-value="1992">1992</a></li>
																													<li><a href="#" id="y13" data-value="1991">1991</a></li>
																													<li><a href="#" id="y14" data-value="1990">1990</a></li>
																													<li><a href="#" id="y15" data-value="1989">1989</a></li>
																													<li><a href="#" id="y16" data-value="1988">1988</a></li>
																													<li><a href="#" id="y17" data-value="1987">1987</a></li>
																													<li><a href="#" id="y18" data-value="1986">1986</a></li>
																													<li><a href="#" id="y19" data-value="1985">1985</a></li>
																													<li><a href="#" id="y20" data-value="1984">1984</a></li>
																													<li><a href="#" id="y21" data-value="1983">1983</a></li>
																													<li><a href="#" id="y22" data-value="1982">1982</a></li>
																													<li><a href="#" id="y23" data-value="1981">1981</a></li>
																													<li><a href="#" id="y24" data-value="1980">1980</a></li>
																													<li><a href="#" id="y25" data-value="1979">1979</a></li>
																													<li><a href="#" id="y26" data-value="1978">1978</a></li>
																													<li><a href="#" id="y27" data-value="1977">1977</a></li>
																													<li><a href="#" id="y28" data-value="1976">1976</a></li>
																													<li><a href="#" id="y29" data-value="1975">1975</a></li>
																													<li><a href="#" id="y30" data-value="1974">1974</a></li>
																													<li><a href="#" id="y31" data-value="1973">1973</a></li>
																													<li><a href="#" id="y32" data-value="1972">1972</a></li>
																													<li><a href="#" id="y33" data-value="1971">1971</a></li>
																													<li><a href="#" id="y34" data-value="1970">1970</a></li>
																													<li><a href="#" id="y35" data-value="1969">1969</a></li>
																													<li><a href="#" id="y36" data-value="1968">1968</a></li>
																													<li><a href="#" id="y37" data-value="1967">1967</a></li>
																													<li><a href="#" id="y38" data-value="1966">1966</a></li>
																													<li><a href="#" id="y39" data-value="1965">1965</a></li>
																													<li><a href="#" id="y40" data-value="1964">1964</a></li>
																													<li><a href="#" id="y41" data-value="1963">1963</a></li>
																													<li><a href="#" id="y42" data-value="1962">1962</a></li>
																													<li><a href="#" id="y43" data-value="1961">1961</a></li>
																													<li><a href="#" id="y44" data-value="1960">1960</a></li>
																													<li><a href="#" id="y45" data-value="1959">1959</a></li>
																													<li><a href="#" id="y46" data-value="1958">1958</a></li>
																													<li><a href="#" id="y47" data-value="1957">1957</a></li>
																													<li><a href="#" id="y48" data-value="1956">1956</a></li>
																													<li><a href="#" id="y49" data-value="1955">1955</a></li>
																													<li><a href="#" id="y50" data-value="1954">1954</a></li>
																													<li><a href="#" id="y51" data-value="1953">1953</a></li>
																													<li><a href="#" id="y52" data-value="1952">1952</a></li>
																													<li><a href="#" id="y53" data-value="1951">1951</a></li>
																													<li><a href="#" id="y54" data-value="1950">1950</a></li>
																													<li><a href="#" id="y55" data-value="1949">1949</a></li>
																													<li><a href="#" id="y56" data-value="1948">1948</a></li>
																													<li><a href="#" id="y57" data-value="1947">1947</a></li>
																													<li><a href="#" id="y58" data-value="1946">1946</a></li>
																													<li><a href="#" id="y59" data-value="1945">1945</a></li>
																													<li><a href="#" id="y60" data-value="1944">1944</a></li>
																													<li><a href="#" id="y61" data-value="1943">1943</a></li>
																													<li><a href="#" id="y62" data-value="1942">1942</a></li>
																													<li><a href="#" id="y63" data-value="1941">1941</a></li>
																													<li><a href="#" id="y64" data-value="1940">1940</a></li>
																													<li><a href="#" id="y65" data-value="1939">1939</a></li>
																													<li><a href="#" id="y66" data-value="1938">1938</a></li>
																													<li><a href="#" id="y67" data-value="1937">1937</a></li>
																													<li><a href="#" id="y68" data-value="1936">1936</a></li>
																													<li><a href="#" id="y69" data-value="1935">1935</a></li>
																													<li><a href="#" id="y70" data-value="1934">1934</a></li>
																													<li><a href="#" id="y71" data-value="1933">1933</a></li>
																													<li><a href="#" id="y72" data-value="1932">1932</a></li>
																													<li><a href="#" id="y73" data-value="1931">1931</a></li>
																													<li><a href="#" id="y74" data-value="1930">1930</a></li>
																													<li><a href="#" id="y75" data-value="1929">1929</a></li>
																													<li><a href="#" id="y76" data-value="1928">1928</a></li>
																													<li><a href="#" id="y77" data-value="1927">1927</a></li>
																													<li><a href="#" id="y78" data-value="1926">1926</a></li>
																													<li><a href="#" id="y79" data-value="1925">1925</a></li>
																													<li><a href="#" id="y80" data-value="1924">1924</a></li>
																													<li><a href="#" id="y81" data-value="1923">1923</a></li>
																													<li><a href="#" id="y82" data-value="1922">1922</a></li>
																													<li><a href="#" id="y83" data-value="1921">1921</a></li>
																													<li><a href="#" id="y84" data-value="1920">1920</a></li>
																													<li><a href="#" id="y85" data-value="1919">1919</a></li>
																													<li><a href="#" id="y86" data-value="1918">1918</a></li>
																													<li><a href="#" id="y87" data-value="1917">1917</a></li>
																													<li><a href="#" id="y88" data-value="1916">1916</a></li>
																													<li><a href="#" id="y89" data-value="1915">1915</a></li>
																													<li><a href="#" id="y90" data-value="1914">1914</a></li>
																													<li><a href="#" id="y91" data-value="1913">1913</a></li>
																													<li><a href="#" id="y92" data-value="1912">1912</a></li>
																													<li><a href="#" id="y93" data-value="1911">1911</a></li>
																													<li><a href="#" id="y94" data-value="1910">1910</a></li>
																													<li><a href="#" id="y95" data-value="1909">1909</a></li>
																													<li><a href="#" id="y96" data-value="1908">1908</a></li>
																													<li><a href="#" id="y97" data-value="1907">1907</a></li>
																													<li><a href="#" id="y98" data-value="1906">1906</a></li>
																													<li><a href="#" id="y99" data-value="1905">1905</a></li>
																													<li><a href="#" id="y100" data-value="1904">1904</a></li>
																													<li><a href="#" id="y101" data-value="1903">1903</a></li>
																													<li><a href="#" id="y102" data-value="1902">1902</a></li>
																													<li><a href="#" id="y103" data-value="1901">1901</a></li>
																													<li><a href="#" id="y104" data-value="1900">1900</a></li>
																													<li><a href="#" id="y105" data-value="1899">1899</a></li>
																													<li><a href="#" id="y106" data-value="1898">1898</a></li>
																													<li><a href="#" id="y107" data-value="1897">1897</a></li>
																													<li><a href="#" id="y108" data-value="1896">1896</a></li>
																													<li><a href="#" id="y109" data-value="1895">1895</a></li>
																													<li><a href="#" id="y110" data-value="1894">1894</a></li>
																												</ul>
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
							<button class="nlogin_btn" type="submit">수정 하기</button>
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
     
     function addItineraryOnCalendar(marker) {//마커를 마우스 
        //var title=marker.getTitle();
         var temp = new google.maps.Marker({
       });
           alert(typeof temp); 
         temp=marker;
        

        var position=temp.getPosition();
       alert(position);
        $('#calendar').fullCalendar( 'addEventSource', {
             events: [
                 {
                     title: 'Event1',
                     start: '2017-04-01'
                 },
                 {
                     title: 'Event2',
                     start: '2017-04-02'
                 }
             ],
             color: 'yellow',   // an option!
             textColor: 'black' // an option!
         } )
        }
     
     for(i=0;i<marker_zoom4.length;i++)
    {
       marker_zoom4[i].addListener('click', function() {
          alert('marker 4 click event');
          addItineraryOnCalendar(marker_zoom4[i]);

        });   
    }
 for(i=0;i<marker_zoom5.length;i++)
 {
    marker_zoom5[i].addListener('click', function() {
       alert('marker 5 click event');
       addItineraryOnCalendar(marker_zoom5[i]);

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


    

    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>
<%@include file="../footer.jsp" %>
</body>
</html>