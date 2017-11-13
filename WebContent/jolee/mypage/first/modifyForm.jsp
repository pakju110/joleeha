<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<%	
	/*  MemberVO vo = (MemberVO)session.getAttribute("memlogin");
	request.setAttribute("data",  new MemberDAO().detail(vo.getId())); */
	MemberDAO dao = new MemberDAO();
	MemberVO vo = dao.detail(request.getParameter("id"));
 	request.setAttribute("vo", vo);
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>