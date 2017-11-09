<%@page import="req1.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<%
System.out.println(request.getParameter("no"));
request.setAttribute("data", new NoticeDAO().delete(Integer.parseInt(request.getParameter("no"))));
%>

<jsp:forward page="../../view/template.jsp"></jsp:forward>