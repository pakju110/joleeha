
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


	String upfile = request.getRealPath("file");
	upfile = "C:\\joleeha\\WebContent\\jolee\\file\\";
	MultipartRequest mm = new MultipartRequest(
			request,
			upfile,
			10*1024*1024,
			"euc-kr",
			new DefaultFileRenamePolicy()
			);
	request.setCharacterEncoding("euc-kr");
	
	NoticeVO vo = new NoticeVO();
	
	vo.setCate(mm.getParameter("cate"));
	vo.setTitle(mm.getParameter("title"));
	vo.setSysfile(mm.getFilesystemName("orifile"));
	vo.setOrifile(mm.getOriginalFileName("orifile"));
	vo.setContent(mm.getParameter("content"));
	
	
	NoticeDAO dao = new NoticeDAO();
	dao.insert(vo);
	
	%>      
<jsp:forward page="../../view/template.jsp"></jsp:forward>