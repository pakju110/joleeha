
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	MultipartRequest  mm = new MultipartRequest(
			request,
			"C:\\king\\jolee\\joleemovie\\WebContent\\pic",
			10*1024*1024,
			"euc-kr",
			new DefaultFileRenamePolicy()
			);
	
	response.sendRedirect("writeDetail.jsp?file="+mm.getFilesystemName("file"));
	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<table border=1>
		<%-- <tr>
			<td>no</td>
			<td><%=mm.getParameter("no") %></td>
		</tr> --%>
		<tr>
			<td>카테고리</td>
			<td><%=mm.getParameter("cate") %></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><%=mm.getParameter("title") %></td>
		</tr>
		<tr>
			<td>파일</td>
			<td><%=mm.getFilesystemName("orifile") %><br>
			<%=mm.getOriginalFileName("sysfile") %>
				<img alt="" src="../pic/<%=mm.getFilesystemName("file") %>">
			</td>
		</tr>
		<tr>
			<td>내용</td>
			<td><%=mm.getParameter("content") %></td>
		</tr>
	</table>

</body>
</html>