<%@page import="req1.NoticeVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table border="">
	<tr>
		<td>no</td>
		<td>����</td>
		<td>�ۼ���</td>
	</tr>


<c:forEach items="${data }" var="vo">
	<tr>
		<td>${vo.no }</td>
		
		<td><a href="writeDetail.jsp?no=${vo.no }">${vo.title }</a></td>
		<td>${vo.regdate } </td>
	</tr>
</c:forEach>	

	<tr>
		<td colspan="3" align="right">
			<a href="writeForm.jsp">�۾���</a>
		</td>
	</tr>

</table>
