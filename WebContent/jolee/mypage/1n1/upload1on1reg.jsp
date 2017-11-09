
<%@page import="lee.OneonOneDAO"%>
<%@page import="lee.OneonOneVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../../inc/menuData.jsp"%>

<%

	request.setCharacterEncoding("euc-kr");

	OneonOneVO mem = new OneonOneVO();
	mem.setTitle(request.getParameter("title"));
	mem.setContent(request.getParameter("content"));
	mem.setAnswer(0);
//	mem.setId(session.getAttribute())
	OneonOneDAO dao = new OneonOneDAO();
	dao.insert(mem);
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>