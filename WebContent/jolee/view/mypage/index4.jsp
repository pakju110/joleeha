<%@page import="req1.MemberVO"%>
<%@page import="movie.ReviewVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${memlogin}" var="res"/>

<table border="">
	<tr>
		<td>No.</td>
		<td>Title</td>
		<td>Movie</td>
		<td>star</td>
		<td>id</td>
	</tr>
<c:forEach items="${data1 }" var="vo"  varStatus="no">
	<tr>
		<td>${no.index+1 }</td>
		<td>
		<a
			href="../../review/${vo.cate}/detail.jsp?no=${vo.no }">${vo.title}
		</a>
		</td>
		<td>${vo.movietitle }</td>
		<td>
			<c:forEach var="i" begin="0" end="${vo.star -1}" step="1">
		<%-- 	<%for(int i=0; i<vo.getStar();i++){%>
				¡Ú
			<%} %> --%>
				¡Ú
			</c:forEach>
		</td>
		<td>${vo.id }</td>
	</tr>
</c:forEach>
</table>

