<%@page import="lee.OneonOneDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
center/notice/list
<%@ include file="../../inc/menuData.jsp" %>
<%
// ���������� 1:1 �����ε� �α��� �� ��Ȳ������ �����⶧���� ��ȸ���λ��¿���Ȯ���ϸ� ���������ϴ�^^
MemberVO vo  = (MemberVO) session.getAttribute("memlogin");
	request.setAttribute("data", new OneonOneDAO().list(vo.getId()));
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>