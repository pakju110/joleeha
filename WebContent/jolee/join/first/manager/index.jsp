<%@page import="java.util.LinkedHashMap"%>
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
			<td>선호 장르</td>
			<td>회원 등급</td>
			<td>등급 수정</td>
		</tr>
<c:forEach items="${data }" var="vo">
		<tr>
			<td>${vo.id }</td>
			<td>${vo.name }</td>
			<td>${vo.nick }</td>
			<td>${vo.phone }</td>
			<td>${vo.email }</td>
			<td>${vo.genre }</td>
			<td>${vo.grade }</td>
			<td align="center"><a href="detail.jsp?id=${vo.id }">수정</a>
		</tr>
	</c:forEach>
	</table>



