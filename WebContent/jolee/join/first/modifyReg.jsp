<%@page import="req1.MemberDAO"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<%
	request.setCharacterEncoding("euc-kr");
	
	
	String email = request.getParameter("email1")+
			"@"+request.getParameter("email2");
	
	MemberVO mem = new MemberVO();
	
	mem.setId(request.getParameter("id"));
	mem.setPw(request.getParameter("pw"));
	mem.setGender(request.getParameter("gender"));
	mem.setNick(request.getParameter("nick"));
	mem.setPhone(request.getParameter("phone"));
	mem.setEmail(email);
	mem.setGenre(request.getParameter("genre"));
	
	
	
	String msg = "pw가 일치하지 않습니다.";
	String url = "modifyForm.jsp?id="+mem.getId();
	
	
	if(new MemberDAO().modify(mem))
	{
		msg = "수정 되었습니다";
		url = "detail.jsp?id="+mem.getId();
	}
	
	%>     

<jsp:forward page="../../view/template.jsp"></jsp:forward>