<%@page import="travel.product.model.Product_Search"%>
<%@page import="travel.product.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="travel.product.model.ProductDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	
	request.setCharacterEncoding("utf-8");
    //ProductDao dao = ProductDao.getInstance();
    //Product_Search proSearch=new Product_Search();
	
   //List<Product> list = dao.listProduct(proSearch);
   //request.setAttribute("list", list);
   
	

%>
<!DOCTYPE html>
<html>
<head>

<%@include file="../header.jsp" %>
</head>
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
            <div class="bigHeader">
		전체 물품
            </div>
            
     <div class="content-tabs">
     <form action="listAction.product" method="post">
       <input type="hidden" name="temp" value="temp"></input>
       					<select name="product_search" data-val="1">
							
							<option value="p_name">상품명</option>
							<option value="u_id">사용자아이디</option>
							
					</select>
       <input type="text" name="searchKey" size="20"></input>
       <input type="submit" name="" value="검색" title="검색" class="btn_type3 btn_search j_btn_search">
   </form>
            
            
	
            </div>
            <div class="conts-box-list">
                <div class="inner-box">


         
         <c:forEach var="product" items="${listModel.list}">
<div data-id="6a341fddf4c819fc" class="content-box type01">
	<a href = "detailAction.product?p_num=${product.p_num }" >
    <div class="type01">
      <div class="cover-img">
      <!-- modi -->
	<c:if test="${product.p_img!=null}">
                  <c:set var="head"
                     value="${fn:substring(product.p_img, 0, fn:length(product.p_img)-4) }"></c:set>
                  <c:set var="pattern"
                     value="${fn:substring(product.p_img, fn:length(head)+1, fn:length(product.p_img)) }"></c:set>

                  <c:choose>
                     <c:when test="${pattern=='jpg' || pattern =='gif' || pattern =='png' }">
                        <img src="upload/${head }_small.${pattern}" alt="img /">
                     </c:when>
                     <c:otherwise>
                        <c:out value="No IMAGE"></c:out>
                     </c:otherwise>
                  </c:choose>
               </c:if>

      </div>
      
      <div class="tit"> <c:out value="${product.p_num }"></c:out></div>
      <div class="desc">
        <span><c:out value="${product.p_price }"></c:out></span>
        <span><c:out value="${product.p_term }"></c:out></span>
      </div>
    </div>
  </a>
</div>

 </c:forEach>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
      
    <!-- boram end -->
  <div id="paging">
   
   <!-- 이전 -->
   <span id="page_back">
   <c:if test="${listModel.startPage > 5 }">
      <a href="listAction.product?pageNum=${listModel.startPage - 5}" >[이전]</a>
   </c:if>
   </span>
   <!-- 페이지 목록 -->
   <c:forEach var="pageNo" begin="${listModel.startPage}"
      end="${listModel.endPage }">
      <span id="page_number">
      <c:if test="${listModel.requestPage == pageNo}"><b></c:if>
      <a href="listAction.product?pageNum=${pageNo}" >[${pageNo}]</a>
      <c:if test="${listModel.requestPage == pageNo}"></b></c:if>
      </span>
   </c:forEach>
   
   <!-- 이후 -->
   <span id="page_front">
   <c:if test="${listModel.endPage < listModel.totalPageCount}">
      <a href="listAction.product?pageNum=${listModel.startPage + 5}">[이후]</a>   
   </c:if>
   </span>
   </div><!-- paging end -->


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