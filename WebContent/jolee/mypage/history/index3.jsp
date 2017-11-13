<%@page import="movie.ReviewVO"%>
<%@page import="movie.ReviewDAO"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
center/notice/list
<%@ include file="../../inc/menuData.jsp" %>
<%
	
	
	MemberVO mem = (MemberVO)session.getAttribute("memlogin");
	ReviewVO vo = new ReviewVO();
	
	request.setAttribute("data1",  new ReviewDAO().historylist(mem.getId()));
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>