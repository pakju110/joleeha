
<%@page import="java.util.ArrayList"%>
<%@page import="lee.OneonOneVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set value="�����" var="a"/>
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
	<c:forEach items="${data }" var="vo">
		<tr>
			<td><a href="detail.jsp?no=${vo.no }">${vo.title }</a></td>
			 <td>${vo.regdate}</td> 
			<td>${vo.answer }</td>
			<td><a href="delete.jsp?no==${vo.no }">����</a></td>
		</tr>
	</c:forEach>

		<tr>
		<td colspan="4" align="center">
			<a href="upload1on1form.jsp">�����ϱ�</a>
		</td>
		</tr>

	</table>
