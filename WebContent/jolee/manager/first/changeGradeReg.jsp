<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp"%>
<%
System.out.println(request.getParameter("grade"));
System.out.println(request.getParameter("id"));
String a = "���� ������ �����ϼ̽��ϴ�.";
String b = "index.jsp";
	if (new MemberDAO().changegrade(request.getParameter("id"), request.getParameter("grade"))) {
		a= "������ �����Ͽ����ϴ�.";
	}
request.setAttribute("data", a);
request.setAttribute("data2", b);
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>
