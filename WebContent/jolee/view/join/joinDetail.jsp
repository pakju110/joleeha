<%@page import="req1.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	MemberDAO dao = new MemberDAO();
	MemberVO vo = dao.detail(request.getParameter("id"));
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src='../js/member.js'></script>
</head>
<body>
<table border="">
	<tr>
		<td>���̵�</td><td><%=vo.getId() %></td>
	</tr>
	<tr>
		<td>�̸�</td><td><%=vo.getName() %></td>
	</tr>
	<tr>
		<td>�г���</td><td><%=vo.getNick() %></td>
	</tr><tr>
		<td>�ڵ���</td><td><%=vo.getPhone() %></td>
	</tr>
	<tr>
		<td>�̸���</td><td><%=vo.getEmail() %></td>
	</tr><tr>
		<td>����</td><td><%=vo.getGender() %></td>
	</tr><tr>
		<td>ȸ�����</td><td><%=vo.getGrade() %></td>
		
	</tr><tr>
		<td>÷������</td>
		<td><%=vo.getSysfile() %>
		<a href="download.jsp?sys=<%=vo.getSysfile() %>&ori=<%=vo.getOrifile() %>"><%=vo.getOrifile() %></a>
		</td>
	</tr><tr>
			<td>�����帣</td><td><%=vo.getGenre() %></td>
	</tr><tr>
	<tr>
		<td colspan="2" align="right">
			<a href="memList.jsp">ȸ�����</a>
			<a href="deleteForm.jsp?id=<%=vo.getId() %>">ȸ��Ż��</a>
			<a href="modifyForm.jsp?id=<%=vo.getId() %>">��������</a>
		</td>
	</tr>
</table>
</body>
</html>