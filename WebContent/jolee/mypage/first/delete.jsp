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
	
	
	String msg = "pw가 일치하지 않습니다.";
	String url = "detail.jsp?id="+mem.getId();
	
	if(new MemberDAO().delete(mem))
	{
		msg = "탈퇴되었습니다";
		url = "../../movie/first/index.jsp";
		session.invalidate();
	}

	request.setAttribute("msg", msg);
	request.setAttribute("url", url);
	
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>