<%@page import="req1.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${data}" var="a"/>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src='../js/member.js'></script>
</head>
<body>
<table border="">
	<tr>
		<td>아이디</td><td>${a.id}</td>
	</tr>
	<tr>
		<td>이름</td><td>${a.name}</td>
	</tr>
	<tr>
		<td>닉네임</td><td>${a.nick}</td>
	</tr><tr>
		<td>핸드폰</td><td>${a.phone}</td>
	</tr>
	<tr>
		<td>이메일</td><td>${a.email}</td>
	</tr><tr>
		<td>성별</td><td>${a.gender}</td>
	</tr><tr>
		<td>회원등급</td><td>${a.grade}</td>
	</tr>
	<c:if test="${a.sysfile!=null && a.grade=='pro'">
	<tr>
		<td>첨부파일</td>
		<td>${a.sysfile}
		<a href="download.jsp?sys=${a.sysfile}&ori=${a.orifile}">${a.orifile}</a>
		</td>
	</tr> 
	</c:if>
	
	<tr>
			<td>관심장르</td><td>${a.genre}</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<a href="deleteForm.jsp?id=${a.id}">회원탈퇴</a>
			<a href="modifyForm.jsp?id=${a.id}">정보수정</a>
		</td>
	</tr>
</table>
</body>
</html>