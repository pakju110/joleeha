<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${data }" var="vo" />
<c:set value="${cate }" var="c" />
<table border="">
	<tr>
		<td>title</td>
		<td>${vo.title }</td>
	</tr>
	<tr>
		<td>�ٰŸ�</td>
		<td>${vo.content }</td>
	</tr>
	<tr>
		<td>����</td>
		<td><img src="../../file/${vo.sysfile }" width="500"></td>
	</tr>
	<tr>
		<td>������ �ٿ�ε�</td>
		<td><a
			href="download.jsp?Sysfile=${vo.sysfile }&Orifile=${vo.orifile }">${vo.orifile }></a></td>
	</tr>
	<tr>
		<td>������</td>
		<td>${vo.reldate }</td>
	</tr>
	<tr>
		<td>������</td>
		<td>${vo.closedate }</td>
	</tr>
	<tr>
		<td>�����</td>
		<td>${vo.regdate }</td>
	</tr>

	<c:choose>
		<c:when test="${c==cc }">
			<tr>
				<td colspan="2" align="right"><a href="index2.jsp">���</a></td>
			</tr>

		</c:when>
		<c:otherwise>
			<tr>
				<td colspan="2" align="right"><a href="index.jsp">���</a></td>
			</tr>
		</c:otherwise>
	</c:choose>
</table>