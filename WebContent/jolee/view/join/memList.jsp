<%@page import="req1.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	MemberDAO dao = new MemberDAO();
	ArrayList<MemberVO> mems = dao.list();
%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="">
	<tr>
		<td>id</td>
		<td>email</td>
	</tr>

<% for(MemberVO vo : mems) {%>
<tr>
		<td><a href="joinDetail.jsp?id=<%=vo.getId() %>"><%=vo.getId() %></a></td>
		<td><%=vo.getEmail() %></td>
	</tr>

<%} %>
	<tr>
		<td colspan="2" align="right">
			<a href="joinForm.jsp">ȸ������</a>
		</td>
	</tr>
</table>
</body>
</html>