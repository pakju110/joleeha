<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<%
	if(new MemberDAO().becomeAuser(request.getParameter("id"))==true){
		System.out.println("만세에!");
	}else{
		System.out.println("아오");
	}
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>