<%@page import="java.net.URLEncoder"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>jspProj</title>
</head>
<body>
jsp ���̵�  �ڡڡڡڡ�
<%
	Date now = new Date();
%>
����ð�: <%=now %><br>
����ð�: <% out.print(now);%><br>
<br>basic<br>
<a href="basic/diary1.html">diary1</a>
<a href="basic/diary2.jsp">diary2</a>
<a href="basic/diary3.jsp">10�� �޷�</a>
<a href="basic/diary4.jsp">2017�� ��ü �޷�</a>
<br>request<br>
<a href="request/info.jsp">info</a>
<%
String aaa = URLEncoder.encode("�ѱ�", "euc-kr");
%>
	
<a href="request/aaa.jsp?name=<%=aaa %>&age=26">aaa</a>
<a href="request/joinForm.jsp">joinForm</a>
<a href="request/memList.jsp">memlist</a>
</body>
</html>