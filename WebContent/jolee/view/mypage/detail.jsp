
<%@page import="lee.OneonOneVO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

OneonOneVO vo = (OneonOneVO )request.getAttribute("data");

%>    

<table border="">
	<tr>
		<td>제목</td><td><%=vo.getTitle() %></td>
	</tr>
	<tr>
		<td>문의내역</td><td><%=vo.getContent() %></td>
	</tr>
	<tr>
		<td>게시일자</td><td><%=vo.getRegdate()%></td>
	</tr>
	

<%
System.out.println(request.getAttribute("cate"));
if(request.getAttribute("cate").equals("1n1")){
	%>
	<tr>	
		<td colspan="2" align="right">
			<a href="index2.jsp">목록</a>
		</td>
	</tr>

	
	<%
}else{
%>
	<tr>	
		<td colspan="2" align="right">
			<a href="index.jsp">목록</a>
		</td>
	</tr>
<%}%>
</table>