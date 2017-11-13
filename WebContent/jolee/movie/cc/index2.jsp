<%@page import="lee.movieDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="../../inc/menuData.jsp" %>
<%
   
	request.setAttribute("data", new movieDAO().recommendlist());

%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>