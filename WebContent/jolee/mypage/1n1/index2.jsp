<%@page import="lee.OneonOneDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
center/notice/list
<%@ include file="../../inc/menuData.jsp" %>
<%
String a = "superpower";
	request.setAttribute("data", new OneonOneDAO().list(a));
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>