<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp"%>
<%
System.out.println(request.getParameter("grade"));
System.out.println(request.getParameter("id"));
String a = "정보 수정에 실패하셨습니다.";
String b = "index.jsp";
	if (new MemberDAO().changegrade(request.getParameter("id"), request.getParameter("grade"))) {
		a= "정보를 수정하였습니다.";
	}
request.setAttribute("data", a);
request.setAttribute("data2", b);
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>
