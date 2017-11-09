<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	String loginPage = "login/loginForm.jsp";

	if(session.getAttribute("mem")!=null)
	{
		loginPage="login/main.jsp";
	}
	request.setAttribute("loginPage", loginPage);
%>