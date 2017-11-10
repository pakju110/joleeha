<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.Date"%>
<%@page import="req1.MemberDAO"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp"%>
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
	/* String id = request.getParameter("id");
	String msg = "id가 중복되지 않습니다.";
	String url = "idCheck.jsp?id="+id;
	
	 if(new MemberDAO().equals(id)) 
	{
		msg = "아이디가 중복됩니다.";
		
	}   */
	
	String email = mm.getParameter("email1")+
			"@"+mm.getParameter("email2");
	
	MemberVO mem = new MemberVO();
	
	mem.setId(mm.getParameter("id"));
	mem.setName(mm.getParameter("name"));
	mem.setPw(mm.getParameter("pw"));
	mem.setGender(mm.getParameter("gender"));
	mem.setNick(mm.getParameter("nick"));
	mem.setPhone(mm.getParameter("phone"));
	mem.setGenre(mm.getParameter("genre"));
	mem.setGrade("waiter");
	mem.setSysfile(mm.getFilesystemName("file"));
	mem.setOrifile(mm.getOriginalFileName("file"));
	
	
	
	mem.setEmail(email);
	
	MemberDAO dao = new MemberDAO();
	dao.insert(mem);
	
	%>    
<jsp:forward page="../../view/template.jsp"></jsp:forward>