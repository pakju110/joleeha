<%@page import="java.util.ArrayList"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table border="">
	<tr>
		<td>���̵�</td>
		<td>�̸�</td>
		<td>�г���</td>
		<td>��ȭ��ȣ</td>
		<td>�̸���</td>
		<td>�̷�����</td>
		<td colspan="2">���ο���</td>
		</tr>
<c:forEach items="${data }" var="vo">
		<tr>
			<td>${vo.id }</td>
			<td>${vo.name }</td>
			<td>${vo.nick }</td>
			<td>${vo.phone }</td>
			<td>${vo.email }</td>
			<td><a href="download.jsp?Sysfile=${vo.sysfile }&Orifile=${vo.orifile }" >${vo.orifile }</a></td>
			<td><a href="admit.jsp?id=${vo.id }">����</a> </td>
			<td><a href="index2.jsp">�ź�</a></td>
		</tr>
</c:forEach>
</table>