<%@page import="req1.MemberDAO"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<%
	request.setCharacterEncoding("euc-kr");
	
	MemberVO mem = new MemberVO();
	
	mem.setId(request.getParameter("id"));
	mem.setPw(request.getParameter("pw"));
	
	
	String msg = "pw�� ��ġ���� �ʽ��ϴ�.";
	String url = "detail.jsp?id="+mem.getId();
	if(new MemberDAO().delete(mem))
	{
		msg = "Ż��Ǿ����ϴ�";
		url = "memList.jsp";
	}
	
	

%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>