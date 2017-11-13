<%@page import="lee.OneonOneDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
center/notice/list
<%@ include file="../../inc/menuData.jsp" %>
<%
// 마이페이지 1:1 문의인데 로그인 한 상황에서만 나오기때문에 비회원인상태에서확인하면 백퍼터집니다^^
MemberVO vo  = (MemberVO) session.getAttribute("memlogin");
	request.setAttribute("data", new OneonOneDAO().list(vo.getId()));
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>