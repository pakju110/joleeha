
<%@page import="req1.MemberDAO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<%

	String id = request.getParameter("id");
	String msg = "id�� �ߺ����� �ʽ��ϴ�.";
	String url = "joinForm.jsp?id="+id;
	
	 if(new MemberDAO().idCheck(id))
	
	{
		
		msg = "���̵� �ߺ��˴ϴ�.";

	}   
	request.setAttribute("msg", msg);
	request.setAttribute("url", url);
  
	%> 

<jsp:forward page="../../view/template.jsp"></jsp:forward>