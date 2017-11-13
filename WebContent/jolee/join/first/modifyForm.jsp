<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<%	
	 MemberVO vo = (MemberVO)session.getAttribute("memlogin");
	request.setAttribute("data",  new MemberDAO().detail(vo.getId()));
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>