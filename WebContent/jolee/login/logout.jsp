<%@page import="req1.MemberDAO"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%


String url = "../"+request.getParameter("goUrl");

MemberVO res = (MemberVO)session.getAttribute("memlogin");
session.invalidate();
response.sendRedirect("../movie/first/index.jsp");

%>
