<%@page import="lee.movieDAO"%>
<%@page import="req.CenterDAO"%>
<%@page import="req.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
center/notice/list
<%@ include file="../../inc/menuData.jsp" %>
<%

	request.setAttribute("data",  new movieDAO().detail2(request.getParameter("title")));
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>