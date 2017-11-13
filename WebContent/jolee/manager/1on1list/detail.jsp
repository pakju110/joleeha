
<%@page import="lee.OneonOneDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="../../inc/menuData.jsp" %>
<%
request.setCharacterEncoding("euc-kr");
	request.setAttribute("data",  new OneonOneDAO().detail(Integer.parseInt(request.getParameter("no"))));
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>