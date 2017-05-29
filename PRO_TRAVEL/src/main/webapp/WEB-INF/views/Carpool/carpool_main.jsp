<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<script src="${pageContext.request.contextPath}/JS/vendor/modernizr.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/JS/vendor/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath}/JS/vendor/jquery-ui-1.10.3.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/JS/main.js"></script>
<%@include file="../header.jsp" %>


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

<div class="slideshow">
    <div class="slideshow-slides">
        <a href="./" class="slide" id="slide-1"><img src="${pageContext.request.contextPath}/images/img/jiwoong1.jpg" alt="" width="1600" height="465"></a>
        <a href="./" class="slide" id="slide-2"><img src="${pageContext.request.contextPath}/images/img/jiwoong2.jpg" alt="" width="1300" height="465"></a>
        <a href="./" class="slide" id="slide-3"><img src="${pageContext.request.contextPath}/images/img/jiwoong3.png" alt="" width="1300" height="465"></a>
        <a href="./" class="slide" id="slide-4"><img src="${pageContext.request.contextPath}/images/img/slide-4.jpg" alt="" width="1600" height="465"></a>
    </div>
    <div class="slideshow-nav">
        <a href="#" class="prev">Prev</a>
        <a href="#" class="next">Next</a>
    </div>
    <div class="slideshow-indicator"></div>
</div>

            </div>

						
						
						</div>
						
						</div>


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
    



   
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>

<%@include file="../footer.jsp" %>
</body>
</html>