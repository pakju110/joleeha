
<%@page import="lee.movieDAO"%>
<%@page import="lee.movieVO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../inc/menuData.jsp"%>

<%
	String upfile = request.getRealPath("ff");
	upfile = "C:\\projwork\\joleeha\\WebContent\\jolee\\file";
	MultipartRequest mm = new MultipartRequest(request, upfile, 10 * 1024 * 1024, "euc-kr",
			new DefaultFileRenamePolicy());
	request.setCharacterEncoding("euc-kr");
	
	String[] arraygenre = mm.getParameterValues("genre");

	String genre = "";

	for (int i = 0; i < arraygenre.length; i++) {
		genre += arraygenre[i];
		if (i < arraygenre.length - 1)
			genre += "/";
	}

	movieVO mem = new movieVO();

	mem.setTitle(mm.getParameter("title"));
	mem.setReldate(mm.getParameter("reldate"));
	mem.setClosedate(mm.getParameter("closedate"));
	mem.setGenre(genre);
	mem.setContent(mm.getParameter("content"));
	mem.setSysfile(mm.getFilesystemName("file"));
	mem.setOrifile(mm.getOriginalFileName("file"));
	movieDAO dao = new movieDAO();
	dao.insert(mem);
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>