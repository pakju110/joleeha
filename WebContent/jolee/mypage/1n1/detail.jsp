
<%@page import="movie.ComentDAO"%>
<%@page import="lee.OneonOneDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="../../inc/menuData.jsp" %>
<%

MemberVO vo  = (MemberVO) session.getAttribute("memlogin");

session.setAttribute("no", Integer.parseInt(request.getParameter("no")));

request.setAttribute("commnetdata", new ComentDAO().list("1n1",(int)session.getAttribute("no")));
request.setCharacterEncoding("euc-kr");
	if(vo.getGrade() != "admin"){
	request.setAttribute("data",  new OneonOneDAO().detail((int)session.getAttribute("no")));
	}else{
		request.setAttribute("data",  new OneonOneDAO().detail3(request.getParameter("id"),(int)session.getAttribute("no")));
		
	}
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>