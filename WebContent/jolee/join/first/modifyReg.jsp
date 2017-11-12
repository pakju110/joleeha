<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="req1.MemberDAO"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<%
	
	String upfile = request.getRealPath("file");
	upfile = "C:\\file";
	MultipartRequest mm = new MultipartRequest(
			request,
			upfile,
			10*1024*1024,
			"euc-kr",
			new DefaultFileRenamePolicy()
			);
	
	request.setCharacterEncoding("euc-kr");
	
	
	String email = mm.getParameter("email1")+
			"@"+request.getParameter("email2");
	
	MemberVO mem = new MemberVO();
	
	mem.setId(mm.getParameter("id"));
	mem.setPw(mm.getParameter("pw"));
	
	mem.setGender(mm.getParameter("gender"));
	mem.setNick(mm.getParameter("nick"));
	mem.setPhone(mm.getParameter("phone"));
	mem.setEmail(email);
	mem.setSysfile(mm.getFilesystemName("file"));
	mem.setOrifile(mm.getOriginalFileName("file"));
	mem.setGenre(mm.getParameter("genre"));
	
	
	String msg = "";
	String url = "modifyForm.jsp?id="+mem.getId();
	
	if(!mem.getPw().equals(null))
	{
		msg = "비밀번호를 입력하세요.";
		
	} else if(!mem.getPw().equals(request.getParameter("pw")))
	{
		msg = "잘못된 비밀번호입니다.";
		
	}else if(new MemberDAO().modify(mem))
	{
		msg = "수정 되었습니다";
		url = "joinDetail.jsp?id="+mem.getId();
	}
	
	request.setAttribute("msg", msg);
	request.setAttribute("url", url);
	
	%>     

<jsp:forward page="../../view/template.jsp"></jsp:forward>