
<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	movieVO vo = (movieVO )request.getAttribute("data");

%>    

<table border="">
	<tr>
		<td>title</td><td><%=vo.getTitle() %></td>
	</tr>
	<tr>
		<td>�ٰŸ�</td><td><%=vo.getContent() %></td>
	</tr>
	<tr>
		<td>����</td><td><img src="../../file/<%=vo.getSysfile() %>" width="500"></td>
	</tr>
	<tr>
	<td>������ �ٿ�ε�</td><td><a href="download.jsp?Sysfile=<%=vo.getSysfile() %>&Orifile=<%=vo.getOrifile() %>" ><%=vo.getOrifile() %></a></td>
	</tr>
	<tr>
		<td>������</td><td><%=vo.getReldate() %></td>
	</tr>
	<tr>
		<td>������</td><td><%=vo.getClosedate() %></td>
	</tr>
	<tr>
		<td>�����</td><td><%=vo.getRegdate()%></td>
	</tr>
	

<%
System.out.println(request.getAttribute("cate"));
if(request.getAttribute("cate").equals("cc")){
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