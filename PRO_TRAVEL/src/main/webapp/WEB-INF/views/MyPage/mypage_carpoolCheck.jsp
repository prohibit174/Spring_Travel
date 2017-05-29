<%@page import="travel.carpool.model.CarpoolDao"%>
<%@page import="travel.carpool.model.Carpool"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage_css/city-main-styles_mypage.css">
<head>
    
<%@include file="../header.jsp" %>

<body>
	<br>
	<div class="form_body">
		<form  class="join_form">
		        <div class="present">
            <div class="tabs-list">
                
                <ul class="tabs-list">
    
        
            <li><a href="main.mypage" class="first-tag active"><span>마이페이지</span></a></li> 
            <li><a href="UpdateUserAction.mypage"><span>내 정보 수정</span></a></li>
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=2d8eef384cefda06" data-id="2d8eef384cefda06" class=""><span>내 동행 조회</span></a></li>
            <li><a href="carpoolCheck.mypage"><span>내 카풀조회</span></a></li>
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=f9188662257e085d" data-id="f9188662257e085d" class=""><span>내 상품조회</span></a></li>
            
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
            </div> <!-- present -->
			<fieldset>
				<legend>카풀 등록 현황</legend>
				
            <table class="primary_table">
            <tr>
            <th>등록번호</th>
            <th>아이디</th>
            <th>출발지</th>
            <th>도착지</th>
            <th>경유지</th>
            <th>남은좌석</th>
            <th>가격</th> 
            </tr>
	<c:forEach var="carpool" items="${list}">
      <tr height="30">
         <td align="center">${carpool.c_num }</td>
         <td align="center">${carpool.u_id }</td>
         <td align="center">${carpool.start_point }></td>
         <td align="center">${carpool.dest_point }</td>
         <td align="center">${carpool.way_point }</td>
         <td align="center">${carpool.c_person }</td>
         <td align="center">${carpool.c_price }</td>
         <td align="center"><input type="button" value="수정" onclick="location.href='carpoolUpdate.mypage?c_num=${carpool.c_num } '" class="nlogin_btn"></td>
         <td align="center"><input type="button" value="삭제" onclick="location.href='carpoolDelete.mypage?c_num=${carpool.c_num } '" class="nlogin_btn"></td>
         
         </tr>
         </c:forEach>
      </table>
			</fieldset>
			<fieldset>
				<legend>카풀 구매현황</legend>
            		<table class="primary_table">
            			<tr>
            				<th>카풀구매번호</th>
            				<th>카풀등록번호</th>
            				<th>수락현황</th>
            				<th>판매자아이디</th>
            				<th>취소</th>
           				 </tr>
						<c:forEach var="carpool_Request" items="${cr_list}">
      					<tr height="30">
         					<td align="center">${carpool_Request.cr_num }</td>
         					<td align="center">${carpool_Request.c_num }</td>
         					<td align="center">${carpool_Request.cr_ox }</td>
         					<td align="center">${carpool_Request.u_id}</td>
         					<td align="center"><input type="button" value="취소" onclick="location.href='carpoolRequestDelete.mypage?cr_num=${carpool_Request.cr_num } '" class="nlogin_btn"></td>
         
         </tr>
         </c:forEach>
            </table>
			
					<div class="nlogin_join_center">
					<input type = "button" value="카풀홈" onclick = "location.href='main.carpool'" class = "nlogin_btn">
		</div>
			</fieldset>
		</form>


	</div>
<%@include file="../footer.jsp" %>
</body>
</html>