
<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
center/notice/list
<%@ include file="../../inc/menuData.jsp" %>
<%
	request.setAttribute("data",  new MemberDAO().detail(request.getParameter("id")));

%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>