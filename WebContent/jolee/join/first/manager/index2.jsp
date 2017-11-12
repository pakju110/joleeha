<%@page import="java.util.ArrayList"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table border="">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>닉네임</td>
		<td>전화번호</td>
		<td>이메일</td>
		<td>이력증명서</td>
		<td colspan="2">승인여부</td>
		</tr>
<c:forEach items="${data }" var="vo">
		<tr>
			<td>${vo.id }</td>
			<td>${vo.name }</td>
			<td>${vo.nick }</td>
			<td>${vo.phone }</td>
			<td>${vo.email }</td>
			<td><a href="download.jsp?Sysfile=${vo.sysfile }&Orifile=${vo.orifile }" >${vo.orifile }</a></td>
			<td><a href="admit.jsp?id=${vo.id }">승인</a> </td>
			<td><a href="index2.jsp">거부</a></td>
		</tr>
</c:forEach>
</table>