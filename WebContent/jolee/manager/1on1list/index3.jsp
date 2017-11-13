<%@page import="lee.OneonOneDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<% 	request.setAttribute("data", new OneonOneDAO().everylist());
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>