<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	<table border="">
		<tr>
			<td>���̵�</td>
			<td>�̸�</td>
			<td>�г���</td>
			<td>��ȭ��ȣ</td>
			<td>�̸���</td>
			<td>��ȣ �帣</td>
			<td>ȸ�� ���</td>
			<td>��� ����</td>
		</tr>
	<% for(MemberVO vo : 
	(ArrayList<MemberVO>)request.getAttribute("data")) {%>
		<tr>
			<td><%=vo.getId() %></td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getNick() %></td>
			<td><%=vo.getPhone() %></td>
			<td><%=vo.getEmail() %></td>
			<td><%=vo.getGenre() %></td>
			<td><%=vo.getGrade() %></td>
			<td align="center"><a href="detail.jsp?id=<%=vo.getId() %>">����</a>
		</tr>
		<%} %>
	</table>



