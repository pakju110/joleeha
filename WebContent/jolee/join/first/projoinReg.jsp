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
	upfile = "C:\\projwork\\joleeha\\WebContent\\jolee\\file";
	MultipartRequest mm = new MultipartRequest(
			request,
			upfile,
			10*1024*1024,
			"euc-kr",
			new DefaultFileRenamePolicy()
			);
	request.setCharacterEncoding("euc-kr");
	
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
	String msg = "";
	String url = "projoinForm.jsp?id="+mem.getId();
	
	if(!mem.getPw().equals(mm.getParameter("pw"))){
		msg = "비밀번호가 일치하지 않거나 입력되지 않았습니다.";
	}
	else //if(new MemberDAO().insert(mem))
	{
		
		dao.insert(mem);
		msg = "회원가입이 완료되었습니다.";
		url = "../../notice/first/index.jsp";
	
	}	
	// 비밀번호 같은 것으로 입력해도 안들어감 
	request.setAttribute("msg", msg);
	request.setAttribute("url", url);

	
	%>    
<jsp:forward page="../../view/template.jsp"></jsp:forward>