<%@page import="java.util.ArrayList"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table border="">
	<tr>
		<td>게시번호</td>
		<td>아이디</td>
		<td>제목</td>
		<td>문의내역</td>
		<td>문의날짜</td>
		<td>답변여부</td>
		</tr>
<c:forEach items="${data }" var="vo">
		<tr>
			<td>${vo.no }</td>
			<td>${vo.id }</td>
			<td><a href="../../mypage/1n1/detail.jsp?no=${vo.no }&id=${vo.id}">${vo.title }</a></td>
			<td>${vo.content }</td>
			<td>${vo.regdate }</td>
			<td>${vo.answer }</td>
		</tr>
</c:forEach>
</table>