<%@page import="travel.product.model.Product_Search"%>
<%@page import="travel.users.model.Users"%>
<%@page import="travel.users.model.UsersDao"%>
<%@page import="travel.product.model.Product"%>
<%@page import="travel.product.model.ProductDao"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	
	request.setCharacterEncoding("utf-8");
	String p_num=request.getParameter("p_num");

    ProductDao dao = ProductDao.getInstance();

    Product product=dao.detailProduct(p_num);
    
    request.setAttribute("product", product);
    
    String u_id = session.getAttribute("member_id").toString();
    
    request.setAttribute("u_id", u_id);
 

%>
<!DOCTYPE html>
<html>
  <script type="text/javascript">
  
	function btn_js_update_click(){
  	  /* confirm(문자열, 초기값) */
  	  var check = confirm("수정하시겠습니까?");
  	  /* if(check == true) else false */
  	  if(check) document.location.href="updateFormAction.product?p_num=<%=product.getP_num()%>";
  	}
  
  
	function btn_js_delete_click(){
    	  /* confirm(문자열, 초기값) */
    	  var check = confirm("삭제하시겠습니까?");
    	  /* if(check == true) else false */
    	  if(check) document.location.href="deleteAction.product?p_num=<%=product.getP_num()%>";
    	}
	
	
	function btn_js_request_click(){
  	  /* confirm(문자열, 초기값) */
  	  var check = confirm("요청하시겠습니까?");
  	  /* if(check == true) else false */
  	  if(check) document.location.href="insertReqFormAction.product?p_num=<%=product.getP_num()%>";
  	  
		}
  </script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product_css/city-curation-page-styles.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/product_css/city-main-styles.css">
<link href="http://img2.tmon.kr/static/img/favi_tmon.ico" rel="shortcut icon"/>
<!-- 보람 디테일 -->
<link href="http://static2.tmon.kr/static/gen/css/common_new.css?v=e9246ef610b2c5ffeb315290178ace3b56b7e97a" rel="stylesheet" type="text/css" charset="utf-8"/>
<link href="http://static1.tmon.kr/static/gen/css/deal.css?v=9967e849305d0ae005ce9fac80a0a74ade132c3e" rel="stylesheet" type="text/css" charset="utf-8"/>
<link href="http://static2.tmon.kr/static/gen/css/deal_old.css?v=084304a6106f90aaeee0c7587bf899cad415c75b" rel="stylesheet" type="text/css" charset="utf-8"/>
<link href="http://static1.tmon.kr/static/gen/css/deal_option.css?v=e2281836b3e88c746a8335f39d52a67b7516051a" rel="stylesheet" type="text/css" charset="utf-8"/>
<link href="http://static2.tmon.kr/static/gen/css/cs_mem.css?v=e1226aa4dabb6690fae5f8ef33bd5a49e10bd188" rel="stylesheet" type="text/css" charset="utf-8"/>
<link href="http://static2.tmon.kr/static/gen/css/deal_lst.css?v=84c22073473acdb08c012e29b9faf6349064b551" rel="stylesheet" type="text/css" charset="utf-8"/>
<link href="http://static2.tmon.kr/static/gen/css/nanum_local.css?v=" rel="stylesheet" type="text/css" charset="utf-8"/>
<link href="http://static2.tmon.kr/static/gen/css/dc_tmpl.css?v=6fb710d723b44a0f9998979d515cf5b05c623055" rel="stylesheet" type="text/css" charset="utf-8"/>
<link href="http://static2.tmon.kr/static/gen/css/jquery.jqzoom.css?v=0662945f6041df0748663a319955ef132fa97499" rel="stylesheet" type="text/css"/>
<link href="http://static1.tmon.kr/static/fancybox/jquery.fancybox-1.3.4.css?v=20110520" rel="stylesheet" type="text/css" charset="utf-8" media="screen"/>
<!-- 디테일 끝 -->
<head>
    
</head>
<%@include file="../header.jsp" %>

<body>



<!--<h1> 여기가 컨텐츠 부분입니다.<br><br> 원하는 거 집어 넣으면 돼요</h1>  -->

<div id="contents"  class="city">
    <div class="conts-container">
        <div class="present">
            <div class="tabs-list">
                
                <ul class="tabs-list">
    
        
            <li><a href="listAction.product" class="first-tag active"><span>전체 조회</span></a></li>
            
            
            <li><a href="insertForm.product"><span>물품 등록</span></a></li>
            
            
            <li><a href="" class=""><span>물품 추천</span></a></li>

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

            <div class="conts-box-list search">
           
              <div class="inner-box" data-wishbeen-hotdeal-count="0" id="hotdeal-list" data-keyword="에어텔" data-category="T_22">
          
        <!-- boram -->
    <div class="conts-container conts-box">
        <div class="contents-wrap">
            <div class="bigHeader">물품 세부</div>
            
            <input type="hidden" id="total_amount" value="0">
