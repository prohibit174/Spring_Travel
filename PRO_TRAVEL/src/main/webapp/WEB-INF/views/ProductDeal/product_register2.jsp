<%@page import="travel.users.model.UsersDao"%>
<%@page import="travel.users.model.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String u_id  = session.getAttribute("member_id").toString();
	
	request.setAttribute("u_id", u_id);
	
	UsersDao dao = UsersDao.getInstance();
	Users user = dao.userDetail(u_id);
	
	request.setAttribute("user", user);	
%>
<!DOCTYPE html>
<html>

 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product_css/city-curation-page-styles.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/product_css/city-main-styles.css">
<style type="text/css">
	#button_product{
	color : white;
	text-decoration: none;
	}

</style>
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
		<form action="insertAction.product" class="join_form" method="post" enctype="multipart/form-data">
			<fieldset>
				<legend>물품 등록</legend>

	
				<table class="primary_table" style="margin-left: auto; margin-right: auto;">
					<tbody>
					
					<tr>
					<th scope="row">물품등록번호</th>
					<td>
					<input type = "text" id = "p_num" name="p_num">
					</tr>
					
					<tr>
					<th scope="row">회원ID</th>
					<td>
					<input type = "text" id = "u_id" name="u_id" value="${u_id}">
					</tr>
					
					<tr>
					<th scope="row">파일</th>
					<td>
					<input type = "file" id = "p_img" name="p_img">
					</tr>
					
					<tr>
					<th scope="row">내용</th>
					<td>
					<input type = "text" id = "p_detail" name="p_detail">
					</tr>
					
					<tr>
					<th scope="row">가격</th>
					<td>
					<input type = "text" id = "p_price" name="p_price">
					</tr>
					
					<tr>
					<th scope="row">상품명</th>
					<td>
					<input type = "text" id = "p_name" name="p_name">
					</tr>
					
					
					<tr>
					<th scope="row">기간</th>
					<td>
					<input type = "text" id = "p_term" name="p_term">
					</tr>
					
					<tr>
					<th scope="row">여부</th>
					<td>
					<input type = "text" id = "p_ox" name="p_ox">
					</tr>
					

					</tbody>

				</table>

			</fieldset>
			

		 <div class="btn-box center">
		<button type = "submit" class="btn-more">등록하기</button>
		</div>
		
		
		
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