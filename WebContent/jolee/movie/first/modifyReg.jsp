<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="lee.movieVO"%>
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
	
	
	movieVO mem = new movieVO();
	
	mem.setTitle(mm.getParameter("title"));
	mem.setContent(mm.getParameter("content"));
	mem.setSysfile(mm.getFilesystemName("file"));
	mem.setOrifile(mm.getOriginalFileName("file"));
	mem.setReldate(mm.getParameter("gender"));
	mem.setClosedate(mm.getParameter("nick"));
	
	/* String msg = "";
	String url = "modifyForm.jsp?no="+mem.getNo();
	
	if(!mem.getPw().equals(null))
	{
		msg = "��й�ȣ�� �Է��ϼ���.";
		
	} else if(!mem.getPw().equals("pw"))
	{
		msg = "�߸��� ��й�ȣ�Դϴ�.";
		
	}else if(new MemberDAO().modify(mem))
	{
		msg = "���� �Ǿ����ϴ�";
		url = "detail.jsp?id="+mem.getId();
	}
	
	request.setAttribute("msg", msg);
	request.setAttribute("url", url); */
	
	%>     

<jsp:forward page="../../view/template.jsp"></jsp:forward>