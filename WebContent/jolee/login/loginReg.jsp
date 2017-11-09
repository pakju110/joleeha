<%@page import="req1.MemberDAO"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

MemberVO vo = new MemberVO();
vo.setId(request.getParameter("memId"));
vo.setPw(request.getParameter("memPw"));

String msg = "id와 pw가 일치하지 않습니다.";
String url = "../"+request.getParameter("goUrl");


MemberVO res = new MemberDAO().login(vo);

if(res!=null)
{
	session.setAttribute("memlogin", res);
	msg = res.getName()+"님 로그인 되었습니다.";
}else{
	
	if(url.contains("?"))
		url+="&";
	else
		url+="?";
	
	url +="memId="+vo.getId();
}

response.sendRedirect("../movie/first/index.jsp");
%>