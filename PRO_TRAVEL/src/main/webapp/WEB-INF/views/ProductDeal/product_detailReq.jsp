<%@page import="travel.product.model.Product_Request"%>
<%@page import="travel.product.model.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%

String pr_reqnum=request.getParameter("pr_reqnum");
System.out.println(pr_reqnum);
ProductDao dao = ProductDao.getInstance();


Product_Request productReq=dao.detailProductReq(pr_reqnum);
System.out.println(productReq.getPr_reqnum());



%>

<!DOCTYPE html>
<html>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product_css/city-curation-page-styles.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/product_css/city-main-styles.css">
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
             	<div class="form_body">
             	
		<form action="" class="join_form" method="post">
			<fieldset>
				<legend>거래 요청 확인</legend>
				<table class="primary_table" style="margin-left: auto; margin-right: auto;">
					<tbody>
					
					<tr>
					<th scope="row">거래번호</th>
					<td>
					<p><%=productReq.getPr_reqnum() %></p>
					</tr>
					
					<tr>
					<th scope="row">회원ID</th>
					<td>
					<p><%=productReq.getU_id() %></p>
					</tr>
					
					<tr>
					<th scope="row">물품번호</th>
					<td>
					<p><%=productReq.getP_num()%></p>
					</tr>
					
					<tr>
					<th scope="row">수락여부</th>
					<td>
					<p><%=productReq.getPr_ox()%></p>
					</tr>
					
					<tr>
					<th scope="row">장소</th>
					<td>
					<p><%=productReq.getPr_place()%></p>
					</tr>
					
					<tr>
					<th scope="row">일시</th>
					<td>
					<p><%=productReq.getPr_date() %></p>
					<td>
					
					</tr>
					
				
					

					</tbody>

				</table>
			</fieldset>
		 <div class="btn-box center">
		<!-- <button type = "submit" class="btn-more">등록하기</button>-->
		</div>
			<!-- 
		 <div class="btn-box center">
                    
                    <a class="btn-more" href="product_registerOk.jsp"><span>등록하기</span></a>
                    
                </div>
                 -->
		</form>


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

<%@include file="../footer.jsp" %>
</body>
</html>