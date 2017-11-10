<%@page import="java.io.FileInputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String sys = request.getParameter("Sysfile");
	String ori = request.getParameter("Orifile");
	
	String upfile = request.getRealPath("ff");
	upfile =  "C:/Users/JHTA/git/joleeha/WebContent/jolee/file";
	
	String en = URLEncoder.encode(ori,"utf-8");
	response.setHeader("Content-Disposition", "attachment;filename="+en);
	
	out.clear();
	out = pageContext.pushBody();
	
	FileInputStream fis = new FileInputStream(upfile+"\\"+sys);
	ServletOutputStream sos = response.getOutputStream();
	
	
	byte [] buf  = new byte[1024];
	
	while(fis.available()>0)
	{
		int len = fis.read(buf);
		sos.write(buf, 0, len);
	}
	
	sos.close();//항상 close()해야함!!
	fis.close();
	
	
%>