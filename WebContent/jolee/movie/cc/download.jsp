<%@page import="java.io.FileInputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String sys = request.getParameter("Sysfile");
	String ori = request.getParameter("Orifile");
	
	String upfile = request.getRealPath("file");
	upfile = "C:/Users/JHTA/git/jolee/joleemovie/WebContent/jolee/file";
	
	String en = URLEncoder.encode(ori, "utf-8");
	response.setHeader("Content-Disposition", "attachment;filename="+en);
	//content-disposition : ������ ��ġ 	���� â. 
	//attachment;filename="+en : ���� �̸��� �������� �Ұ��ΰ�? 
	//en = URLencoder.encode(ori, "utf-8") : �������� �̸��� �޾ƿͼ� ����.
	//�����ͺ��̽����� syspic���� ����Ǿ������� �ѷ��ٶ��� original name����
	//Ŭ���̾�Ʈ�� �ѷ��ֱ�����!
	out.clear();
	//out.�� println�� ����Ǿ��ִµ� �̰� �����ָ� out �� �浹�ؼ� ������ 
	//������ �߱⶧���� �̷��� �������..
	out = pageContext.pushBody();
	//�о�ֱ�!
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