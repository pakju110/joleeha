
<%@page import="java.util.ArrayList"%>
<%@page import="lee.OneonOneVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("euc-kr");
%>
	<table border="1">
		<tr>
			<td>����</td>
			<td>�Խ�����</td>
			<td>�亯����</td>
			<td>����</td>
			
		</tr>
<%
	for(OneonOneVO vo : 
		(ArrayList<OneonOneVO>)request.getAttribute("data")) {
	
%>
	<tr>
		<td><a href="detail.jsp?no=<%=vo.getNo()%>"><%=vo.getTitle() %></a></td>
		 <td><%=vo.getRegdate() %></td> 
		<td><%=vo.getAnswer() %></td>
		<td><a href="delete.jsp?no=<%=vo.getNo() %>">����</a></td>
	</tr>
	<%} 
	String a = "�����";
	if(a.equals("�����")){
	%>
		<tr>
		<td colspan="4" align="center">
			<a href="upload1on1form.jsp">�����ϱ�</a>
		</td>
		</tr>
		<%} %>
	</table>
