<%@page import="lee.OneonOneDAO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<%
System.out.println(request.getParameter("no"));
request.setAttribute("data", new OneonOneDAO().delete(Integer.parseInt(request.getParameter("no"))));
%>

<jsp:forward page="../../view/template.jsp"></jsp:forward>