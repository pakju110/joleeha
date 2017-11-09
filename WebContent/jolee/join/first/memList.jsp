<%@page import="req1.MemberVO"%>
<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
¸®ºä
<%@ include file="../../inc/menuData.jsp" %>
<%
/* 	System.out.println(request.getAttribute("cate"));
	MemberVO vo = new MemberVO();
	vo.setCate((String)request.getAttribute("cate")); */
	request.setAttribute("data",  new MemberDAO().list());
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>