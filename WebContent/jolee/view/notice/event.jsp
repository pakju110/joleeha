<%@page import="req1.NoticeVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%=request.getAttribute("serviceUrl") %>view ������

<table border="">
	<tr>
		<td>no</td>
		<td>����</td>
		<td>�ۼ���</td>
	</tr>


<% for(NoticeVO vo : 
	(ArrayList<NoticeVO>)request.getAttribute("data")) {
	
%>
	<tr>
		<td><%=vo.getNo() %></td>
		
		<td><a href="writeDetail.jsp?no=<%=vo.getNo() %>"><%=vo.getTitle() %></a></td>
		<td><%=vo.strRegDate() %> </td>
	</tr>
	<%} %>	

	<tr>
		<td colspan="3" align="right">
			<a href="writeForm.jsp">�۾���</a>
		</td>
	</tr>

</table>
