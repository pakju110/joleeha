
<%@page import="movie.ReviewVO"%>
<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("euc-kr");
%>
�������������� ���� ���������� ��ȭ ������ �˷��帳�ϴ�!


<table border="">
	<tr>
	<td>����</td>
	<td>�帣</td>
	<td>����</td>
	

	</tr>

<% for(ReviewVO vo : 
	(ArrayList<ReviewVO>)request.getAttribute("data")) {
	
%>
<tr>
		
		<td><a href="detail.jsp?title=<%=vo.getMovietitle() %>"><%=vo.getMovietitle() %></a></td>
		<td><%=vo.getGenre() %>
		<td><%=vo.getStar() %> </td>
		
		
	</tr>

<%} %>

<%	String a = (String)request.getAttribute("cate");
if(a.equals("first")){ %>
	<tr >
		<td colspan="3" align="center" >
			<a href="uploadmovieform.jsp">�۾���</a>
		</td>
	</tr>
<%} %>
</table>
