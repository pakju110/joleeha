<%@page import="req1.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	NoticeVO vo = (NoticeVO)request.getAttribute("data");
	System.out.println(vo);
%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border=1>
		<tr>
			<td>ī�װ�</td>
			<td><%=vo.getCate() %></td>
		</tr>
		<tr>
			<td>����</td>
			<td><%=vo.getTitle() %></td>
		</tr>
		<tr>
			<td>����</td>
			<td>
				<%-- <img alt="" src="../pic/<%=vo.getOrifile() %>"> --%>
				<img alt="" src="../pic/<%=vo.getSysfile() %>">
			</td>
		</tr>
		<tr>
			<td>����</td>
			<td><%=vo.getContent() %></td>
		</tr>
		<tr>
			<td colspan="2"><a href="delete.jsp?no=<%=vo.getNo() %>">����</a></td>
		</tr>
	</table>
</body>
</html>