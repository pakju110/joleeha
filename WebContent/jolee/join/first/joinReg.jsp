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
		msg = "��й�ȣ�� ��ġ���� �ʰų� �Էµ��� �ʾҽ��ϴ�.";
	}
	else //if(new MemberDAO().insert(mem))
	{
		
		dao.insert(mem);
		msg = "ȸ�������� �Ϸ�Ǿ����ϴ�.";
		url = "../../notice/first/index.jsp";
	
	}	
	// ��й�ȣ ���� ������ �Է��ص� �ȵ� 
	request.setAttribute("msg", msg);
	request.setAttribute("url", url);

	
	%>
 
<jsp:forward page="../../view/template.jsp"></jsp:forward>

