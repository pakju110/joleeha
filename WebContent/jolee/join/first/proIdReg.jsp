
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="req1.MemberDAO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
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
	String id = mm.getParameter("id");
	String msg = "id�� �ߺ����� �ʽ��ϴ�.";
	String url = "projoinForm.jsp?id="+id;
	
	 if(new MemberDAO().idCheck(id))
	
	{
		
		msg = "���̵� �ߺ��˴ϴ�.";

	}   
	 request.setAttribute("id",id); 
	request.setAttribute("msg", msg);
	request.setAttribute("url", url);
  
	%> 

<jsp:forward page="../../view/template.jsp"></jsp:forward>