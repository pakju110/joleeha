<%@page import="java.util.LinkedHashMap"%>
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
			<td>��ȣ �帣</td>
			<td>ȸ�� ���</td>
			<td>��� ����</td>
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
			<td align="center"><a href="detail.jsp?id=${vo.id }">����</a>
		</tr>
	</c:forEach>
	</table>



