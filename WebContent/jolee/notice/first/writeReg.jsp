
<%@page import="req1.NoticeVO"%>
<%@page import="req1.NoticeDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../inc/menuData.jsp"%>
<%


	String upfile = request.getRealPath("pic");
	upfile = "C:\\king\\joleerealmovie\\WebContent\\jolee\\pic";
	MultipartRequest mm = new MultipartRequest(
			request,
			upfile,
			10*1024*1024,
			"euc-kr",
			new DefaultFileRenamePolicy()
			);

	
	String email = mm.getParameter("email1")+
			"@"+mm.getParameter("email2");
	
	NoticeVO noti = new NoticeVO();
	
	noti.setCate(mm.getParameter("cate"));
	noti.setTitle(mm.getParameter("title"));
	noti.setSysfile(mm.getFilesystemName("orifile"));
	noti.setOrifile(mm.getOriginalFileName("orifile"));
	noti.setContent(mm.getParameter("content"));
	
	
	NoticeDAO dao = new NoticeDAO();
	dao.insert(noti);
	
	%>      
<jsp:forward page="../../view/template.jsp"></jsp:forward>