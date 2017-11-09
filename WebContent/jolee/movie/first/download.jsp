<%@page import="java.io.FileInputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String sys = request.getParameter("Sysfile");
	String ori = request.getParameter("Orifile");
	
	String upfile = request.getRealPath("file");
	upfile = "C:\\file";
	
	String en = URLEncoder.encode(ori, "utf-8");
	response.setHeader("Content-Disposition", "attachment;filename="+en);
	//content-disposition : 저장할 위치 	띄우는 창. 
	//attachment;filename="+en : 파일 이름은 무엇으로 할것인가? 
	//en = URLencoder.encode(ori, "utf-8") : 오리지널 이름을 받아와서 저장.
	//데이터베이스에는 syspic으로 저장되어있지만 뿌려줄때는 original name으로
	//클라이언트에 뿌려주기위해!
	out.clear();
	//out.에 println이 저장되어있는데 이걸 안해주면 out 이 충돌해서 서버에 
	//오류가 뜨기때문에 이렇게 해줘야함..
	out = pageContext.pushBody();
	//밀어내주기!
	FileInputStream fis = new FileInputStream(upfile+"/"+sys);
	ServletOutputStream sos = response.getOutputStream();
	
	byte [] buf = new byte[1024];
	
	while(fis.available()>0)
	{
		int len = fis.read(buf);
		sos.write(buf, 0, len);
	}
	
	sos.close();
	fis.close();
	

%>