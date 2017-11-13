<%@page import="lee.movieDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="lee.movieVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<%
	request.setCharacterEncoding("euc-kr");
	
String[] arraygenre = request.getParameterValues("genre");

String genre = "";

for (int i = 0; i < arraygenre.length; i++) {
	genre += arraygenre[i];
	if (i < arraygenre.length - 1)
		genre += "/";
}
	
	movieVO mem = new movieVO();
	mem.setNo(Integer.parseInt(request.getParameter("no")));
	mem.setTitle(request.getParameter("title"));
	mem.setContent(request.getParameter("content"));
	mem.setReldate(request.getParameter("reldate"));
	mem.setClosedate(request.getParameter("closedate"));
	mem.setGenre(genre);
	String msg = "수정에 실패하였습니다.";
	if(new movieDAO().modify(mem)){
		 msg="수정되었습니다.";
	}
	
	request.setAttribute("msg",msg);
	
	%>     

<jsp:forward page="../../view/template.jsp"></jsp:forward>