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
		<td>���̵�</td><td>${a.id}</td>
	</tr>
	<tr>
		<td>�̸�</td><td>${a.name}</td>
	</tr>
	<tr>
		<td>�г���</td><td>${a.nick}</td>
	</tr><tr>
		<td>�ڵ���</td><td>${a.phone}</td>
	</tr>
	<tr>
		<td>�̸���</td><td>${a.email}</td>
	</tr><tr>
		<td>����</td><td>${a.gender}</td>
	</tr><tr>
		<td>ȸ�����</td><td>${a.grade}</td>
	</tr>
	<c:if test="${a.sysfile!=null && a.grade=='pro'">
	<tr>
		<td>÷������</td>
		<td>${a.sysfile}
		<a href="download.jsp?sys=${a.sysfile}&ori=${a.orifile}">${a.orifile}</a>
		</td>
	</tr> 
	</c:if>
	
	<tr>
			<td>�����帣</td><td>${a.genre}</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<a href="deleteForm.jsp?id=${a.id}">ȸ��Ż��</a>
			<a href="modifyForm.jsp?id=${a.id}">��������</a>
		</td>
	</tr>
</table>
</body>
</html>