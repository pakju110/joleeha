<%@page import="req1.MemberVO"%>
<%@page import="req1.NoticeVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%=request.getAttribute("serviceUrl") %>view 페이지
<%
MemberVO res = (MemberVO)session.getAttribute("memlogin");
String a = (String)request.getAttribute("cate");
%>
<table border="">
	<tr>
		<td>no</td>
		<td>제목</td>
		<td>작성일</td>
	</tr>


<% for(NoticeVO vo : 
	(ArrayList<NoticeVO>)request.getAttribute("data")) {
	
%>
	<tr>
		<td><%=vo.getNo() %></td>
		
		<td><a href="writeDetail.jsp?no=<%=vo.getNo() %>"><%=vo.getTitle() %></a></td>
		<td><%=vo.strRegDate() %> </td>
	</tr>
	<%}

	if(res != null &&res.getGrade().equals("admin")&&a.equals("first")){
%>	
<tr>
		<td colspan="3" align="right">
			<a href="writeForm.jsp">글쓰기</a>
		</td>
	</tr>
<%} %>
</table>
