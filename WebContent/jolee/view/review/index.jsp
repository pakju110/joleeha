<%@page import="req1.MemberVO"%>
<%@page import="movie.ReviewVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${memlogin}" var="res"/>
<c:set value="${cate }" var="a"/>
<table border="">
	<tr>
		<td>No.</td>
		<td>Title</td>
		<td>Movie</td>
		<td>star</td>
		<td>id</td>
	</tr>
<c:forEach items="${data }" var="vo">
	<tr>
		<td>${vo.no }</td>
		<td>
		<a
			href="detail.jsp?no=${vo.no }">${vo.title}
		</a>
		</td>
		<td>${vo.movietitle }</td>
		<td>
			<c:forEach var="i" begin="0" end="${vo.star -1}" step="1">
		<%-- 	<%for(int i=0; i<vo.getStar();i++){%>
				★
			<%} %> --%>
				★
			</c:forEach>
		</td>
		<td>${vo.id }</td>
	</tr>
</c:forEach>
</table>
<c:if test="${res!=null }&&(${res.grade==pro}||${res.grade==admin }||(${res.grade==user }&&${a==user})">
<a href="writForm.jsp">글쓰기</a>
</c:if>
	<%-- <%if(res != null && ((res.getGrade().equals("pro") || res.getGrade().equals("admin"))||
			(res.getGrade().equals("user")&&a.equals("user")))){ %>
<a href="writForm.jsp">글쓰기</a>
<%} %> --%>
