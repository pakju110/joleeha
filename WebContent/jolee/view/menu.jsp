<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	LinkedHashMap<String, String> menuList = 
	(LinkedHashMap<String, String>)request.getAttribute("menuList");
%>
<table width="100%">
<% for(String key : menuList.keySet()) {%>
	<tr align="center">
		
		<td><a href="../<%=key%>/index.jsp"><%=menuList.get(key) %></a></td>
		
	</tr>
	<%} %>
</table>