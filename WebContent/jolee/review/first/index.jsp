<%@page import="movie.ReviewVO"%>
<%@page import="movie.ReviewDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
¸®ºä
<%@ include file="../../inc/menuData.jsp" %>
<%
	
	System.out.println(request.getAttribute("cate"));
	ReviewVO vo = new ReviewVO();
	vo.setCate((String)request.getAttribute("cate"));
	request.setAttribute("data",  new ReviewDAO().list((String)request.getAttribute("cate")));
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>