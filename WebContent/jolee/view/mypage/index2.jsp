
<%@page import="java.util.ArrayList"%>
<%@page import="lee.OneonOneVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set value="사용자" var="a"/>
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
	<c:forEach items="${data }" var="vo">
		<tr>
			<td><a href="detail.jsp?no=${vo.no }">${vo.title }</a></td>
			 <td>${vo.regdate}</td> 
			<td>${vo.answer }</td>
			<td><a href="delete.jsp?no==${vo.no }">삭제</a></td>
		</tr>
	</c:forEach>

		<tr>
		<td colspan="4" align="center">
			<a href="upload1on1form.jsp">문의하기</a>
		</td>
		</tr>

	</table>