<link href="http://static2.tmon.kr/static/gen/css/jquery.jqzoom.css?v=0662945f6041df0748663a319955ef132fa97499" rel="stylesheet" type="text/css"/>
                                 
                                     <div class="deal_detail_wrap deal_detail_type2">
                <div class="img_area" style="width:350px;height:402px;visibility:;">
                <div class="main_img" id="main_img" style="width:350px;height:402px;visibility:;">
                        <div class="condition" style="z-index:100">
                            </div>
                        <ul class="roll" style="width:350px;height:402px;visibility:;"
                        >
                            <li style="width:350px;height:402px;visibility:;">
                            <!-- 이미지 -->
                                <img src="upload/<%=product.getP_img() %>" id="front_image_area" class="main_img_slide" style="width:350px;height:402px;visibility:;" alt="img" />
                      
                            </li>
                            </ul>
                        </div>
                  
                    <div class="review_result">
                     
                    </div>
                                                        </div>                 <!-- WEB-3705 by dwkang <div class="alimipop" id="alarmpop" style="display:none;"></div> -->              
                 <div class="ct_area" style="width:470px;height:576px;visibility:;">
                    <div class="deal_info"></div>
                     <p class="stit">판매자:<%=product.getU_id() %></p>
                    <h3 class="tit">상품명:<%=product.getp_name()%><br /></h3>
                  
                  
               <div id="promotion_block">
               <div id="price_info" class="price_info">
               <p>가격:<%=product.getP_price()%>

                    </div>
                    <div class="dc_coupon">
                        <div class="menu_lst" id="menu_lst">
                                                <a class="btn_viewcp _eventCoupon _act" tl:area="DDIA" tl:ord="1" style="cursor:pointer;display:none;" id="couponA">
                                                       <img src="http://img2.tmon.kr/static/img/img_discount1.gif" width="28" height="21" alt="쿠폰"></img>
                                                       <span id="couponDiscountAmount"></span>
                                                       <span class="btn download">다운로드</span>
                                                       </a>
                                 <!--  <span class="bar">|</span>
                                <em>판매기간:</em>
                          
                            </div>
                    </div>
                    </div> <!-- promotion_block -->
	 <div class="people_time">
                       판매기간:<%=product.getP_term()%>
                          
                      
                    </div>
                  
                    <!-- 내용-->
                        <p class="txt_choice">
                                       내용
                        </p>
                                      
                    <div class="option_info2">
                        <p class="option_txt"></p>
                        <ul class="uio_option_area uio_scroll">
                        <li>
    
                          
                        <%=product.getP_detail()%>
                        </li>
                        </ul>
                      </div>
                      
                                            <div class="order_price1 sell" style="display:none;">
                            <div class="total">
                                <em>총 상품 금액 : </em>
                                <strong><span class="total_amount">0</span><span class="won">원</span></strong>
                            </div>
                        </div>
         
                        <div class="btn_area default">
                                       <!-- boram  -->
						<c:choose>
					       <c:when test="${u_id == product.u_id}">
					<input type="button" name="btn_js_update" id="btn_js_update" onclick="btn_js_update_click();" value="수정하기" />  		 
                    <input type="button" name="btn_js_delete" id="btn_js_delete" onclick="btn_js_delete_click();" value="삭제하기" />
					       </c:when>
					       <c:otherwise>
					<input type="button" name="btn_js_request_update" id="btn_js_request_update" onclick="btn_js_request_click();" value="거래요청" />
					       </c:otherwise>
				 	  </c:choose>
						<!-- boram -->                           
                        </div>
                  
                    </div>
                   
        
                        <!-- [D] 대기예약가능일 경우 -->
                        <div class="h_area" id="h_area_2" style="display:none">
                            <strong class="txt"><span id="h_area_txt"></span>장부터는 대기예약으로 구매됩니다!</strong>
                        </div>
                        <div class="caution_area">
                            <em class="h_caution"><span class="bu"></span></em>
                            <div class="caution_inner">
                                <ul>
                                <li></li>
                                <li><br><span></span></li>
                                </ul>
                            </div>
                        </div>
                        <p class="caution_dsc"></p>

                    </div>
                    <a style="cursor:pointer" id="lpop_btn_close_new" class="btn_clse">
                    </a>
                </div>
                <!-- 이 상품을 본 고객이 많이 본 다른 상품 -->
                <div class="user_other_deal wrap_deal_lst" id="viewuser" style="display:none;">
                    <div class="blank_line"></div>
                    <h3 class="tit">이 상품을 본 고객이 많이 본 다른 상품</h3>
                    <div id="viewuserview">
                    <ul class="lst column5s" id="viewUserViewUlArea">
                    </ul>
                    </div>
                    <div class="page">
                        <span class="num"><strong><span id="now_page">1</span><span class="bar">/</span></strong><span id="total_page"></span></span>
                        <a href="#" class="btn_prev" tl:ord="0" tl:linktype="prev">이전 상품</a>
                        <a href="#" class="btn_next" tl:ord="0" tl:linktype="next">다음 상품</a>
                    </div>
                </div>
                <!-- 이 상품을 본 고객이 많이 본 다른 상품 -->
                <span class="bg_btm"></span>
                </div>
            
        
            
        </div>
    </div>
      
    <!-- boram end -->

              </div>
              <div class="clear"></div>
              <div align="center" class="loading-image">
             
                <div class="load-01">
                  <div class="load-02 fa-spin"></div>
                </div>
              </div>
            </div>
        </div>
    </div>
</div> 
</div>

<%@include file="../footer.jsp" %>
</body>
</html>