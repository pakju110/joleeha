<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="../../inc/menuData.jsp" %>

<% request.setAttribute("data", new MemberDAO().gradelist()); %>

<jsp:forward page="../../view/template.jsp"></jsp:forward>