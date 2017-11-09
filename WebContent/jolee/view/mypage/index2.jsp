
<%@page import="java.util.ArrayList"%>
<%@page import="lee.OneonOneVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("euc-kr");
%>
	<table border="1">
		<tr>
			<td>제목</td>
			<td>게시일자</td>
			<td>답변여부</td>
			<td>삭제</td>
			
		</tr>
<%
	for(OneonOneVO vo : 
		(ArrayList<OneonOneVO>)request.getAttribute("data")) {
	
%>
	<tr>
		<td><a href="detail.jsp?no=<%=vo.getNo()%>"><%=vo.getTitle() %></a></td>
		 <td><%=vo.getRegdate() %></td> 
		<td><%=vo.getAnswer() %></td>
		<td><a href="delete.jsp?no=<%=vo.getNo() %>">삭제</a></td>
	</tr>
	<%} 
	String a = "사용자";
	if(a.equals("사용자")){
	%>
		<tr>
		<td colspan="4" align="center">
			<a href="upload1on1form.jsp">문의하기</a>
		</td>
		</tr>
		<%} %>
	</table>
