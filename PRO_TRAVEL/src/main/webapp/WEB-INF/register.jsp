<%@page import="travel.carpool.model.Carpool"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.List"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="java.util.ArrayList"%>


<%
   request.setCharacterEncoding("utf-8");
   
   String start = request.getParameter("start");

   out.print(start);
   %>
