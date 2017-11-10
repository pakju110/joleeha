
<%@page import="req1.MemberDAO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<%

	String id = request.getParameter("id");
	String msg = "id가 중복되지 않습니다.";
	String url = "joinForm.jsp?id="+id;
	
	 if(new MemberDAO().idCheck(id))
	
	{
		
		msg = "아이디가 중복됩니다.";

	}   
	request.setAttribute("msg", msg);
	request.setAttribute("url", url);
  
	%> 

<jsp:forward page="../../view/template.jsp"></jsp:forward>