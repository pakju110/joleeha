<%@page import="req1.MemberVO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<%
	System.out.println(request.getParameter("id"));
	
	request.setCharacterEncoding("euc-kr");
	String email = request.getParameter("email1")+
			"@"+request.getParameter("email2");
	
	MemberVO mem = new MemberVO();
		
	mem.setId(request.getParameter("id"));
	mem.setPw(request.getParameter("pw"));
	mem.setName(request.getParameter("name"));
	mem.setGender(request.getParameter("gender"));
	mem.setNick(request.getParameter("nick"));
	mem.setPhone(request.getParameter("phone"));
	mem.setGrade("user");
	mem.setGenre(request.getParameter("genre"));
	mem.setEmail(email);
	
	MemberDAO dao = new MemberDAO();
	String msg = "";
	String url = "joinForm.jsp?id="+mem.getId();
	

	if(!mem.getPw().equals(request.getParameter("pwc"))){
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

