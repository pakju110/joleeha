<%@page import="movie.ScrapDAO"%>
<%@page import="movie.ReviewVO"%>
<%@page import="movie.ReviewDAO"%>
<%@page import="req.GalleryDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
center/notice/list
<%@ include file="../../inc/menuData.jsp" %>
<%
	int a = Integer.parseInt(request.getParameter("no"));
	MemberVO vo2 = (MemberVO)session.getAttribute("memlogin");
	request.setAttribute("data",  new ReviewDAO().detail(a));
	session.setAttribute("no", request.getParameter("no"));
	session.setAttribute("cate", "user");
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>