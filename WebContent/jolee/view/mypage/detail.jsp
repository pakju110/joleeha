
<%@page import="lee.OneonOneVO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

OneonOneVO vo = (OneonOneVO )request.getAttribute("data");

%>    

<table border="">
	<tr>
		<td>����</td><td><%=vo.getTitle() %></td>
	</tr>
	<tr>
		<td>���ǳ���</td><td><%=vo.getContent() %></td>
	</tr>
	<tr>
		<td>�Խ�����</td><td><%=vo.getRegdate()%></td>
	</tr>
	

<%
System.out.println(request.getAttribute("cate"));
if(request.getAttribute("cate").equals("1n1")){
	%>
	<tr>	
		<td colspan="2" align="right">
			<a href="index2.jsp">���</a>
		</td>
	</tr>

	
	<%
}else{
%>
	<tr>	
		<td colspan="2" align="right">
			<a href="index.jsp">���</a>
		</td>
	</tr>
<%}%>
</table>