<%@page import="java.util.ArrayList"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<table border="3">
	<tr>
		<td>���̵�</td>
		<td>�̸�</td>
		<td>�г���</td>
		<td>��ȭ��ȣ</td>
		<td>�̸���</td>
		<td>�̷�����</td>
		<td colspan="2">���ο���</td>
		</tr>
		<%for(MemberVO vo : 
				(ArrayList<MemberVO>)request.getAttribute("data")) {%>
		<tr>
			<td><%=vo.getId() %></td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getNick() %></td>
			<td><%=vo.getPhone() %></td>
			<td><%=vo.getEmail() %></td>
			<td><a href="download.jsp?Sysfile=<%=vo.getSysfile() %>&Orifile=<%=vo.getOrifile() %>" ><%=vo.getOrifile() %></a></td>
			<td><a href="admit.jsp?id=<%=vo.getId() %>">����</a> </td>
			<td><a href="index2.jsp">�ź�</a></td>
		</tr>
	<%} %>
</table>