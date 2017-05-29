<%@page import="java.util.List"%>
<%@page import="travel.product.model.ProductDao"%>
<%@page import="travel.product.model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); 
	String p_num=request.getParameter("p_num");

	ProductDao dao = ProductDao.getInstance();
    Product product=dao.detailProduct(p_num);
    
 
    request.setAttribute("product", product);
   
%>


<!DOCTYPE html>
<html>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product_css/city-curation-page-styles.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/product_css/city-main-styles.css">
<script type="text/javascript"></script>
<head>
    
</head>
<%@include file="../header.jsp" %>
<body>


<!--  
<h1> 여기가 컨텐츠 부분입니다.<br><br> 원하는 거 집어 넣으면 돼요</h1>-->

<h4 align="center">물품 수정
</h4>


  <div class="btn-box center">
 
   			<a class="btn-more" href="listAction.product"><span>메인으로 가기</span> </a>
            <a class="btn-more" href="detailAction.product?p_num=${product.p_num}"><span>확인하기</span></a>
  </div>
<%@include file="../footer.jsp" %>

</body>
</html>